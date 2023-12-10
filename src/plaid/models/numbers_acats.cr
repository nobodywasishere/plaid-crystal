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
  # Identifying information for transferring holdings to an investments account via ACATS.
  class NumbersACATS
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Plaid account ID associated with the account numbers
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    # The full account number for the account
    @[JSON::Field(key: "account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : String? = nil

    # Identifiers for the clearinghouses that are assocciated with the account in order of relevance. This array will be empty if we can't provide any account level data. Institution level data can be retrieved from the institutions/get endpoints.
    @[JSON::Field(key: "dtc_numbers", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter dtc_numbers : Array(String)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_id : String? = nil,
      @account : String? = nil,
      @dtc_numbers : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_id\" is required and cannot be null") if @account_id.nil?

      unless (_account_id = @account_id).nil?
      end
      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?

      unless (_account = @account).nil?
      end
      invalid_properties.push("\"dtc_numbers\" is required and cannot be null") if @dtc_numbers.nil?

      unless (_dtc_numbers = @dtc_numbers).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_id.nil?
      unless (_account_id = @account_id).nil?
      end

      return false if @account.nil?
      unless (_account = @account).nil?
      end

      return false if @dtc_numbers.nil?
      unless (_dtc_numbers = @dtc_numbers).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      raise ArgumentError.new("\"account_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(new_value : String?)
      raise ArgumentError.new("\"account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dtc_numbers Object to be assigned
    def dtc_numbers=(new_value : Array(String)?)
      raise ArgumentError.new("\"dtc_numbers\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @dtc_numbers = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_id, @account, @dtc_numbers)
  end
end
