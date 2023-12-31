#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_schedule_interval_unit"

module Plaid
  # The schedule that the recurring transfer will be executed on.
  class TransferRecurringSchedule
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "interval_unit", type: Plaid::TransferScheduleIntervalUnit?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_unit : Plaid::TransferScheduleIntervalUnit? = nil

    # The number of recurring `interval_units` between originations. The recurring interval (before holiday adjustment) is calculated by multiplying `interval_unit` and `interval_count`. For example, to schedule a recurring transfer which originates once every two weeks, set `interval_unit` = `week` and `interval_count` = 2.
    @[JSON::Field(key: "interval_count", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_count : Int32? = nil

    # The day of the interval on which to schedule the transfer.  If the `interval_unit` is `week`, `interval_execution_day` should be an integer from 1 (Monday) to 5 (Friday).  If the `interval_unit` is `month`, `interval_execution_day` should be an integer indicating which day of the month to make the transfer on. Integers from 1 to 28 can be used to make a transfer on that day of the month. Negative integers from -1 to -5 can be used to make a transfer relative to the end of the month. To make a transfer on the last day of the month, use -1; to make the transfer on the second-to-last day, use -2, and so on.  The transfer will be originated on the next available banking day if the designated day is a non banking day.
    @[JSON::Field(key: "interval_execution_day", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_execution_day : Int32? = nil

    # A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). The recurring transfer will begin on the first `interval_execution_day` on or after the `start_date`.  If the first `interval_execution_day` on or after the start date is also the same day that `/transfer/recurring/create` was called, the bank *may* make the first payment on that day, but it is not guaranteed to do so.
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter start_date : Time? = nil

    # End of Required Properties

    # Optional Properties

    # A date in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD). The recurring transfer will end on the last `interval_execution_day` on or before the `end_date`. If the `interval_execution_day` between the start date and the end date (inclusive) is also the same day that `/transfer/recurring/create` was called, the bank *may* make a payment on that day, but it is not guaranteed to do so.
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::ISO8601DateConverter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @interval_unit : Plaid::TransferScheduleIntervalUnit? = nil,
      @interval_count : Int32? = nil,
      @interval_execution_day : Int32? = nil,
      @start_date : Time? = nil,
      # Optional properties
      @end_date : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"interval_unit\" is required and cannot be null") if @interval_unit.nil?

      unless (_interval_unit = @interval_unit).nil?
        invalid_properties.push(_interval_unit.error_message) if !_interval_unit.valid?
      end
      invalid_properties.push("\"interval_count\" is required and cannot be null") if @interval_count.nil?

      unless (_interval_count = @interval_count).nil?
      end
      invalid_properties.push("\"interval_execution_day\" is required and cannot be null") if @interval_execution_day.nil?

      unless (_interval_execution_day = @interval_execution_day).nil?
      end
      invalid_properties.push("\"start_date\" is required and cannot be null") if @start_date.nil?

      unless (_start_date = @start_date).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @interval_unit.nil?
      unless (_interval_unit = @interval_unit).nil?
        return false if !_interval_unit.valid?
      end

      return false if @interval_count.nil?
      unless (_interval_count = @interval_count).nil?
      end

      return false if @interval_execution_day.nil?
      unless (_interval_execution_day = @interval_execution_day).nil?
      end

      return false if @start_date.nil?
      unless (_start_date = @start_date).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_unit Object to be assigned
    def interval_unit=(new_value : Plaid::TransferScheduleIntervalUnit?)
      raise ArgumentError.new("\"interval_unit\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @interval_unit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(new_value : Int32?)
      raise ArgumentError.new("\"interval_count\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @interval_count = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@interval_unit, @interval_count, @interval_execution_day, @start_date, @end_date, @end_date_present)
  end
end
