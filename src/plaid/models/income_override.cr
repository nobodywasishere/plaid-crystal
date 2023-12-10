#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./paystub_override"

module Plaid
  # Specify payroll data on the account.
  class IncomeOverride
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A list of paystubs associated with the account.
    @[JSON::Field(key: "paystubs", type: Array(Plaid::PaystubOverride)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paystubs : Array(Plaid::PaystubOverride)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @paystubs : Array(Plaid::PaystubOverride)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_paystubs = @paystubs).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "paystubs", container: _paystubs)) if _paystubs.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_paystubs = @paystubs).nil?
        return false if _paystubs.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _paystubs)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paystubs Object to be assigned
    def paystubs=(new_value : Array(Plaid::PaystubOverride)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @paystubs = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@paystubs)
  end
end