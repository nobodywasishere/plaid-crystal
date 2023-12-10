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
  # The details of a Link error.
  class CreditSessionError
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A broad categorization of the error.
    @[JSON::Field(key: "error_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter error_type : String? = nil

    # The particular error code.
    @[JSON::Field(key: "error_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter error_code : String? = nil

    # A developer-friendly representation of the error code.
    @[JSON::Field(key: "error_message", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter error_message : String? = nil

    # A user-friendly representation of the error code. `null` if the error is not related to user action.
    @[JSON::Field(key: "display_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: display_message.nil? && !display_message_present?)]
    getter display_message : String? = nil

    @[JSON::Field(ignore: true)]
    property? display_message_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @error_type : String? = nil,
      @error_code : String? = nil,
      @error_message : String? = nil,
      @display_message : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_error_type = @error_type).nil?
      end
      unless (_error_code = @error_code).nil?
      end
      unless (_error_message = @error_message).nil?
      end
      unless (_display_message = @display_message).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_error_type = @error_type).nil?
      end

      unless (_error_code = @error_code).nil?
      end

      unless (_error_message = @error_message).nil?
      end

      unless (_display_message = @display_message).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_type Object to be assigned
    def error_type=(new_value : String?)
      unless new_value.nil?
      end

      @error_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(new_value : String?)
      unless new_value.nil?
      end

      @error_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_message Object to be assigned
    def error_message=(new_value : String?)
      unless new_value.nil?
      end

      @error_message = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_message Object to be assigned
    def display_message=(new_value : String?)
      unless new_value.nil?
      end

      @display_message = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@error_type, @error_code, @error_message, @display_message, @display_message_present)
  end
end
