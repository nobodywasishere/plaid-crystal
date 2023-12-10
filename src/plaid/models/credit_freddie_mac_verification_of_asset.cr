#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_freddie_mac_reporting_information"
require "./credit_freddie_mac_verification_of_asset_response"
require "./service_product_fulfillment"

module Plaid
  # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
  class CreditFreddieMacVerificationOfAsset
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "REPORTING_INFORMATION", type: CreditFreddieMacReportingInformation?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reporting_information : CreditFreddieMacReportingInformation? = nil

    @[JSON::Field(key: "SERVICE_PRODUCT_FULFILLMENT", type: ServiceProductFulfillment?, default: nil, required: true, nullable: false, emit_null: false)]
    getter service_product_fulfillment : ServiceProductFulfillment? = nil

    @[JSON::Field(key: "VERIFICATION_OF_ASSET_RESPONSE", type: CreditFreddieMacVerificationOfAssetResponse?, default: nil, required: true, nullable: false, emit_null: false)]
    getter verification_of_asset_response : CreditFreddieMacVerificationOfAssetResponse? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @reporting_information : CreditFreddieMacReportingInformation? = nil,
      @service_product_fulfillment : ServiceProductFulfillment? = nil,
      @verification_of_asset_response : CreditFreddieMacVerificationOfAssetResponse? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"reporting_information\" is required and cannot be null") if @reporting_information.nil?

      unless (_reporting_information = @reporting_information).nil?
      end
      invalid_properties.push("\"service_product_fulfillment\" is required and cannot be null") if @service_product_fulfillment.nil?

      unless (_service_product_fulfillment = @service_product_fulfillment).nil?
      end
      invalid_properties.push("\"verification_of_asset_response\" is required and cannot be null") if @verification_of_asset_response.nil?

      unless (_verification_of_asset_response = @verification_of_asset_response).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @reporting_information.nil?
      unless (_reporting_information = @reporting_information).nil?
      end

      return false if @service_product_fulfillment.nil?
      unless (_service_product_fulfillment = @service_product_fulfillment).nil?
      end

      return false if @verification_of_asset_response.nil?
      unless (_verification_of_asset_response = @verification_of_asset_response).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reporting_information Object to be assigned
    def reporting_information=(new_value : CreditFreddieMacReportingInformation?)
      raise ArgumentError.new("\"reporting_information\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @reporting_information = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_product_fulfillment Object to be assigned
    def service_product_fulfillment=(new_value : ServiceProductFulfillment?)
      raise ArgumentError.new("\"service_product_fulfillment\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @service_product_fulfillment = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_of_asset_response Object to be assigned
    def verification_of_asset_response=(new_value : CreditFreddieMacVerificationOfAssetResponse?)
      raise ArgumentError.new("\"verification_of_asset_response\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @verification_of_asset_response = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@reporting_information, @service_product_fulfillment, @verification_of_asset_response)
  end
end
