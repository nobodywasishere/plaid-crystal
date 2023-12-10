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
  # Information about the student's eligibility in the Public Service Loan Forgiveness program. This is only returned if the institution is FedLoan (`ins_116527`).
  class PSLFStatus
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The estimated date borrower will have completed 120 qualifying monthly payments. Returned in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (YYYY-MM-DD).
    @[JSON::Field(key: "estimated_eligibility_date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter estimated_eligibility_date : Time? = nil

    # The number of qualifying payments that have been made.
    @[JSON::Field(key: "payments_made", type: Int32?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payments_made : Int32? = nil

    # The number of qualifying payments remaining.
    @[JSON::Field(key: "payments_remaining", type: Int32?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payments_remaining : Int32? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @estimated_eligibility_date : Time? = nil,
      @payments_made : Int32? = nil,
      @payments_remaining : Int32? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_estimated_eligibility_date = @estimated_eligibility_date).nil?
      end
      unless (_payments_made = @payments_made).nil?
      end
      unless (_payments_remaining = @payments_remaining).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_estimated_eligibility_date = @estimated_eligibility_date).nil?
      end

      unless (_payments_made = @payments_made).nil?
      end

      unless (_payments_remaining = @payments_remaining).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] estimated_eligibility_date Object to be assigned
    def estimated_eligibility_date=(new_value : Time?)
      unless new_value.nil?
      end

      @estimated_eligibility_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payments_made Object to be assigned
    def payments_made=(new_value : Int32?)
      unless new_value.nil?
      end

      @payments_made = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payments_remaining Object to be assigned
    def payments_remaining=(new_value : Int32?)
      unless new_value.nil?
      end

      @payments_remaining = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@estimated_eligibility_date, @payments_made, @payments_remaining)
  end
end