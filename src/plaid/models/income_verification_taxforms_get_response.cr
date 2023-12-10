#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./document_metadata"
require "./plaid_error"
require "./taxform"

module Plaid
  # IncomeVerificationTaxformsGetResponse defines the response schema for `/income/verification/taxforms/get`
  class IncomeVerificationTaxformsGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "document_metadata", type: Array(DocumentMetadata)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter document_metadata : Array(DocumentMetadata)? = nil

    # A list of forms.
    @[JSON::Field(key: "taxforms", type: Array(Taxform)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter taxforms : Array(Taxform)? = nil

    # End of Required Properties

    # Optional Properties

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    @[JSON::Field(key: "error", type: PlaidError?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error.nil? && !error_present?)]
    getter error : PlaidError? = nil

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @document_metadata : Array(DocumentMetadata)? = nil,
      @taxforms : Array(Taxform)? = nil,
      # Optional properties
      @request_id : String? = nil,
      @error : PlaidError? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"document_metadata\" is required and cannot be null") if @document_metadata.nil?

      unless (_document_metadata = @document_metadata).nil?
      end
      invalid_properties.push("\"taxforms\" is required and cannot be null") if @taxforms.nil?

      unless (_taxforms = @taxforms).nil?
      end
      unless (_request_id = @request_id).nil?
      end
      unless (_error = @error).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @document_metadata.nil?
      unless (_document_metadata = @document_metadata).nil?
      end

      return false if @taxforms.nil?
      unless (_taxforms = @taxforms).nil?
      end

      unless (_request_id = @request_id).nil?
      end

      unless (_error = @error).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_metadata Object to be assigned
    def document_metadata=(new_value : Array(DocumentMetadata)?)
      raise ArgumentError.new("\"document_metadata\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @document_metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxforms Object to be assigned
    def taxforms=(new_value : Array(Taxform)?)
      raise ArgumentError.new("\"taxforms\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @taxforms = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(new_value : PlaidError?)
      unless new_value.nil?
      end

      @error = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@document_metadata, @taxforms, @request_id, @error, @error_present)
  end
end
