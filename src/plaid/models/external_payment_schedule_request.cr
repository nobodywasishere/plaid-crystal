#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_schedule_interval"

module Plaid
  # The schedule that the payment will be executed on. If a schedule is provided, the payment is automatically set up as a standing order. If no schedule is specified, the payment will be executed only once.
  class ExternalPaymentScheduleRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "interval", type: Plaid::PaymentScheduleInterval?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : Plaid::PaymentScheduleInterval? = nil

    # The day of the interval on which to schedule the payment.  If the payment interval is weekly, `interval_execution_day` should be an integer from 1 (Monday) to 7 (Sunday).  If the payment interval is monthly, `interval_execution_day` should be an integer indicating which day of the month to make the payment on. Integers from 1 to 28 can be used to make a payment on that day of the month. Negative integers from -1 to -5 can be used to make a payment relative to the end of the month. To make a payment on the last day of the month, use -1; to make the payment on the second-to-last day, use -2, and so on.
    @[JSON::Field(key: "interval_execution_day", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_execution_day : Int32? = nil

    # A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). Standing order payments will begin on the first `interval_execution_day` on or after the `start_date`.  If the first `interval_execution_day` on or after the start date is also the same day that `/payment_initiation/payment/create` was called, the bank *may* make the first payment on that day, but it is not guaranteed to do so.
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter start_date : Time? = nil

    # End of Required Properties

    # Optional Properties

    # A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). Standing order payments will end on the last `interval_execution_day` on or before the `end_date`. If the only `interval_execution_day` between the start date and the end date (inclusive) is also the same day that `/payment_initiation/payment/create` was called, the bank *may* make a payment on that day, but it is not guaranteed to do so.
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::ISO8601DateConverter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # The start date sent to the bank after adjusting for holidays or weekends.  Will be provided in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). If the start date did not require adjustment, this field will be `null`.
    @[JSON::Field(key: "adjusted_start_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: adjusted_start_date.nil? && !adjusted_start_date_present?, converter: Time::ISO8601DateConverter)]
    getter adjusted_start_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? adjusted_start_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @interval : Plaid::PaymentScheduleInterval? = nil,
      @interval_execution_day : Int32? = nil,
      @start_date : Time? = nil,
      # Optional properties
      @end_date : Time? = nil,
      @adjusted_start_date : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"interval\" is required and cannot be null") if @interval.nil?

      unless (_interval = @interval).nil?
        invalid_properties.push(_interval.error_message) if !_interval.valid?
      end
      invalid_properties.push("\"interval_execution_day\" is required and cannot be null") if @interval_execution_day.nil?

      unless (_interval_execution_day = @interval_execution_day).nil?
      end
      invalid_properties.push("\"start_date\" is required and cannot be null") if @start_date.nil?

      unless (_start_date = @start_date).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      unless (_adjusted_start_date = @adjusted_start_date).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @interval.nil?
      unless (_interval = @interval).nil?
        return false if !_interval.valid?
      end

      return false if @interval_execution_day.nil?
      unless (_interval_execution_day = @interval_execution_day).nil?
      end

      return false if @start_date.nil?
      unless (_start_date = @start_date).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      unless (_adjusted_start_date = @adjusted_start_date).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(new_value : Plaid::PaymentScheduleInterval?)
      raise ArgumentError.new("\"interval\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @interval = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_execution_day Object to be assigned
    def interval_execution_day=(new_value : Int32?)
      raise ArgumentError.new("\"interval_execution_day\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @interval_execution_day = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Time?)
      raise ArgumentError.new("\"start_date\" is required and cannot be null") if new_value.nil?
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
    # @param [Object] adjusted_start_date Object to be assigned
    def adjusted_start_date=(new_value : Time?)
      unless new_value.nil?
      end

      @adjusted_start_date = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@interval, @interval_execution_day, @start_date, @end_date, @end_date_present, @adjusted_start_date, @adjusted_start_date_present)
  end
end
