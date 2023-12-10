#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_freddie_mac_assets"

module Plaid
  # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
  class CreditFreddieMacVerificationOfAssetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "ASSETS", type: CreditFreddieMacAssets?, default: nil, required: true, nullable: false, emit_null: false)]
    getter assets : CreditFreddieMacAssets? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @assets : CreditFreddieMacAssets? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"assets\" is required and cannot be null") if @assets.nil?

      unless (_assets = @assets).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @assets.nil?
      unless (_assets = @assets).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] assets Object to be assigned
    def assets=(new_value : CreditFreddieMacAssets?)
      raise ArgumentError.new("\"assets\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @assets = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@assets)
  end
end
