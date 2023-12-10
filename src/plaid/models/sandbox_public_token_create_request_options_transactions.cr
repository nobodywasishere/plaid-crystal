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
  # An optional set of parameters corresponding to transactions options.
  class SandboxPublicTokenCreateRequestOptionsTransactions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The earliest date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter start_date : Time? = nil

    # The most recent date for which to fetch transaction history. Dates should be formatted as YYYY-MM-DD.
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter end_date : Time? = nil

    # The maximum number of days of transaction history to request for the Transactions product.
    @[JSON::Field(key: "days_requested", type: Int32?, default: 90, required: false, nullable: false, emit_null: false)]
    getter days_requested : Int32? = 90
    MAX_FOR_DAYS_REQUESTED = Int32.new("730")
    MIN_FOR_DAYS_REQUESTED = Int32.new("1")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @start_date : Time? = nil,
      @end_date : Time? = nil,
      @days_requested : Int32? = 90
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_start_date = @start_date).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      unless (_days_requested = @days_requested).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("days_requested", _days_requested, MAX_FOR_DAYS_REQUESTED)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("days_requested", _days_requested, MIN_FOR_DAYS_REQUESTED)
          invalid_properties.push(min_number_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_start_date = @start_date).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      unless (_days_requested = @days_requested).nil?
        return false if _days_requested > MAX_FOR_DAYS_REQUESTED
        return false if _days_requested < MIN_FOR_DAYS_REQUESTED
      end

      true
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
    # @param [Object] days_requested Object to be assigned
    def days_requested=(new_value : Int32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("days_requested", new_value, MAX_FOR_DAYS_REQUESTED)
        OpenApi::PrimitiveValidator.validate_min_number("days_requested", new_value, MIN_FOR_DAYS_REQUESTED)
      end

      @days_requested = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@start_date, @end_date, @days_requested)
  end
end
