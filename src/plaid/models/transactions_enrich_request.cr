#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./client_provided_transaction"
require "./transactions_enrich_request_options"

module Plaid
  # TransactionsEnrichRequest defines the request schema for `/transactions/enrich`.
  class TransactionsEnrichRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The account type for the requested transactions (either `depository` or `credit`).
    @[JSON::Field(key: "account_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_type : String? = nil

    # An array of transaction objects to be enriched by Plaid. Maximum of 100 transactions per request.
    @[JSON::Field(key: "transactions", type: Array(ClientProvidedTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transactions : Array(ClientProvidedTransaction)? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "options", type: Plaid::TransactionsEnrichRequestOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter options : Plaid::TransactionsEnrichRequestOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_type : String? = nil,
      @transactions : Array(ClientProvidedTransaction)? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @options : Plaid::TransactionsEnrichRequestOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_type\" is required and cannot be null") if @account_type.nil?

      unless (_account_type = @account_type).nil?
      end
      invalid_properties.push("\"transactions\" is required and cannot be null") if @transactions.nil?

      unless (_transactions = @transactions).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_type.nil?
      unless (_account_type = @account_type).nil?
      end

      return false if @transactions.nil?
      unless (_transactions = @transactions).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(new_value : String?)
      raise ArgumentError.new("\"account_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transactions Object to be assigned
    def transactions=(new_value : Array(ClientProvidedTransaction)?)
      raise ArgumentError.new("\"transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @transactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_id Object to be assigned
    def client_id=(new_value : String?)
      unless new_value.nil?
      end

      @client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secret Object to be assigned
    def secret=(new_value : String?)
      unless new_value.nil?
      end

      @secret = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(new_value : Plaid::TransactionsEnrichRequestOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_type, @transactions, @client_id, @secret, @options)
  end
end
