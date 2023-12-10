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
  # An optional object to filter or add data to `/asset_report/get` results. If provided, must be non-`null`.
  class AssetReportPDFGetRequestOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The maximum integer number of days of history to include in the Asset Report.
    @[JSON::Field(key: "days_to_include", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: days_to_include.nil? && !days_to_include_present?)]
    getter days_to_include : Int32? = nil
    MAX_FOR_DAYS_TO_INCLUDE = Int32.new("731")
    MIN_FOR_DAYS_TO_INCLUDE = Int32.new("0")

    @[JSON::Field(ignore: true)]
    property? days_to_include_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @days_to_include : Int32? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_days_to_include = @days_to_include).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("days_to_include", _days_to_include, MAX_FOR_DAYS_TO_INCLUDE)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("days_to_include", _days_to_include, MIN_FOR_DAYS_TO_INCLUDE)
          invalid_properties.push(min_number_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_days_to_include = @days_to_include).nil?
        return false if _days_to_include > MAX_FOR_DAYS_TO_INCLUDE
        return false if _days_to_include < MIN_FOR_DAYS_TO_INCLUDE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_to_include Object to be assigned
    def days_to_include=(new_value : Int32?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("days_to_include", new_value, MAX_FOR_DAYS_TO_INCLUDE)
        OpenApi::PrimitiveValidator.validate_min_number("days_to_include", new_value, MIN_FOR_DAYS_TO_INCLUDE)
      end

      @days_to_include = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@days_to_include, @days_to_include_present)
  end
end
