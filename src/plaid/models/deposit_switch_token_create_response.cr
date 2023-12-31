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
  # DepositSwitchTokenCreateResponse defines the response schema for `/deposit_switch/token/create`
  class DepositSwitchTokenCreateResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Deposit switch token, used to initialize Link for the Deposit Switch product
    @[JSON::Field(key: "deposit_switch_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter deposit_switch_token : String? = nil

    # Expiration time of the token, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format
    @[JSON::Field(key: "deposit_switch_token_expiration_time", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter deposit_switch_token_expiration_time : String? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @deposit_switch_token : String? = nil,
      @deposit_switch_token_expiration_time : String? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"deposit_switch_token\" is required and cannot be null") if @deposit_switch_token.nil?

      unless (_deposit_switch_token = @deposit_switch_token).nil?
      end
      invalid_properties.push("\"deposit_switch_token_expiration_time\" is required and cannot be null") if @deposit_switch_token_expiration_time.nil?

      unless (_deposit_switch_token_expiration_time = @deposit_switch_token_expiration_time).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @deposit_switch_token.nil?
      unless (_deposit_switch_token = @deposit_switch_token).nil?
      end

      return false if @deposit_switch_token_expiration_time.nil?
      unless (_deposit_switch_token_expiration_time = @deposit_switch_token_expiration_time).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deposit_switch_token Object to be assigned
    def deposit_switch_token=(new_value : String?)
      raise ArgumentError.new("\"deposit_switch_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @deposit_switch_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deposit_switch_token_expiration_time Object to be assigned
    def deposit_switch_token_expiration_time=(new_value : String?)
      raise ArgumentError.new("\"deposit_switch_token_expiration_time\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @deposit_switch_token_expiration_time = new_value
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
    def_equals_and_hash(@deposit_switch_token, @deposit_switch_token_expiration_time, @request_id)
  end
end
