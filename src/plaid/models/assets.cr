#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./asset"

module Plaid
  # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
  class Assets
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
    @[JSON::Field(key: "ASSET", type: Array(Asset)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter asset : Array(Asset)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @asset : Array(Asset)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"asset\" is required and cannot be null") if @asset.nil?

      unless (_asset = @asset).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @asset.nil?
      unless (_asset = @asset).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset Object to be assigned
    def asset=(new_value : Array(Asset)?)
      raise ArgumentError.new("\"asset\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @asset = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@asset)
  end
end
