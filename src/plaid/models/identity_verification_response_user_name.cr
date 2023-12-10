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
  # The full name provided by the user. If the user has not submitted their name, this field will be null. Otherwise, both fields are guaranteed to be filled.
  class IdentityVerificationResponseUserName
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A string with at least one non-whitespace character, with a max length of 100 characters.
    @[JSON::Field(key: "given_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter given_name : String? = nil

    # A string with at least one non-whitespace character, with a max length of 100 characters.
    @[JSON::Field(key: "family_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter family_name : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @given_name : String? = nil,
      @family_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"given_name\" is required and cannot be null") if @given_name.nil?

      unless (_given_name = @given_name).nil?
      end
      invalid_properties.push("\"family_name\" is required and cannot be null") if @family_name.nil?

      unless (_family_name = @family_name).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @given_name.nil?
      unless (_given_name = @given_name).nil?
      end

      return false if @family_name.nil?
      unless (_family_name = @family_name).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] given_name Object to be assigned
    def given_name=(new_value : String?)
      raise ArgumentError.new("\"given_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @given_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] family_name Object to be assigned
    def family_name=(new_value : String?)
      raise ArgumentError.new("\"family_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @family_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@given_name, @family_name)
  end
end
