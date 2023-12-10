#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./loan_identifier"

module Plaid
  # Collection of current and previous identifiers for this loan.
  class CreditFreddieMacLoanIdentifiers
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "LOAN_IDENTIFIER", type: Array(LoanIdentifier)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter loan_identifier : Array(LoanIdentifier)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @loan_identifier : Array(LoanIdentifier)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"loan_identifier\" is required and cannot be null") if @loan_identifier.nil?

      unless (_loan_identifier = @loan_identifier).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @loan_identifier.nil?
      unless (_loan_identifier = @loan_identifier).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] loan_identifier Object to be assigned
    def loan_identifier=(new_value : Array(LoanIdentifier)?)
      raise ArgumentError.new("\"loan_identifier\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @loan_identifier = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@loan_identifier)
  end
end