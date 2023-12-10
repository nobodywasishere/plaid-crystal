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
  # User authentication parameters, for clients making a request without an `access_token`. This is only allowed for select clients and will not be supported in the future. Most clients should call /item/import to obtain an access token before making a request.
  class ItemApplicationListUserAuth
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Account username.
    @[JSON::Field(key: "user_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: user_id.nil? && !user_id_present?)]
    getter user_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? user_id_present : Bool = false

    # Account username hashed by FI.
    @[JSON::Field(key: "fi_username_hash", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fi_username_hash.nil? && !fi_username_hash_present?)]
    getter fi_username_hash : String? = nil

    @[JSON::Field(ignore: true)]
    property? fi_username_hash_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @user_id : String? = nil,
      @fi_username_hash : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_user_id = @user_id).nil?
      end
      unless (_fi_username_hash = @fi_username_hash).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_user_id = @user_id).nil?
      end

      unless (_fi_username_hash = @fi_username_hash).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_id Object to be assigned
    def user_id=(new_value : String?)
      unless new_value.nil?
      end

      @user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fi_username_hash Object to be assigned
    def fi_username_hash=(new_value : String?)
      unless new_value.nil?
      end

      @fi_username_hash = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@user_id, @user_id_present, @fi_username_hash, @fi_username_hash_present)
  end
end