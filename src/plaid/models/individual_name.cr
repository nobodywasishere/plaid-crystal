#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Plaid
  # Parent container for name that allows for choice group between parsed and unparsed containers.Parent container for name that allows for choice group between parsed and unparsed containers.
  class IndividualName
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The first name of the individual represented by the parent object.
    @[JSON::Field(key: "FirstName", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter first_name : String? = nil

    # The last name of the individual represented by the parent object.
    @[JSON::Field(key: "LastName", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter last_name : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @first_name : String? = nil,
      @last_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"first_name\" is required and cannot be null") if @first_name.nil?

      unless (_first_name = @first_name).nil?
      end
      invalid_properties.push("\"last_name\" is required and cannot be null") if @last_name.nil?

      unless (_last_name = @last_name).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @first_name.nil?
      unless (_first_name = @first_name).nil?
      end

      return false if @last_name.nil?
      unless (_last_name = @last_name).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_name Object to be assigned
    def first_name=(new_value : String?)
      raise ArgumentError.new("\"first_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @first_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_name Object to be assigned
    def last_name=(new_value : String?)
      raise ArgumentError.new("\"last_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @last_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@first_name, @last_name)
  end
end
