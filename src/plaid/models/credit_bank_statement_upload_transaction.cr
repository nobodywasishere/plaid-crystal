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
  # An object containing data about a transaction appearing on a user-uploaded bank statement.
  class CreditBankStatementUploadTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The value of the transaction. A negative amount indicates that money moved into the account (such as a paycheck being deposited).
    @[JSON::Field(key: "amount", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter amount : Float64? = nil

    # The date of when the transaction was made, in ISO 8601 format (YYYY-MM-DD).
    @[JSON::Field(key: "date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter date : Time? = nil

    # The raw description of the transaction as it appears on the bank statement.
    @[JSON::Field(key: "original_description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter original_description : String? = nil

    # The unique id of the bank account that this transaction occurs in
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter account_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Float64? = nil,
      @date : Time? = nil,
      @original_description : String? = nil,
      @account_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_amount = @amount).nil?
      end
      unless (_date = @date).nil?
      end
      unless (_original_description = @original_description).nil?
      end
      unless (_account_id = @account_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_amount = @amount).nil?
      end

      unless (_date = @date).nil?
      end

      unless (_original_description = @original_description).nil?
      end

      unless (_account_id = @account_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Float64?)
      unless new_value.nil?
      end

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(new_value : Time?)
      unless new_value.nil?
      end

      @date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_description Object to be assigned
    def original_description=(new_value : String?)
      unless new_value.nil?
      end

      @original_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @date, @original_description, @account_id)
  end
end
