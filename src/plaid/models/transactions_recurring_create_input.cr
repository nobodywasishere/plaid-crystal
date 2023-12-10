#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Plaid
  # TransactionsRecurringCreateInput defines a single input to the `/transactions/recurring/streams/create` endpoint.
  class TransactionsRecurringCreateInput
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # IDs of all the transactions that will be merged into one stream. If any transaction currently exists in another stream, it will be removed from the other stream.
    @[JSON::Field(key: "transaction_ids", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_ids : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @transaction_ids : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_transaction_ids = @transaction_ids).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_transaction_ids = @transaction_ids).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_ids Object to be assigned
    def transaction_ids=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @transaction_ids = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@transaction_ids)
  end
end