#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_event_list_transfer_type"
require "./transfer_event_type"

module Plaid
  # Defines the request schema for `/transfer/event/list`
  class TransferEventListRequest
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

    # The start datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start_date.nil? && !start_date_present?, converter: Time::RFC3339Converter)]
    getter start_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    # The end datetime of transfers to list. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::RFC3339Converter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # Plaid’s unique identifier for a transfer.
    @[JSON::Field(key: "transfer_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_id.nil? && !transfer_id_present?)]
    getter transfer_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? transfer_id_present : Bool = false

    # The account ID to get events for all transactions to/from an account.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_id.nil? && !account_id_present?)]
    getter account_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_id_present : Bool = false

    @[JSON::Field(key: "transfer_type", type: Plaid::TransferEventListTransferType?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_type.nil? && !transfer_type_present?)]
    getter transfer_type : Plaid::TransferEventListTransferType? = nil

    @[JSON::Field(ignore: true)]
    property? transfer_type_present : Bool = false

    # Filter events by event type.
    @[JSON::Field(key: "event_types", type: Array(TransferEventType)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter event_types : Array(TransferEventType)? = nil

    # Plaid’s unique identifier for a sweep.
    @[JSON::Field(key: "sweep_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sweep_id : String? = nil

    # The maximum number of transfer events to return. If the number of events matching the above parameters is greater than `count`, the most recent events will be returned.
    @[JSON::Field(key: "count", type: Int32?, default: 25, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: count.nil? && !count_present?)]
    getter count : Int32? = 25
    MAX_FOR_COUNT = Int32.new("25")
    MIN_FOR_COUNT = Int32.new("1")

    @[JSON::Field(ignore: true)]
    property? count_present : Bool = false

    # The offset into the list of transfer events. When `count`=25 and `offset`=0, the first 25 events will be returned. When `count`=25 and `offset`=25, the next 25 events will be returned.
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

    # Filter transfer events to only those with the specified originator client.
    @[JSON::Field(key: "originator_client_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: originator_client_id.nil? && !originator_client_id_present?)]
    getter originator_client_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? originator_client_id_present : Bool = false

    # Filter transfer events to only those with the specified `funding_account_id`.
    @[JSON::Field(key: "funding_account_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: funding_account_id.nil? && !funding_account_id_present?)]
    getter funding_account_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? funding_account_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @start_date : Time? = nil,
      @end_date : Time? = nil,
      @transfer_id : String? = nil,
      @account_id : String? = nil,
      @transfer_type : Plaid::TransferEventListTransferType? = nil,
      @event_types : Array(TransferEventType)? = nil,
      @sweep_id : String? = nil,
      @count : Int32? = 25,
      @offset : Int32? = 0,
      @origination_account_id : String? = nil,
      @originator_client_id : String? = nil,
      @funding_account_id : String? = nil
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
      unless (_transfer_id = @transfer_id).nil?
      end
      unless (_account_id = @account_id).nil?
      end
      unless (_transfer_type = @transfer_type).nil?
        invalid_properties.push(_transfer_type.error_message) if !_transfer_type.valid?
      end
      unless (_event_types = @event_types).nil?
      end
      unless (_sweep_id = @sweep_id).nil?
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
      unless (_originator_client_id = @originator_client_id).nil?
      end
      unless (_funding_account_id = @funding_account_id).nil?
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

      unless (_transfer_id = @transfer_id).nil?
      end

      unless (_account_id = @account_id).nil?
      end

      unless (_transfer_type = @transfer_type).nil?
        return false if !_transfer_type.valid?
      end

      unless (_event_types = @event_types).nil?
      end

      unless (_sweep_id = @sweep_id).nil?
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

      unless (_originator_client_id = @originator_client_id).nil?
      end

      unless (_funding_account_id = @funding_account_id).nil?
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
    # @param [Object] transfer_id Object to be assigned
    def transfer_id=(new_value : String?)
      unless new_value.nil?
      end

      @transfer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_type Object to be assigned
    def transfer_type=(new_value : Plaid::TransferEventListTransferType?)
      unless new_value.nil?
        new_value.validate
      end

      @transfer_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_types Object to be assigned
    def event_types=(new_value : Array(TransferEventType)?)
      unless new_value.nil?
      end

      @event_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sweep_id Object to be assigned
    def sweep_id=(new_value : String?)
      unless new_value.nil?
      end

      @sweep_id = new_value
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
    # @param [Object] originator_client_id Object to be assigned
    def originator_client_id=(new_value : String?)
      unless new_value.nil?
      end

      @originator_client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_account_id Object to be assigned
    def funding_account_id=(new_value : String?)
      unless new_value.nil?
      end

      @funding_account_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_id, @secret, @start_date, @start_date_present, @end_date, @end_date_present, @transfer_id, @transfer_id_present, @account_id, @account_id_present, @transfer_type, @transfer_type_present, @event_types, @sweep_id, @count, @count_present, @offset, @offset_present, @origination_account_id, @origination_account_id_present, @originator_client_id, @originator_client_id_present, @funding_account_id, @funding_account_id_present)
  end
end
