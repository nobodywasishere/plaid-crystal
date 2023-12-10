#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./wallet"

module Plaid
  # WalletListResponse defines the response schema for `/wallet/list`
  class WalletListResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # An array of e-wallets
    @[JSON::Field(key: "wallets", type: Array(Wallet)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter wallets : Array(Wallet)? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # Cursor used for fetching e-wallets created before the latest e-wallet provided in this response
    @[JSON::Field(key: "next_cursor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter next_cursor : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @wallets : Array(Wallet)? = nil,
      @request_id : String? = nil,
      # Optional properties
      @next_cursor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"wallets\" is required and cannot be null") if @wallets.nil?

      unless (_wallets = @wallets).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      unless (_next_cursor = @next_cursor).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @wallets.nil?
      unless (_wallets = @wallets).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      unless (_next_cursor = @next_cursor).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallets Object to be assigned
    def wallets=(new_value : Array(Wallet)?)
      raise ArgumentError.new("\"wallets\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @wallets = new_value
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
    # @param [Object] next_cursor Object to be assigned
    def next_cursor=(new_value : String?)
      unless new_value.nil?
      end

      @next_cursor = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@wallets, @request_id, @next_cursor)
  end
end