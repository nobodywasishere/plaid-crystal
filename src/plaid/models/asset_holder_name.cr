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
  # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
  class AssetHolderName
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The unparsed name of either an individual or a legal entity.
    @[JSON::Field(key: "FullName", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter full_name : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @full_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"full_name\" is required and cannot be null") if @full_name.nil?

      unless (_full_name = @full_name).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @full_name.nil?
      unless (_full_name = @full_name).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] full_name Object to be assigned
    def full_name=(new_value : String?)
      raise ArgumentError.new("\"full_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @full_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@full_name)
  end
end