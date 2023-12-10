#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./client_provided_enhanced_transaction"

module Plaid
  # TransactionsEnhanceGetResponse defines the response schema for `/beta/transactions/v1/enhance`.
  class TransactionsEnhanceGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # An array of enhanced transactions.
    @[JSON::Field(key: "enhanced_transactions", type: Array(ClientProvidedEnhancedTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enhanced_transactions : Array(ClientProvidedEnhancedTransaction)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enhanced_transactions : Array(ClientProvidedEnhancedTransaction)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"enhanced_transactions\" is required and cannot be null") if @enhanced_transactions.nil?

      unless (_enhanced_transactions = @enhanced_transactions).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enhanced_transactions.nil?
      unless (_enhanced_transactions = @enhanced_transactions).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enhanced_transactions Object to be assigned
    def enhanced_transactions=(new_value : Array(ClientProvidedEnhancedTransaction)?)
      raise ArgumentError.new("\"enhanced_transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @enhanced_transactions = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enhanced_transactions)
  end
end