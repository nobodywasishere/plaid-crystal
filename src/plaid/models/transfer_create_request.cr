#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./ach_class"
require "./transfer_network"
require "./transfer_type"
require "./transfer_user_in_request_deprecated"

module Plaid
  # Defines the request schema for `/transfer/create`
  class TransferCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Plaid `access_token` for the account that will be debited or credited.
    @[JSON::Field(key: "access_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter access_token : String? = nil

    # The Plaid `account_id` corresponding to the end-user account that will be debited or credited.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    # Plaid’s unique identifier for a transfer authorization. This parameter also serves the purpose of acting as an idempotency identifier.
    @[JSON::Field(key: "authorization_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter authorization_id : String? = nil

    # The transfer description. Maximum of 15 characters. If reprocessing a returned transfer, please note that the `description` field must be `\"Retry\"` to indicate that it's a retry of a previously returned transfer. You may retry a transfer up to 2 times, within 180 days of creating the original transfer. Only transfers that were returned with code `R01` or `R09` may be retried. For a full listing of ACH return codes, see [Transfer errors](https://plaid.com/docs/errors/transfer/#ach-return-codes).
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 15

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Deprecated. `authorization_id` is now used as idempotency instead.  A random key provided by the client, per unique transfer. Maximum of 50 characters.  The API supports idempotency for safely retrying requests without accidentally performing the same operation twice. For example, if a request to create a transfer fails due to a network connection error, you can retry the request with the same idempotency key to guarantee that only a single transfer is created.
    @[JSON::Field(key: "idempotency_key", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter idempotency_key : String? = nil
    MAX_LENGTH_FOR_IDEMPOTENCY_KEY = 50

    @[JSON::Field(key: "type", type: Plaid::TransferType?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : Plaid::TransferType? = nil

    @[JSON::Field(key: "network", type: Plaid::TransferNetwork?, default: nil, required: false, nullable: false, emit_null: false)]
    getter network : Plaid::TransferNetwork? = nil

    # The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\"). When calling `/transfer/authorization/create`, specify the maximum amount to authorize. When calling `/transfer/create`, specify the exact amount of the transfer, up to a maximum of the amount authorized. If this field is left blank when calling `/transfer/create`, the maximum amount authorized in the `authorization_id` will be sent.
    @[JSON::Field(key: "amount", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : String? = nil

    @[JSON::Field(key: "ach_class", type: Plaid::ACHClass?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ach_class : Plaid::ACHClass? = nil

    @[JSON::Field(key: "user", type: Plaid::TransferUserInRequestDeprecated?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: user.nil? && !user_present?)]
    getter user : Plaid::TransferUserInRequestDeprecated? = nil

    @[JSON::Field(ignore: true)]
    property? user_present : Bool = false

    # The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: The JSON values must be Strings (no nested JSON objects allowed) Only ASCII characters may be used Maximum of 50 key/value pairs Maximum key length of 40 characters Maximum value length of 500 characters
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil
    MAX_ITEMS_FOR_METADATA = 50

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Plaid’s unique identifier for the origination account for this transfer. If you have more than one origination account, this value must be specified. Otherwise, this field should be left blank.
    @[JSON::Field(key: "origination_account_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: origination_account_id.nil? && !origination_account_id_present?)]
    getter origination_account_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? origination_account_id_present : Bool = false

    # The currency of the transfer amount. The default value is \"USD\".
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter iso_currency_code : String? = nil

    # Plaid’s unique identifier for a test clock. This field may only be used when using `sandbox` environment. If provided, the `transfer` is created at the `virtual_time` on the provided `test_clock`.
    @[JSON::Field(key: "test_clock_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: test_clock_id.nil? && !test_clock_id_present?)]
    getter test_clock_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? test_clock_id_present : Bool = false

    # The amount to deduct from `transfer.amount` and distribute to the platform’s Ledger balance as a facilitator fee (decimal string with two digits of precision e.g. \"10.00\"). The remainder will go to the end-customer’s Ledger balance. This must be less than or equal to the `transfer.amount`.
    @[JSON::Field(key: "facilitator_fee", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter facilitator_fee : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @access_token : String? = nil,
      @account_id : String? = nil,
      @authorization_id : String? = nil,
      @description : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @idempotency_key : String? = nil,
      @_type : Plaid::TransferType? = nil,
      @network : Plaid::TransferNetwork? = nil,
      @amount : String? = nil,
      @ach_class : Plaid::ACHClass? = nil,
      @user : Plaid::TransferUserInRequestDeprecated? = nil,
      @metadata : Hash(String, String)? = nil,
      @origination_account_id : String? = nil,
      @iso_currency_code : String? = nil,
      @test_clock_id : String? = nil,
      @facilitator_fee : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"access_token\" is required and cannot be null") if @access_token.nil?

      unless (_access_token = @access_token).nil?
      end
      invalid_properties.push("\"account_id\" is required and cannot be null") if @account_id.nil?

      unless (_account_id = @account_id).nil?
      end
      invalid_properties.push("\"authorization_id\" is required and cannot be null") if @authorization_id.nil?

      unless (_authorization_id = @authorization_id).nil?
      end
      invalid_properties.push("\"description\" is required and cannot be null") if @description.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_idempotency_key = @idempotency_key).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("idempotency_key", _idempotency_key.to_s.size, MAX_LENGTH_FOR_IDEMPOTENCY_KEY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (__type = @_type).nil?
        invalid_properties.push(__type.error_message) if !__type.valid?
      end
      unless (_network = @network).nil?
        invalid_properties.push(_network.error_message) if !_network.valid?
      end
      unless (_amount = @amount).nil?
      end
      unless (_ach_class = @ach_class).nil?
        invalid_properties.push(_ach_class.error_message) if !_ach_class.valid?
      end
      unless (_user = @user).nil?
        invalid_properties.concat(_user.list_invalid_properties_for("user")) if _user.is_a?(OpenApi::Validatable)
      end
      unless (_metadata = @metadata).nil?
        if max_items_error = OpenApi::PrimitiveValidator.max_items_error("metadata", _metadata.size, MAX_ITEMS_FOR_METADATA)
          invalid_properties.push(max_items_error)
        end
      end
      unless (_origination_account_id = @origination_account_id).nil?
      end
      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_test_clock_id = @test_clock_id).nil?
      end
      unless (_facilitator_fee = @facilitator_fee).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @access_token.nil?
      unless (_access_token = @access_token).nil?
      end

      return false if @account_id.nil?
      unless (_account_id = @account_id).nil?
      end

      return false if @authorization_id.nil?
      unless (_authorization_id = @authorization_id).nil?
      end

      return false if @description.nil?
      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_idempotency_key = @idempotency_key).nil?
        return false if _idempotency_key.to_s.size > MAX_LENGTH_FOR_IDEMPOTENCY_KEY
      end

      unless (__type = @_type).nil?
        return false if !__type.valid?
      end

      unless (_network = @network).nil?
        return false if !_network.valid?
      end

      unless (_amount = @amount).nil?
      end

      unless (_ach_class = @ach_class).nil?
        return false if !_ach_class.valid?
      end

      unless (_user = @user).nil?
        return false if _user.is_a?(OpenApi::Validatable) && !_user.valid?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.size > MAX_ITEMS_FOR_METADATA
      end

      unless (_origination_account_id = @origination_account_id).nil?
      end

      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_test_clock_id = @test_clock_id).nil?
      end

      unless (_facilitator_fee = @facilitator_fee).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access_token Object to be assigned
    def access_token=(new_value : String?)
      raise ArgumentError.new("\"access_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @access_token = new_value
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
    # @param [Object] authorization_id Object to be assigned
    def authorization_id=(new_value : String?)
      raise ArgumentError.new("\"authorization_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @authorization_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      raise ArgumentError.new("\"description\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
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
    # @param [Object] idempotency_key Object to be assigned
    def idempotency_key=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("idempotency_key", new_value.to_s.size, MAX_LENGTH_FOR_IDEMPOTENCY_KEY)
      end

      @idempotency_key = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : Plaid::TransferType?)
      unless new_value.nil?
        new_value.validate
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(new_value : Plaid::TransferNetwork?)
      unless new_value.nil?
        new_value.validate
      end

      @network = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : String?)
      unless new_value.nil?
      end

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ach_class Object to be assigned
    def ach_class=(new_value : Plaid::ACHClass?)
      unless new_value.nil?
        new_value.validate
      end

      @ach_class = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user Object to be assigned
    def user=(new_value : Plaid::TransferUserInRequestDeprecated?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @user = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_items("metadata", new_value.size, MAX_ITEMS_FOR_METADATA)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origination_account_id Object to be assigned
    def origination_account_id=(new_value : String?)
      unless new_value.nil?
      end

      @origination_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] test_clock_id Object to be assigned
    def test_clock_id=(new_value : String?)
      unless new_value.nil?
      end

      @test_clock_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] facilitator_fee Object to be assigned
    def facilitator_fee=(new_value : String?)
      unless new_value.nil?
      end

      @facilitator_fee = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@access_token, @account_id, @authorization_id, @description, @client_id, @secret, @idempotency_key, @_type, @network, @amount, @ach_class, @user, @user_present, @metadata, @metadata_present, @origination_account_id, @origination_account_id_present, @iso_currency_code, @test_clock_id, @test_clock_id_present, @facilitator_fee)
  end
end
