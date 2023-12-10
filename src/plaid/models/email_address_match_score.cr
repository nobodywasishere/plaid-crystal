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
  # Score found by matching email provided by the API with the email on the account at the financial institution. 100 is a perfect match and 0 is a no match. If the account contains multiple owners, the maximum match score is filled.
  class EmailAddressMatchScore
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Match score for normalized email. 100 is a perfect match, 99-70 is a partial match (matching the same email with different '+' extensions), anything below 70 is considered a mismatch. Typically, the match threshold should be set to a score of 70 or higher. If the email is missing from either the API or financial institution, this is null.
    @[JSON::Field(key: "score", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: score.nil? && !score_present?)]
    getter score : Int32? = nil

    @[JSON::Field(ignore: true)]
    property? score_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @score : Int32? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_score = @score).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_score = @score).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] score Object to be assigned
    def score=(new_value : Int32?)
      unless new_value.nil?
      end

      @score = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@score, @score_present)
  end
end
