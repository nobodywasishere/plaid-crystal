#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./auth_supported_methods"

module Plaid
  # Metadata that captures information about the Auth features of an institution.
  class AuthMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "supported_methods", type: AuthSupportedMethods?, default: nil, required: true, nullable: true, emit_null: true)]
    getter supported_methods : AuthSupportedMethods? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @supported_methods : AuthSupportedMethods? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_supported_methods = @supported_methods).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_supported_methods = @supported_methods).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_methods Object to be assigned
    def supported_methods=(new_value : AuthSupportedMethods?)
      unless new_value.nil?
      end

      @supported_methods = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@supported_methods)
  end
end
