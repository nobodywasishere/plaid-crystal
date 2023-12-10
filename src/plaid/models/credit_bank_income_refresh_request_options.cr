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
  # An optional object for `/credit/bank_income/refresh` request options.
  class CreditBankIncomeRefreshRequestOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # How many days of data to include in the refresh. If not specified, this will default to the days requested in the most recently generated bank income report for the user.
    @[JSON::Field(key: "days_requested", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter days_requested : Int32? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @days_requested : Int32? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_days_requested = @days_requested).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_days_requested = @days_requested).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_requested Object to be assigned
    def days_requested=(new_value : Int32?)
      unless new_value.nil?
      end

      @days_requested = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@days_requested)
  end
end