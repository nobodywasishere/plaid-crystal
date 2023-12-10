#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./asset_transaction_description"
require "./asset_transaction_detail"

module Plaid
  # An object representing...
  class CreditFreddieMacAssetTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "ASSET_TRANSACTION_DETAIL", type: AssetTransactionDetail?, default: nil, required: true, nullable: false, emit_null: false)]
    getter asset_transaction_detail : AssetTransactionDetail? = nil

    # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
    @[JSON::Field(key: "ASSET_TRANSACTION_DESCRIPTION", type: Array(AssetTransactionDescription)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter asset_transaction_description : Array(AssetTransactionDescription)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @asset_transaction_detail : AssetTransactionDetail? = nil,
      @asset_transaction_description : Array(AssetTransactionDescription)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"asset_transaction_detail\" is required and cannot be null") if @asset_transaction_detail.nil?

      unless (_asset_transaction_detail = @asset_transaction_detail).nil?
      end
      invalid_properties.push("\"asset_transaction_description\" is required and cannot be null") if @asset_transaction_description.nil?

      unless (_asset_transaction_description = @asset_transaction_description).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @asset_transaction_detail.nil?
      unless (_asset_transaction_detail = @asset_transaction_detail).nil?
      end

      return false if @asset_transaction_description.nil?
      unless (_asset_transaction_description = @asset_transaction_description).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_transaction_detail Object to be assigned
    def asset_transaction_detail=(new_value : AssetTransactionDetail?)
      raise ArgumentError.new("\"asset_transaction_detail\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @asset_transaction_detail = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_transaction_description Object to be assigned
    def asset_transaction_description=(new_value : Array(AssetTransactionDescription)?)
      raise ArgumentError.new("\"asset_transaction_description\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @asset_transaction_description = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@asset_transaction_detail, @asset_transaction_description)
  end
end