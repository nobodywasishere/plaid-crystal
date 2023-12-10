#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./documentary_verification_document"

module Plaid
  # Data, images, analysis, and results from the `documentary_verification` step. This field will be `null` unless `steps.documentary_verification` has reached a terminal state of either `success` or `failed`.
  class DocumentaryVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The outcome status for the associated Identity Verification attempt's `documentary_verification` step. This field will always have the same value as `steps.documentary_verification`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # An array of documents submitted to the `documentary_verification` step. Each entry represents one user submission, where each submission will contain both a front and back image, or just a front image, depending on the document type.  Note: Plaid will automatically let a user submit a new set of document images up to three times if we detect that a previous attempt might have failed due to user error. For example, if the first set of document images are blurry or obscured by glare, the user will be asked to capture their documents again, resulting in at least two separate entries within `documents`. If the overall `documentary_verification` is `failed`, the user has exhausted their retry attempts.
    @[JSON::Field(key: "documents", type: Array(DocumentaryVerificationDocument)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter documents : Array(DocumentaryVerificationDocument)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      @documents : Array(DocumentaryVerificationDocument)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
      end
      invalid_properties.push("\"documents\" is required and cannot be null") if @documents.nil?

      unless (_documents = @documents).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @status.nil?
      unless (_status = @status).nil?
      end

      return false if @documents.nil?
      unless (_documents = @documents).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(new_value : Array(DocumentaryVerificationDocument)?)
      raise ArgumentError.new("\"documents\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @documents = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @documents)
  end
end