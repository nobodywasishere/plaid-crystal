#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./selfie_analysis_document_comparison"

module Plaid
  # High level descriptions of how the associated selfie was processed. If a selfie fails verification, the details in the `analysis` object should help clarify why the selfie was rejected.
  class SelfieAnalysis
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "document_comparison", type: Plaid::SelfieAnalysisDocumentComparison?, default: nil, required: true, nullable: false, emit_null: false)]
    getter document_comparison : Plaid::SelfieAnalysisDocumentComparison? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @document_comparison : Plaid::SelfieAnalysisDocumentComparison? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"document_comparison\" is required and cannot be null") if @document_comparison.nil?

      unless (_document_comparison = @document_comparison).nil?
        invalid_properties.push(_document_comparison.error_message) if !_document_comparison.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @document_comparison.nil?
      unless (_document_comparison = @document_comparison).nil?
        return false if !_document_comparison.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_comparison Object to be assigned
    def document_comparison=(new_value : Plaid::SelfieAnalysisDocumentComparison?)
      raise ArgumentError.new("\"document_comparison\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @document_comparison = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@document_comparison)
  end
end