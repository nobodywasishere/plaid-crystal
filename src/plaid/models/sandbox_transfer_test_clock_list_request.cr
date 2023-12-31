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
  # Defines the request schema for `/sandbox/transfer/test_clock/list`
  class SandboxTransferTestClockListRequest
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

    # The start virtual timestamp of test clocks to return. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
    @[JSON::Field(key: "start_virtual_time", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start_virtual_time.nil? && !start_virtual_time_present?, converter: Time::RFC3339Converter)]
    getter start_virtual_time : Time? = nil

    @[JSON::Field(ignore: true)]
    property? start_virtual_time_present : Bool = false

    # The end virtual timestamp of test clocks to return. This should be in RFC 3339 format (i.e. `2019-12-06T22:35:49Z`)
    @[JSON::Field(key: "end_virtual_time", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_virtual_time.nil? && !end_virtual_time_present?, converter: Time::RFC3339Converter)]
    getter end_virtual_time : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_virtual_time_present : Bool = false

    # The maximum number of test clocks to return.
    @[JSON::Field(key: "count", type: Int32?, default: 25, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: count.nil? && !count_present?)]
    getter count : Int32? = 25
    MAX_FOR_COUNT = Int32.new("25")
    MIN_FOR_COUNT = Int32.new("1")

    @[JSON::Field(ignore: true)]
    property? count_present : Bool = false

    # The number of test clocks to skip before returning results.
    @[JSON::Field(key: "offset", type: Int32?, default: 0, required: false, nullable: false, emit_null: false)]
    getter offset : Int32? = 0
    MIN_FOR_OFFSET = Int32.new("0")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @start_virtual_time : Time? = nil,
      @end_virtual_time : Time? = nil,
      @count : Int32? = 25,
      @offset : Int32? = 0
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
      unless (_start_virtual_time = @start_virtual_time).nil?
      end
      unless (_end_virtual_time = @end_virtual_time).nil?
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
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_start_virtual_time = @start_virtual_time).nil?
      end

      unless (_end_virtual_time = @end_virtual_time).nil?
      end

      unless (_count = @count).nil?
        return false if _count > MAX_FOR_COUNT
        return false if _count < MIN_FOR_COUNT
      end

      unless (_offset = @offset).nil?
        return false if _offset < MIN_FOR_OFFSET
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
    # @param [Object] start_virtual_time Object to be assigned
    def start_virtual_time=(new_value : Time?)
      unless new_value.nil?
      end

      @start_virtual_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_virtual_time Object to be assigned
    def end_virtual_time=(new_value : Time?)
      unless new_value.nil?
      end

      @end_virtual_time = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_id, @secret, @start_virtual_time, @start_virtual_time_present, @end_virtual_time, @end_virtual_time_present, @count, @count_present, @offset)
  end
end
