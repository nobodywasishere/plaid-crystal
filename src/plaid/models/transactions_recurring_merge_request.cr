#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transactions_recurring_merge_input"

module Plaid
  # TransactionsRecurringMergeRequest defined the request schema for `/transactions/recurring/streams/merge` endpoint.
  class TransactionsRecurringMergeRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The access token associated with the Item data is being requested for.
    @[JSON::Field(key: "access_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter access_token : String? = nil

    # A list of all the operations to be performed. This will either all succeed or all fail.
    @[JSON::Field(key: "inputs", type: Array(Plaid::TransactionsRecurringMergeInput)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter inputs : Array(Plaid::TransactionsRecurringMergeInput)? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @access_token : String? = nil,
      @inputs : Array(Plaid::TransactionsRecurringMergeInput)? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"access_token\" is required and cannot be null") if @access_token.nil?

      unless (_access_token = @access_token).nil?
      end
      invalid_properties.push("\"inputs\" is required and cannot be null") if @inputs.nil?

      unless (_inputs = @inputs).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "inputs", container: _inputs)) if _inputs.is_a?(Array)
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @access_token.nil?
      unless (_access_token = @access_token).nil?
      end

      return false if @inputs.nil?
      unless (_inputs = @inputs).nil?
        return false if _inputs.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _inputs)
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access_token Object to be assigned
    def access_token=(new_value : String?)
      raise ArgumentError.new("\"access_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @access_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inputs Object to be assigned
    def inputs=(new_value : Array(Plaid::TransactionsRecurringMergeInput)?)
      raise ArgumentError.new("\"inputs\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @inputs = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_id Object to be assigned
    def client_id=(new_value : String?)
      unless new_value.nil?
      end

      @client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secret Object to be assigned
    def secret=(new_value : String?)
      unless new_value.nil?
      end

      @secret = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@access_token, @inputs, @client_id, @secret)
  end
end
