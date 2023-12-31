#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./removed_transaction"
require "./transaction"

module Plaid
  # ProcessorTransactionsSyncResponse defines the response schema for `/processor/transactions/sync`
  class ProcessorTransactionsSyncResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Transactions that have been added to the Item since `cursor` ordered by ascending last modified time.
    @[JSON::Field(key: "added", type: Array(Plaid::Transaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter added : Array(Plaid::Transaction)? = nil

    # Transactions that have been modified on the Item since `cursor` ordered by ascending last modified time.
    @[JSON::Field(key: "modified", type: Array(Plaid::Transaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter modified : Array(Plaid::Transaction)? = nil

    # Transactions that have been removed from the Item since `cursor` ordered by ascending last modified time.
    @[JSON::Field(key: "removed", type: Array(Plaid::RemovedTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter removed : Array(Plaid::RemovedTransaction)? = nil

    # Cursor used for fetching any future updates after the latest update provided in this response. The cursor obtained after all pages have been pulled (indicated by `has_more` being `false`) will be valid for at least 1 year. This cursor should be persisted for later calls. If transactions are not yet available, this will be an empty string.
    @[JSON::Field(key: "next_cursor", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter next_cursor : String? = nil

    # Represents if more than requested count of transaction updates exist. If true, the additional updates can be fetched by making an additional request with `cursor` set to `next_cursor`. If `has_more` is true, it’s important to pull all available pages, to make it less likely for underlying data changes to conflict with pagination.
    @[JSON::Field(key: "has_more", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter has_more : Bool? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @added : Array(Plaid::Transaction)? = nil,
      @modified : Array(Plaid::Transaction)? = nil,
      @removed : Array(Plaid::RemovedTransaction)? = nil,
      @next_cursor : String? = nil,
      @has_more : Bool? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"added\" is required and cannot be null") if @added.nil?

      unless (_added = @added).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "added", container: _added)) if _added.is_a?(Array)
      end
      invalid_properties.push("\"modified\" is required and cannot be null") if @modified.nil?

      unless (_modified = @modified).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "modified", container: _modified)) if _modified.is_a?(Array)
      end
      invalid_properties.push("\"removed\" is required and cannot be null") if @removed.nil?

      unless (_removed = @removed).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "removed", container: _removed)) if _removed.is_a?(Array)
      end
      invalid_properties.push("\"next_cursor\" is required and cannot be null") if @next_cursor.nil?

      unless (_next_cursor = @next_cursor).nil?
      end
      invalid_properties.push("\"has_more\" is required and cannot be null") if @has_more.nil?

      unless (_has_more = @has_more).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @added.nil?
      unless (_added = @added).nil?
        return false if _added.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _added)
      end

      return false if @modified.nil?
      unless (_modified = @modified).nil?
        return false if _modified.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _modified)
      end

      return false if @removed.nil?
      unless (_removed = @removed).nil?
        return false if _removed.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _removed)
      end

      return false if @next_cursor.nil?
      unless (_next_cursor = @next_cursor).nil?
      end

      return false if @has_more.nil?
      unless (_has_more = @has_more).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] added Object to be assigned
    def added=(new_value : Array(Plaid::Transaction)?)
      raise ArgumentError.new("\"added\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @added = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] modified Object to be assigned
    def modified=(new_value : Array(Plaid::Transaction)?)
      raise ArgumentError.new("\"modified\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @modified = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] removed Object to be assigned
    def removed=(new_value : Array(Plaid::RemovedTransaction)?)
      raise ArgumentError.new("\"removed\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @removed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_cursor Object to be assigned
    def next_cursor=(new_value : String?)
      raise ArgumentError.new("\"next_cursor\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @next_cursor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_more Object to be assigned
    def has_more=(new_value : Bool?)
      raise ArgumentError.new("\"has_more\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @has_more = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@added, @modified, @removed, @next_cursor, @has_more, @request_id)
  end
end
