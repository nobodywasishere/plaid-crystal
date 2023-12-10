#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./match_summary_code"

module Plaid
  # Result summary object specifying how the `name` field matched.
  class KYCCheckNameSummary
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "summary", type: Plaid::MatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter summary : Plaid::MatchSummaryCode? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @summary : Plaid::MatchSummaryCode? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"summary\" is required and cannot be null") if @summary.nil?

      unless (_summary = @summary).nil?
        invalid_properties.push(_summary.error_message) if !_summary.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @summary.nil?
      unless (_summary = @summary).nil?
        return false if !_summary.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] summary Object to be assigned
    def summary=(new_value : Plaid::MatchSummaryCode?)
      raise ArgumentError.new("\"summary\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @summary = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@summary)
  end
end
