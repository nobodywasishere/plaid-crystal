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
  # Details about the status of the payroll item.
  class PayrollItemStatus
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Denotes the processing status for the verification.  `UNKNOWN`: The processing status could not be determined.  `PROCESSING_COMPLETE`: The processing has completed and the user has approved for sharing. The data is available to be retrieved.  `PROCESSING`: The verification is still processing. The data is not available yet.  `FAILED`: The processing failed to complete successfully.  `APPROVAL_STATUS_PENDING`: The processing has completed but the user has not yet approved the sharing of the data.
    @[JSON::Field(key: "processing_status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: processing_status.nil? && !processing_status_present?)]
    getter processing_status : String? = nil

    @[JSON::Field(ignore: true)]
    property? processing_status_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @processing_status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_processing_status = @processing_status).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_processing_status = @processing_status).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] processing_status Object to be assigned
    def processing_status=(new_value : String?)
      unless new_value.nil?
      end

      @processing_status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@processing_status, @processing_status_present)
  end
end
