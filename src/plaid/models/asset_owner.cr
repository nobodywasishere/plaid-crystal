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
  # Documentation not found in the MISMO model viewer and not provided by Freddie Mac.
  class AssetOwner
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Account Owner Full Name.
    @[JSON::Field(key: "AssetOwnerText", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter asset_owner_text : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @asset_owner_text : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_asset_owner_text = @asset_owner_text).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_asset_owner_text = @asset_owner_text).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_owner_text Object to be assigned
    def asset_owner_text=(new_value : String?)
      unless new_value.nil?
      end

      @asset_owner_text = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@asset_owner_text)
  end
end
