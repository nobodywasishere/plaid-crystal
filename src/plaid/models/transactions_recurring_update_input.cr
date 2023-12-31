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
  # TransactionsRecurringUpdateInput defines a single operation to the `/transactions/recurring/streams/update` endpoint.
  class TransactionsRecurringUpdateInput
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the stream that all the transactions will be added in to.
    @[JSON::Field(key: "stream_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter stream_id : String? = nil

    # IDs of all the transactions that will be added into the stream. If any transaction currently exist in another stream, it will be removed from the other stream.
    @[JSON::Field(key: "transaction_ids", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction_ids : Array(String)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @stream_id : String? = nil,
      @transaction_ids : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"stream_id\" is required and cannot be null") if @stream_id.nil?

      unless (_stream_id = @stream_id).nil?
      end
      invalid_properties.push("\"transaction_ids\" is required and cannot be null") if @transaction_ids.nil?

      unless (_transaction_ids = @transaction_ids).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @stream_id.nil?
      unless (_stream_id = @stream_id).nil?
      end

      return false if @transaction_ids.nil?
      unless (_transaction_ids = @transaction_ids).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stream_id Object to be assigned
    def stream_id=(new_value : String?)
      raise ArgumentError.new("\"stream_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @stream_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_ids Object to be assigned
    def transaction_ids=(new_value : Array(String)?)
      raise ArgumentError.new("\"transaction_ids\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @transaction_ids = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@stream_id, @transaction_ids)
  end
end
