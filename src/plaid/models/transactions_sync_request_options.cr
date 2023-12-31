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
  # An optional object to be used with the request. If specified, `options` must not be `null`.
  class TransactionsSyncRequestOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager or submit a [Support request](https://dashboard.plaid.com/support/new/product-and-development/product-troubleshooting/product-functionality).
    @[JSON::Field(key: "include_original_description", type: Bool?, default: false, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: include_original_description.nil? && !include_original_description_present?)]
    getter include_original_description : Bool? = false

    @[JSON::Field(ignore: true)]
    property? include_original_description_present : Bool = false

    # Personal finance categories are now returned by default.
    @[JSON::Field(key: "include_personal_finance_category", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter include_personal_finance_category : Bool? = false

    # Counterparties and extra merchant fields are now returned by default.
    @[JSON::Field(key: "include_logo_and_counterparty_beta", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter include_logo_and_counterparty_beta : Bool? = false

    # This option only applies to calls for Items that were not initialized with Transactions during Link and are now adding the Transactions product to the Item for the first time. In these cases, this option controls the maximum number of days of transaction history that Plaid will request from the financial institution. For developer accounts created after December 3, 2023, if no value is specified, this will default to 90 days. For developer accounts created on December 3, 2023 or earlier, if no value is specified, this will default to 730 days until June 24, 2024, at which point it will default to 90 days.  If Transactions has already been added to the Item prior to this call, this field will have no effect.
    @[JSON::Field(key: "days_requested", type: Int32?, default: 90, required: false, nullable: false, emit_null: false)]
    getter days_requested : Int32? = 90
    MAX_FOR_DAYS_REQUESTED = Int32.new("730")
    MIN_FOR_DAYS_REQUESTED = Int32.new("1")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @include_original_description : Bool? = false,
      @include_personal_finance_category : Bool? = false,
      @include_logo_and_counterparty_beta : Bool? = false,
      @days_requested : Int32? = 90
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_include_original_description = @include_original_description).nil?
      end
      unless (_include_personal_finance_category = @include_personal_finance_category).nil?
      end
      unless (_include_logo_and_counterparty_beta = @include_logo_and_counterparty_beta).nil?
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
      unless (_include_original_description = @include_original_description).nil?
      end

      unless (_include_personal_finance_category = @include_personal_finance_category).nil?
      end

      unless (_include_logo_and_counterparty_beta = @include_logo_and_counterparty_beta).nil?
      end

      unless (_days_requested = @days_requested).nil?
        return false if _days_requested > MAX_FOR_DAYS_REQUESTED
        return false if _days_requested < MIN_FOR_DAYS_REQUESTED
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] include_original_description Object to be assigned
    def include_original_description=(new_value : Bool?)
      unless new_value.nil?
      end

      @include_original_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] include_personal_finance_category Object to be assigned
    def include_personal_finance_category=(new_value : Bool?)
      unless new_value.nil?
      end

      @include_personal_finance_category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] include_logo_and_counterparty_beta Object to be assigned
    def include_logo_and_counterparty_beta=(new_value : Bool?)
      unless new_value.nil?
      end

      @include_logo_and_counterparty_beta = new_value
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
    def_equals_and_hash(@include_original_description, @include_original_description_present, @include_personal_finance_category, @include_logo_and_counterparty_beta, @days_requested)
  end
end
