#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_pay_stub_address"

module Plaid
  # Information about the employer on the pay stub.
  class CreditPayStubEmployer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "address", type: CreditPayStubAddress?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address : CreditPayStubAddress? = nil

    # The name of the employer on the pay stub.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter name : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : CreditPayStubAddress? = nil,
      @name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address\" is required and cannot be null") if @address.nil?

      unless (_address = @address).nil?
      end
      unless (_name = @name).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address.nil?
      unless (_address = @address).nil?
      end

      unless (_name = @name).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : CreditPayStubAddress?)
      raise ArgumentError.new("\"address\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
      end

      @name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name)
  end
end
