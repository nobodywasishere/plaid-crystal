#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_identity_match_score"
require "./item"

module Plaid
  # IdentityMatchResponse defines the response schema for `/identity/match`
  class IdentityMatchResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The accounts for which Identity match has been requested
    @[JSON::Field(key: "accounts", type: Array(Plaid::AccountIdentityMatchScore)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter accounts : Array(Plaid::AccountIdentityMatchScore)? = nil

    @[JSON::Field(key: "item", type: Item?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item : Item? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @accounts : Array(Plaid::AccountIdentityMatchScore)? = nil,
      @item : Item? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"accounts\" is required and cannot be null") if @accounts.nil?

      unless (_accounts = @accounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "accounts", container: _accounts)) if _accounts.is_a?(Array)
      end
      invalid_properties.push("\"item\" is required and cannot be null") if @item.nil?

      unless (_item = @item).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @accounts.nil?
      unless (_accounts = @accounts).nil?
        return false if _accounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _accounts)
      end

      return false if @item.nil?
      unless (_item = @item).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accounts Object to be assigned
    def accounts=(new_value : Array(Plaid::AccountIdentityMatchScore)?)
      raise ArgumentError.new("\"accounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @accounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item Object to be assigned
    def item=(new_value : Item?)
      raise ArgumentError.new("\"item\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @item = new_value
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
    def_equals_and_hash(@accounts, @item, @request_id)
  end
end