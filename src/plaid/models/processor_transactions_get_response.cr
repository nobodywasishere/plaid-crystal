#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_base"
require "./transaction"

module Plaid
  # ProcessorTransactionsGetResponse defines the response schema for `/processor/transactions/get`
  class ProcessorTransactionsGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "account", type: AccountBase?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : AccountBase? = nil

    # An array containing transactions from the account. Transactions are returned in reverse chronological order, with the most recent at the beginning of the array. The maximum number of transactions returned is determined by the `count` parameter.
    @[JSON::Field(key: "transactions", type: Array(Plaid::Transaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transactions : Array(Plaid::Transaction)? = nil

    # The total number of transactions available within the date range specified. If `total_transactions` is larger than the size of the `transactions` array, more transactions are available and can be fetched via manipulating the `offset` parameter.
    @[JSON::Field(key: "total_transactions", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_transactions : Int32? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account : AccountBase? = nil,
      @transactions : Array(Plaid::Transaction)? = nil,
      @total_transactions : Int32? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?

      unless (_account = @account).nil?
      end
      invalid_properties.push("\"transactions\" is required and cannot be null") if @transactions.nil?

      unless (_transactions = @transactions).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "transactions", container: _transactions)) if _transactions.is_a?(Array)
      end
      invalid_properties.push("\"total_transactions\" is required and cannot be null") if @total_transactions.nil?

      unless (_total_transactions = @total_transactions).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account.nil?
      unless (_account = @account).nil?
      end

      return false if @transactions.nil?
      unless (_transactions = @transactions).nil?
        return false if _transactions.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _transactions)
      end

      return false if @total_transactions.nil?
      unless (_total_transactions = @total_transactions).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(new_value : AccountBase?)
      raise ArgumentError.new("\"account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transactions Object to be assigned
    def transactions=(new_value : Array(Plaid::Transaction)?)
      raise ArgumentError.new("\"transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @transactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_transactions Object to be assigned
    def total_transactions=(new_value : Int32?)
      raise ArgumentError.new("\"total_transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @total_transactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account, @transactions, @total_transactions, @request_id)
  end
end
