#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./other_account_subtype"

module Plaid
  # A filter to apply to `other`-type accounts
  class OtherFilter
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # An array of account subtypes to display in Link. If not specified, all account subtypes will be shown. For a full list of valid types and subtypes, see the [Account schema](https://plaid.com/docs/api/accounts#account-type-schema).
    @[JSON::Field(key: "account_subtypes", type: Array(OtherAccountSubtype)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_subtypes : Array(OtherAccountSubtype)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_subtypes : Array(OtherAccountSubtype)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_subtypes\" is required and cannot be null") if @account_subtypes.nil?

      unless (_account_subtypes = @account_subtypes).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_subtypes.nil?
      unless (_account_subtypes = @account_subtypes).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_subtypes Object to be assigned
    def account_subtypes=(new_value : Array(OtherAccountSubtype)?)
      raise ArgumentError.new("\"account_subtypes\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_subtypes = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_subtypes)
  end
end
