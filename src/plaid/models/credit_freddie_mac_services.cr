#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_freddie_mac_service"

module Plaid
  # A collection of objects that describe requests and responses for services.
  class CreditFreddieMacServices
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "SERVICE", type: CreditFreddieMacService?, default: nil, required: true, nullable: false, emit_null: false)]
    getter service : CreditFreddieMacService? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @service : CreditFreddieMacService? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"service\" is required and cannot be null") if @service.nil?

      unless (_service = @service).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @service.nil?
      unless (_service = @service).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service Object to be assigned
    def service=(new_value : CreditFreddieMacService?)
      raise ArgumentError.new("\"service\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @service = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@service)
  end
end
