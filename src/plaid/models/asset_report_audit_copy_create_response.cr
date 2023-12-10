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
  # AssetReportAuditCopyCreateResponse defines the response schema for `/asset_report/audit_copy/get`
  class AssetReportAuditCopyCreateResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A token that can be shared with a third party auditor to allow them to obtain access to the Asset Report. This token should be stored securely.
    @[JSON::Field(key: "audit_copy_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter audit_copy_token : String? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @audit_copy_token : String? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"audit_copy_token\" is required and cannot be null") if @audit_copy_token.nil?

      unless (_audit_copy_token = @audit_copy_token).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @audit_copy_token.nil?
      unless (_audit_copy_token = @audit_copy_token).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] audit_copy_token Object to be assigned
    def audit_copy_token=(new_value : String?)
      raise ArgumentError.new("\"audit_copy_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @audit_copy_token = new_value
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
    def_equals_and_hash(@audit_copy_token, @request_id)
  end
end