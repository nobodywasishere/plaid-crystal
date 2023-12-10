#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_event_list_bank_transfer_type"
require "./bank_transfer_event_list_direction"
require "./bank_transfer_event_type"

module Plaid
  # Defines the request schema for `/bank_transfer/event/list`
  class BankTransferEventListRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # The start datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start_date.nil? && !start_date_present?, converter: Time::RFC3339Converter)]
    getter start_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    # The end datetime of bank transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::RFC3339Converter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # Plaid’s unique identifier for a bank transfer.
    @[JSON::Field(key: "bank_transfer_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_transfer_id.nil? && !bank_transfer_id_present?)]
    getter bank_transfer_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_transfer_id_present : Bool = false

    # The account ID to get events for all transactions to/from an account.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_id.nil? && !account_id_present?)]
    getter account_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_id_present : Bool = false

    @[JSON::Field(key: "bank_transfer_type", type: Plaid::BankTransferEventListBankTransferType?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_transfer_type.nil? && !bank_transfer_type_present?)]
    getter bank_transfer_type : Plaid::BankTransferEventListBankTransferType? = nil

    @[JSON::Field(ignore: true)]
    property? bank_transfer_type_present : Bool = false

    # Filter events by event type.
    @[JSON::Field(key: "event_types", type: Array(BankTransferEventType)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter event_types : Array(BankTransferEventType)? = nil

    # The maximum number of bank transfer events to return. If the number of events matching the above parameters is greater than `count`, the most recent events will be returned.
    @[JSON::Field(key: "count", type: Int32?, default: 25, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: count.nil? && !count_present?)]
    getter count : Int32? = 25
    MAX_FOR_COUNT = Int32.new("25")
    MIN_FOR_COUNT = Int32.new("1")

    @[JSON::Field(ignore: true)]
    property? count_present : Bool = false

    # The offset into the list of bank transfer events. When `count`=25 and `offset`=0, the first 25 events will be returned. When `count`=25 and `offset`=25, the next 25 bank transfer events will be returned.
    @[JSON::Field(key: "offset", type: Int32?, default: 0, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: offset.nil? && !offset_present?)]
    getter offset : Int32? = 0
    MIN_FOR_OFFSET = Int32.new("0")

    @[JSON::Field(ignore: true)]
    property? offset_present : Bool = false

    # The origination account ID to get events for transfers from a specific origination account.
    @[JSON::Field(key: "origination_account_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: origination_account_id.nil? && !origination_account_id_present?)]
    getter origination_account_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? origination_account_id_present : Bool = false

    @[JSON::Field(key: "direction", type: Plaid::BankTransferEventListDirection?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: direction.nil? && !direction_present?)]
    getter direction : Plaid::BankTransferEventListDirection? = nil

    @[JSON::Field(ignore: true)]
    property? direction_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @start_date : Time? = nil,
      @end_date : Time? = nil,
      @bank_transfer_id : String? = nil,
      @account_id : String? = nil,
      @bank_transfer_type : Plaid::BankTransferEventListBankTransferType? = nil,
      @event_types : Array(BankTransferEventType)? = nil,
      @count : Int32? = 25,
      @offset : Int32? = 0,
      @origination_account_id : String? = nil,
      @direction : Plaid::BankTransferEventListDirection? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_start_date = @start_date).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      unless (_bank_transfer_id = @bank_transfer_id).nil?
      end
      unless (_account_id = @account_id).nil?
      end
      unless (_bank_transfer_type = @bank_transfer_type).nil?
        invalid_properties.push(_bank_transfer_type.error_message) if !_bank_transfer_type.valid?
      end
      unless (_event_types = @event_types).nil?
      end
      unless (_count = @count).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("count", _count, MAX_FOR_COUNT)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("count", _count, MIN_FOR_COUNT)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_offset = @offset).nil?
        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("offset", _offset, MIN_FOR_OFFSET)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_origination_account_id = @origination_account_id).nil?
      end
      unless (_direction = @direction).nil?
        invalid_properties.push(_direction.error_message) if !_direction.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_start_date = @start_date).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      unless (_bank_transfer_id = @bank_transfer_id).nil?
      end

      unless (_account_id = @account_id).nil?
      end

      unless (_bank_transfer_type = @bank_transfer_type).nil?
        return false if !_bank_transfer_type.valid?
      end

      unless (_event_types = @event_types).nil?
      end

      unless (_count = @count).nil?
        return false if _count > MAX_FOR_COUNT
        return false if _count < MIN_FOR_COUNT
      end

      unless (_offset = @offset).nil?
        return false if _offset < MIN_FOR_OFFSET
      end

      unless (_origination_account_id = @origination_account_id).nil?
      end

      unless (_direction = @direction).nil?
        return false if !_direction.valid?
      end

      true
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
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Time?)
      unless new_value.nil?
      end

      @start_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(new_value : Time?)
      unless new_value.nil?
      end

      @end_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer_id Object to be assigned
    def bank_transfer_id=(new_value : String?)
      unless new_value.nil?
      end

      @bank_transfer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer_type Object to be assigned
    def bank_transfer_type=(new_value : Plaid::BankTransferEventListBankTransferType?)
      unless new_value.nil?
        new_value.validate
      end

      @bank_transfer_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_types Object to be assigned
    def event_types=(new_value : Array(BankTransferEventType)?)
      unless new_value.nil?
      end

      @event_types = new_value
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
    # @param [Object] offset Object to be assigned
    def offset=(new_value : Int32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_number("offset", new_value, MIN_FOR_OFFSET)
      end

      @offset = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origination_account_id Object to be assigned
    def origination_account_id=(new_value : String?)
      unless new_value.nil?
      end

      @origination_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(new_value : Plaid::BankTransferEventListDirection?)
      unless new_value.nil?
        new_value.validate
      end

      @direction = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_id, @secret, @start_date, @start_date_present, @end_date, @end_date_present, @bank_transfer_id, @bank_transfer_id_present, @account_id, @account_id_present, @bank_transfer_type, @bank_transfer_type_present, @event_types, @count, @count_present, @offset, @offset_present, @origination_account_id, @origination_account_id_present, @direction, @direction_present)
  end
end
