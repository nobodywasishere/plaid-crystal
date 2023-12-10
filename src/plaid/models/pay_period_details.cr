#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./distribution_breakdown"

module Plaid
  # Details about the pay period.
  class PayPeriodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The amount of the paycheck.
    @[JSON::Field(key: "check_amount", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: check_amount.nil? && !check_amount_present?)]
    getter check_amount : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? check_amount_present : Bool = false

    @[JSON::Field(key: "distribution_breakdown", type: Array(DistributionBreakdown)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter distribution_breakdown : Array(DistributionBreakdown)? = nil

    # The pay period end date, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format: \"yyyy-mm-dd\".
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::ISO8601DateConverter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # Total earnings before tax/deductions.
    @[JSON::Field(key: "gross_earnings", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: gross_earnings.nil? && !gross_earnings_present?)]
    getter gross_earnings : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? gross_earnings_present : Bool = false

    # The date on which the paystub was issued, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (\"yyyy-mm-dd\").
    @[JSON::Field(key: "pay_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: pay_date.nil? && !pay_date_present?, converter: Time::ISO8601DateConverter)]
    getter pay_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? pay_date_present : Bool = false

    # The frequency at which an individual is paid.
    @[JSON::Field(key: "pay_frequency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: pay_frequency.nil? && !pay_frequency_present?)]
    getter pay_frequency : String? = nil
    ERROR_MESSAGE_FOR_PAY_FREQUENCY = "invalid value for \"pay_frequency\", must be one of [PAY_FREQUENCY_UNKNOWN, PAY_FREQUENCY_WEEKLY, PAY_FREQUENCY_BIWEEKLY, PAY_FREQUENCY_SEMIMONTHLY, PAY_FREQUENCY_MONTHLY, null]."
    VALID_VALUES_FOR_PAY_FREQUENCY  = String.static_array("PAY_FREQUENCY_UNKNOWN", "PAY_FREQUENCY_WEEKLY", "PAY_FREQUENCY_BIWEEKLY", "PAY_FREQUENCY_SEMIMONTHLY", "PAY_FREQUENCY_MONTHLY", "null")

    @[JSON::Field(ignore: true)]
    property? pay_frequency_present : Bool = false

    # The date on which the paystub was issued, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (\"yyyy-mm-dd\").
    @[JSON::Field(key: "pay_day", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: pay_day.nil? && !pay_day_present?, converter: Time::ISO8601DateConverter)]
    getter pay_day : Time? = nil

    @[JSON::Field(ignore: true)]
    property? pay_day_present : Bool = false

    # The pay period start date, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format: \"yyyy-mm-dd\".
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: start_date.nil? && !start_date_present?, converter: Time::ISO8601DateConverter)]
    getter start_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? start_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @check_amount : Float64? = nil,
      @distribution_breakdown : Array(DistributionBreakdown)? = nil,
      @end_date : Time? = nil,
      @gross_earnings : Float64? = nil,
      @pay_date : Time? = nil,
      @pay_frequency : String? = nil,
      @pay_day : Time? = nil,
      @start_date : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_check_amount = @check_amount).nil?
      end
      unless (_distribution_breakdown = @distribution_breakdown).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      unless (_gross_earnings = @gross_earnings).nil?
      end
      unless (_pay_date = @pay_date).nil?
      end
      unless (_pay_frequency = @pay_frequency).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAY_FREQUENCY) unless OpenApi::EnumValidator.valid?(_pay_frequency, VALID_VALUES_FOR_PAY_FREQUENCY)
      end
      unless (_pay_day = @pay_day).nil?
      end
      unless (_start_date = @start_date).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_check_amount = @check_amount).nil?
      end

      unless (_distribution_breakdown = @distribution_breakdown).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      unless (_gross_earnings = @gross_earnings).nil?
      end

      unless (_pay_date = @pay_date).nil?
      end

      unless (_pay_frequency = @pay_frequency).nil?
        return false unless OpenApi::EnumValidator.valid?(_pay_frequency, VALID_VALUES_FOR_PAY_FREQUENCY)
      end

      unless (_pay_day = @pay_day).nil?
      end

      unless (_start_date = @start_date).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] check_amount Object to be assigned
    def check_amount=(new_value : Float64?)
      unless new_value.nil?
      end

      @check_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] distribution_breakdown Object to be assigned
    def distribution_breakdown=(new_value : Array(DistributionBreakdown)?)
      unless new_value.nil?
      end

      @distribution_breakdown = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(new_value : Time?)
      unless new_value.nil?
      end

      @end_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gross_earnings Object to be assigned
    def gross_earnings=(new_value : Float64?)
      unless new_value.nil?
      end

      @gross_earnings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_date Object to be assigned
    def pay_date=(new_value : Time?)
      unless new_value.nil?
      end

      @pay_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_frequency Object to be assigned
    def pay_frequency=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("pay_frequency", new_value, VALID_VALUES_FOR_PAY_FREQUENCY)
      end

      @pay_frequency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_day Object to be assigned
    def pay_day=(new_value : Time?)
      unless new_value.nil?
      end

      @pay_day = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Time?)
      unless new_value.nil?
      end

      @start_date = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@check_amount, @check_amount_present, @distribution_breakdown, @end_date, @end_date_present, @gross_earnings, @gross_earnings_present, @pay_date, @pay_date_present, @pay_frequency, @pay_frequency_present, @pay_day, @pay_day_present, @start_date, @start_date_present)
  end
end
