#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_session_exit_metadata"
require "./plaid_error"

module Plaid
  # An object representing an [onExit](https://plaid.com/docs/link/web/#onexit) callback from Link.
  class LinkSessionExit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "error", type: PlaidError?, default: nil, required: true, nullable: true, emit_null: true)]
    getter error : PlaidError? = nil

    @[JSON::Field(key: "metadata", type: Plaid::LinkSessionExitMetadata?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Plaid::LinkSessionExitMetadata? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @error : PlaidError? = nil,
      @metadata : Plaid::LinkSessionExitMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_error = @error).nil?
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_error = @error).nil?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(new_value : PlaidError?)
      unless new_value.nil?
      end

      @error = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Plaid::LinkSessionExitMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@error, @metadata)
  end
end