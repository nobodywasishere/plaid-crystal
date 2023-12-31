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
  # Object of user ID and auth token pair, permitting Plaid to aggregate a user’s accounts
  class ItemImportRequestUserAuth
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Opaque user identifier
    @[JSON::Field(key: "user_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user_id : String? = nil

    # Authorization token Plaid will use to aggregate this user’s accounts
    @[JSON::Field(key: "auth_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter auth_token : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @user_id : String? = nil,
      @auth_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"user_id\" is required and cannot be null") if @user_id.nil?

      unless (_user_id = @user_id).nil?
      end
      invalid_properties.push("\"auth_token\" is required and cannot be null") if @auth_token.nil?

      unless (_auth_token = @auth_token).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @user_id.nil?
      unless (_user_id = @user_id).nil?
      end

      return false if @auth_token.nil?
      unless (_auth_token = @auth_token).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_id Object to be assigned
    def user_id=(new_value : String?)
      raise ArgumentError.new("\"user_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_token Object to be assigned
    def auth_token=(new_value : String?)
      raise ArgumentError.new("\"auth_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @auth_token = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@user_id, @auth_token)
  end
end
