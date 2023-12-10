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
  # ItemPublicTokenCreateResponse defines the response schema for `/item/public_token/create`
  class ItemPublicTokenCreateResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A `public_token` for the particular Item corresponding to the specified `access_token`
    @[JSON::Field(key: "public_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter public_token : String? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "expiration", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter expiration : Time? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @public_token : String? = nil,
      @request_id : String? = nil,
      # Optional properties
      @expiration : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"public_token\" is required and cannot be null") if @public_token.nil?

      unless (_public_token = @public_token).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      unless (_expiration = @expiration).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @public_token.nil?
      unless (_public_token = @public_token).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      unless (_expiration = @expiration).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] public_token Object to be assigned
    def public_token=(new_value : String?)
      raise ArgumentError.new("\"public_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @public_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiration Object to be assigned
    def expiration=(new_value : Time?)
      unless new_value.nil?
      end

      @expiration = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@public_token, @request_id, @expiration)
  end
end
