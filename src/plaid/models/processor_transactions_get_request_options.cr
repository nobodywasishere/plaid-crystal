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
  class ProcessorTransactionsGetRequestOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The number of transactions to fetch.
    @[JSON::Field(key: "count", type: Int32?, default: 100, required: false, nullable: false, emit_null: false)]
    getter count : Int32? = 100
    MAX_FOR_COUNT = Int32.new("500")
    MIN_FOR_COUNT = Int32.new("1")

    # The number of transactions to skip. The default value is 0.
    @[JSON::Field(key: "offset", type: Int32?, default: 0, required: false, nullable: false, emit_null: false)]
    getter offset : Int32? = 0
    MIN_FOR_OFFSET = Int32.new("0")

    # Include the raw unparsed transaction description from the financial institution. This field is disabled by default. If you need this information in addition to the parsed data provided, contact your Plaid Account Manager, or submit a [Support request](https://dashboard.plaid.com/support/new/product-and-development/product-troubleshooting/product-functionality).
    @[JSON::Field(key: "include_original_description", type: Bool?, default: false, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: include_original_description.nil? && !include_original_description_present?)]
    getter include_original_description : Bool? = false

    @[JSON::Field(ignore: true)]
    property? include_original_description_present : Bool = false

    # Personal finance categories are now returned by default.
    @[JSON::Field(key: "include_personal_finance_category_beta", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter include_personal_finance_category_beta : Bool? = false

    # Personal finance categories are now returned by default.
    @[JSON::Field(key: "include_personal_finance_category", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter include_personal_finance_category : Bool? = false

    # Counterparties and extra merchant fields are now returned by default.
    @[JSON::Field(key: "include_logo_and_counterparty_beta", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter include_logo_and_counterparty_beta : Bool? = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @count : Int32? = 100,
      @offset : Int32? = 0,
      @include_original_description : Bool? = false,
      @include_personal_finance_category_beta : Bool? = false,
      @include_personal_finance_category : Bool? = false,
      @include_logo_and_counterparty_beta : Bool? = false
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

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
      unless (_include_original_description = @include_original_description).nil?
      end
      unless (_include_personal_finance_category_beta = @include_personal_finance_category_beta).nil?
      end
      unless (_include_personal_finance_category = @include_personal_finance_category).nil?
      end
      unless (_include_logo_and_counterparty_beta = @include_logo_and_counterparty_beta).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_count = @count).nil?
        return false if _count > MAX_FOR_COUNT
        return false if _count < MIN_FOR_COUNT
      end

      unless (_offset = @offset).nil?
        return false if _offset < MIN_FOR_OFFSET
      end

      unless (_include_original_description = @include_original_description).nil?
      end

      unless (_include_personal_finance_category_beta = @include_personal_finance_category_beta).nil?
      end

      unless (_include_personal_finance_category = @include_personal_finance_category).nil?
      end

      unless (_include_logo_and_counterparty_beta = @include_logo_and_counterparty_beta).nil?
      end

      true
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
    # @param [Object] include_original_description Object to be assigned
    def include_original_description=(new_value : Bool?)
      unless new_value.nil?
      end

      @include_original_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] include_personal_finance_category_beta Object to be assigned
    def include_personal_finance_category_beta=(new_value : Bool?)
      unless new_value.nil?
      end

      @include_personal_finance_category_beta = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@count, @offset, @include_original_description, @include_original_description_present, @include_personal_finance_category_beta, @include_personal_finance_category, @include_logo_and_counterparty_beta)
  end
end
