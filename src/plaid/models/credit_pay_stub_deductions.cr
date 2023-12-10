#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./pay_stub_deductions_breakdown"
require "./pay_stub_deductions_total"

module Plaid
  # An object with the deduction information found on a pay stub.
  class CreditPayStubDeductions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "breakdown", type: Array(PayStubDeductionsBreakdown)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter breakdown : Array(PayStubDeductionsBreakdown)? = nil

    @[JSON::Field(key: "total", type: PayStubDeductionsTotal?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total : PayStubDeductionsTotal? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @breakdown : Array(PayStubDeductionsBreakdown)? = nil,
      @total : PayStubDeductionsTotal? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"breakdown\" is required and cannot be null") if @breakdown.nil?

      unless (_breakdown = @breakdown).nil?
      end
      invalid_properties.push("\"total\" is required and cannot be null") if @total.nil?

      unless (_total = @total).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @breakdown.nil?
      unless (_breakdown = @breakdown).nil?
      end

      return false if @total.nil?
      unless (_total = @total).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] breakdown Object to be assigned
    def breakdown=(new_value : Array(PayStubDeductionsBreakdown)?)
      raise ArgumentError.new("\"breakdown\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @breakdown = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total Object to be assigned
    def total=(new_value : PayStubDeductionsTotal?)
      raise ArgumentError.new("\"total\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @total = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@breakdown, @total)
  end
end
