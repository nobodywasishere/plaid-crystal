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
  # An optional set of options to be used when configuring the Item. If specified, must not be `null`.
  class SandboxProcessorTokenCreateRequestOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Test username to use for the creation of the Sandbox Item. Default value is `user_good`.
    @[JSON::Field(key: "override_username", type: String?, default: "user_good", required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: override_username.nil? && !override_username_present?)]
    getter override_username : String? = "user_good"

    @[JSON::Field(ignore: true)]
    property? override_username_present : Bool = false

    # Test password to use for the creation of the Sandbox Item. Default value is `pass_good`.
    @[JSON::Field(key: "override_password", type: String?, default: "pass_good", required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: override_password.nil? && !override_password_present?)]
    getter override_password : String? = "pass_good"

    @[JSON::Field(ignore: true)]
    property? override_password_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @override_username : String? = "user_good",
      @override_password : String? = "pass_good"
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_override_username = @override_username).nil?
      end
      unless (_override_password = @override_password).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_override_username = @override_username).nil?
      end

      unless (_override_password = @override_password).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] override_username Object to be assigned
    def override_username=(new_value : String?)
      unless new_value.nil?
      end

      @override_username = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] override_password Object to be assigned
    def override_password=(new_value : String?)
      unless new_value.nil?
      end

      @override_password = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@override_username, @override_username_present, @override_password, @override_password_present)
  end
end
