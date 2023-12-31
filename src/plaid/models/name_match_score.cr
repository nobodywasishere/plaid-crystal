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
  # Score found by matching name provided by the API with the name on the account at the financial institution. If the account contains multiple owners, the maximum match score is filled.
  class NameMatchScore
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Match score for name. 100 is a perfect score, 99-85 means a strong match, 84-70 is a partial match, any score less than 70 is a mismatch. Typically, the match threshold should be set to a score of 70 or higher. If the name is missing from either the API or financial institution, this is null.
    @[JSON::Field(key: "score", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: score.nil? && !score_present?)]
    getter score : Int32? = nil

    @[JSON::Field(ignore: true)]
    property? score_present : Bool = false

    # first or last name completely matched, likely a family member
    @[JSON::Field(key: "is_first_name_or_last_name_match", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: is_first_name_or_last_name_match.nil? && !is_first_name_or_last_name_match_present?)]
    getter is_first_name_or_last_name_match : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? is_first_name_or_last_name_match_present : Bool = false

    # nickname matched, example Jennifer and Jenn.
    @[JSON::Field(key: "is_nickname_match", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: is_nickname_match.nil? && !is_nickname_match_present?)]
    getter is_nickname_match : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? is_nickname_match_present : Bool = false

    # Is `true` if the name on either of the names that was matched for the score contained strings indicative of a business name, such as \"CORP\", \"LLC\", \"INC\", or \"LTD\". A `true` result generally indicates the entity is a business. However, a `false` result does not mean the entity is not a business, as some businesses do not use these strings in the names used for their financial institution accounts.
    @[JSON::Field(key: "is_business_name_detected", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: is_business_name_detected.nil? && !is_business_name_detected_present?)]
    getter is_business_name_detected : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? is_business_name_detected_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @score : Int32? = nil,
      @is_first_name_or_last_name_match : Bool? = nil,
      @is_nickname_match : Bool? = nil,
      @is_business_name_detected : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_score = @score).nil?
      end
      unless (_is_first_name_or_last_name_match = @is_first_name_or_last_name_match).nil?
      end
      unless (_is_nickname_match = @is_nickname_match).nil?
      end
      unless (_is_business_name_detected = @is_business_name_detected).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_score = @score).nil?
      end

      unless (_is_first_name_or_last_name_match = @is_first_name_or_last_name_match).nil?
      end

      unless (_is_nickname_match = @is_nickname_match).nil?
      end

      unless (_is_business_name_detected = @is_business_name_detected).nil?
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_first_name_or_last_name_match Object to be assigned
    def is_first_name_or_last_name_match=(new_value : Bool?)
      unless new_value.nil?
      end

      @is_first_name_or_last_name_match = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_nickname_match Object to be assigned
    def is_nickname_match=(new_value : Bool?)
      unless new_value.nil?
      end

      @is_nickname_match = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_business_name_detected Object to be assigned
    def is_business_name_detected=(new_value : Bool?)
      unless new_value.nil?
      end

      @is_business_name_detected = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@score, @score_present, @is_first_name_or_last_name_match, @is_first_name_or_last_name_match_present, @is_nickname_match, @is_nickname_match_present, @is_business_name_detected, @is_business_name_detected_present)
  end
end
