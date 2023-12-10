#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./wallet_transaction_list_request_options"

module Plaid
  # WalletTransactionListRequest defines the request schema for `/wallet/transaction/list`
  class WalletTransactionsListRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the e-wallet to fetch transactions from
    @[JSON::Field(key: "wallet_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter wallet_id : String? = nil
    MIN_LENGTH_FOR_WALLET_ID = 1

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # A base64 value representing the latest transaction that has already been requested. Set this to `next_cursor` received from the previous `/wallet/transaction/list` request. If provided, the response will only contain transactions created before that transaction. If omitted, the response will contain transactions starting from the most recent, and in descending order by the `created_at` time.
    @[JSON::Field(key: "cursor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cursor : String? = nil
    MAX_LENGTH_FOR_CURSOR = 256

    # The number of transactions to fetch
    @[JSON::Field(key: "count", type: Int32?, default: 10, required: false, nullable: false, emit_null: false)]
    getter count : Int32? = 10
    MAX_FOR_COUNT = Int32.new("200")
    MIN_FOR_COUNT = Int32.new("1")

    @[JSON::Field(key: "options", type: Plaid::WalletTransactionListRequestOptions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: options.nil? && !options_present?)]
    getter options : Plaid::WalletTransactionListRequestOptions? = nil

    @[JSON::Field(ignore: true)]
    property? options_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @wallet_id : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @cursor : String? = nil,
      @count : Int32? = 10,
      @options : Plaid::WalletTransactionListRequestOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"wallet_id\" is required and cannot be null") if @wallet_id.nil?

      unless (_wallet_id = @wallet_id).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("wallet_id", _wallet_id.to_s.size, MIN_LENGTH_FOR_WALLET_ID)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_cursor = @cursor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cursor", _cursor.to_s.size, MAX_LENGTH_FOR_CURSOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_count = @count).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("count", _count, MAX_FOR_COUNT)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("count", _count, MIN_FOR_COUNT)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @wallet_id.nil?
      unless (_wallet_id = @wallet_id).nil?
        return false if _wallet_id.to_s.size < MIN_LENGTH_FOR_WALLET_ID
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_cursor = @cursor).nil?
        return false if _cursor.to_s.size > MAX_LENGTH_FOR_CURSOR
      end

      unless (_count = @count).nil?
        return false if _count > MAX_FOR_COUNT
        return false if _count < MIN_FOR_COUNT
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet_id Object to be assigned
    def wallet_id=(new_value : String?)
      raise ArgumentError.new("\"wallet_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("wallet_id", new_value.to_s.size, MIN_LENGTH_FOR_WALLET_ID)
      end

      @wallet_id = new_value
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
    # @param [Object] cursor Object to be assigned
    def cursor=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cursor", new_value.to_s.size, MAX_LENGTH_FOR_CURSOR)
      end

      @cursor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] count Object to be assigned
    def count=(new_value : Int32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("count", new_value, MAX_FOR_COUNT)
        OpenApi::PrimitiveValidator.validate_min_number("count", new_value, MIN_FOR_COUNT)
      end

      @count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(new_value : Plaid::WalletTransactionListRequestOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@wallet_id, @client_id, @secret, @cursor, @count, @options, @options_present)
  end
end