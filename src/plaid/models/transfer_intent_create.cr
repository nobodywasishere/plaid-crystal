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
require "./transfer_intent_create_mode"
require "./transfer_intent_create_network"
require "./transfer_intent_status"
require "./transfer_user_in_response"

module Plaid
  # Represents a transfer intent within Transfer UI.
  class TransferIntentCreate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Plaid's unique identifier for the transfer intent object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The datetime the transfer was created. This will be of the form `2006-01-02T15:04:05Z`.
    @[JSON::Field(key: "created", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created : Time? = nil

    @[JSON::Field(key: "status", type: Plaid::TransferIntentStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::TransferIntentStatus? = nil

    # Plaid’s unique identifier for the origination account for the intent. If not provided, the default account will be used.
    @[JSON::Field(key: "origination_account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter origination_account_id : String? = nil

    # The id of the funding account to use, available in the Plaid Dashboard. This determines which of your business checking accounts will be credited or debited.
    @[JSON::Field(key: "funding_account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding_account_id : String? = nil

    # The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\"). When calling `/transfer/authorization/create`, specify the maximum amount to authorize. When calling `/transfer/create`, specify the exact amount of the transfer, up to a maximum of the amount authorized. If this field is left blank when calling `/transfer/create`, the maximum amount authorized in the `authorization_id` will be sent.
    @[JSON::Field(key: "amount", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : String? = nil

    @[JSON::Field(key: "mode", type: Plaid::TransferIntentCreateMode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter mode : Plaid::TransferIntentCreateMode? = nil

    @[JSON::Field(key: "user", type: TransferUserInResponse?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user : TransferUserInResponse? = nil

    # A description for the underlying transfer. Maximum of 8 characters.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter description : String? = nil

    # The currency of the transfer amount, e.g. \"USD\"
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter iso_currency_code : String? = nil

    # End of Required Properties

    # Optional Properties

    # The Plaid `account_id` corresponding to the end-user account that will be debited or credited. Returned only if `account_id` was set on intent creation.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_id.nil? && !account_id_present?)]
    getter account_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_id_present : Bool = false

    @[JSON::Field(key: "network", type: Plaid::TransferIntentCreateNetwork?, default: Plaid::TransferIntentCreateNetwork.new("same-day-ach"), required: false, nullable: false, emit_null: false)]
    getter network : Plaid::TransferIntentCreateNetwork? = Plaid::TransferIntentCreateNetwork.new("same-day-ach")

    @[JSON::Field(key: "ach_class", type: Plaid::ACHClass?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ach_class : Plaid::ACHClass? = nil

    # The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: The JSON values must be Strings (no nested JSON objects allowed) Only ASCII characters may be used Maximum of 50 key/value pairs Maximum key length of 40 characters Maximum value length of 500 characters
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil
    MAX_ITEMS_FOR_METADATA = 50

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # When `true`, the transfer requires a `GUARANTEED` decision by Plaid to proceed (Guarantee customers only).
    @[JSON::Field(key: "require_guarantee", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: require_guarantee.nil? && !require_guarantee_present?)]
    getter require_guarantee : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? require_guarantee_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @created : Time? = nil,
      @status : Plaid::TransferIntentStatus? = nil,
      @origination_account_id : String? = nil,
      @funding_account_id : String? = nil,
      @amount : String? = nil,
      @mode : Plaid::TransferIntentCreateMode? = nil,
      @user : TransferUserInResponse? = nil,
      @description : String? = nil,
      @iso_currency_code : String? = nil,
      # Optional properties
      @account_id : String? = nil,
      @network : Plaid::TransferIntentCreateNetwork? = Plaid::TransferIntentCreateNetwork.new("same-day-ach"),
      @ach_class : Plaid::ACHClass? = nil,
      @metadata : Hash(String, String)? = nil,
      @require_guarantee : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_created = @created).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      invalid_properties.push("\"origination_account_id\" is required and cannot be null") if @origination_account_id.nil?

      unless (_origination_account_id = @origination_account_id).nil?
      end
      invalid_properties.push("\"funding_account_id\" is required and cannot be null") if @funding_account_id.nil?

      unless (_funding_account_id = @funding_account_id).nil?
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
      end
      invalid_properties.push("\"mode\" is required and cannot be null") if @mode.nil?

      unless (_mode = @mode).nil?
        invalid_properties.push(_mode.error_message) if !_mode.valid?
      end
      invalid_properties.push("\"user\" is required and cannot be null") if @user.nil?

      unless (_user = @user).nil?
      end
      invalid_properties.push("\"description\" is required and cannot be null") if @description.nil?

      unless (_description = @description).nil?
      end
      invalid_properties.push("\"iso_currency_code\" is required and cannot be null") if @iso_currency_code.nil?

      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_account_id = @account_id).nil?
      end
      unless (_network = @network).nil?
        invalid_properties.push(_network.error_message) if !_network.valid?
      end
      unless (_ach_class = @ach_class).nil?
        invalid_properties.push(_ach_class.error_message) if !_ach_class.valid?
      end
      unless (_metadata = @metadata).nil?
        if max_items_error = OpenApi::PrimitiveValidator.max_items_error("metadata", _metadata.size, MAX_ITEMS_FOR_METADATA)
          invalid_properties.push(max_items_error)
        end
      end
      unless (_require_guarantee = @require_guarantee).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @created.nil?
      unless (_created = @created).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      return false if @origination_account_id.nil?
      unless (_origination_account_id = @origination_account_id).nil?
      end

      return false if @funding_account_id.nil?
      unless (_funding_account_id = @funding_account_id).nil?
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
      end

      return false if @mode.nil?
      unless (_mode = @mode).nil?
        return false if !_mode.valid?
      end

      return false if @user.nil?
      unless (_user = @user).nil?
      end

      return false if @description.nil?
      unless (_description = @description).nil?
      end

      return false if @iso_currency_code.nil?
      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_account_id = @account_id).nil?
      end

      unless (_network = @network).nil?
        return false if !_network.valid?
      end

      unless (_ach_class = @ach_class).nil?
        return false if !_ach_class.valid?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.size > MAX_ITEMS_FOR_METADATA
      end

      unless (_require_guarantee = @require_guarantee).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Time?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::TransferIntentStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origination_account_id Object to be assigned
    def origination_account_id=(new_value : String?)
      raise ArgumentError.new("\"origination_account_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @origination_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_account_id Object to be assigned
    def funding_account_id=(new_value : String?)
      raise ArgumentError.new("\"funding_account_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @funding_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : String?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode Object to be assigned
    def mode=(new_value : Plaid::TransferIntentCreateMode?)
      raise ArgumentError.new("\"mode\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @mode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user Object to be assigned
    def user=(new_value : TransferUserInResponse?)
      raise ArgumentError.new("\"user\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @user = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      raise ArgumentError.new("\"description\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      raise ArgumentError.new("\"iso_currency_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(new_value : Plaid::TransferIntentCreateNetwork?)
      unless new_value.nil?
        new_value.validate
      end

      @network = new_value
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
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_items("metadata", new_value.size, MAX_ITEMS_FOR_METADATA)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_guarantee Object to be assigned
    def require_guarantee=(new_value : Bool?)
      unless new_value.nil?
      end

      @require_guarantee = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @created, @status, @origination_account_id, @funding_account_id, @amount, @mode, @user, @description, @iso_currency_code, @account_id, @account_id_present, @network, @ach_class, @metadata, @metadata_present, @require_guarantee, @require_guarantee_present)
  end
end