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
  # Taxpayer ID of the individual receiving the paystub.
  class TaxpayerID
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Type of ID, e.g. 'SSN'
    @[JSON::Field(key: "id_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: id_type.nil? && !id_type_present?)]
    getter id_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? id_type_present : Bool = false

    # ID mask; i.e. last 4 digits of the taxpayer ID
    @[JSON::Field(key: "id_mask", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: id_mask.nil? && !id_mask_present?)]
    getter id_mask : String? = nil

    @[JSON::Field(ignore: true)]
    property? id_mask_present : Bool = false

    # Last 4 digits of unique number of ID.
    @[JSON::Field(key: "last_4_digits", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_4_digits.nil? && !last_4_digits_present?)]
    getter last_4_digits : String? = nil
    MAX_LENGTH_FOR_LAST_4_DIGITS = 4
    MIN_LENGTH_FOR_LAST_4_DIGITS = 4

    @[JSON::Field(ignore: true)]
    property? last_4_digits_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id_type : String? = nil,
      @id_mask : String? = nil,
      @last_4_digits : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_id_type = @id_type).nil?
      end
      unless (_id_mask = @id_mask).nil?
      end
      unless (_last_4_digits = @last_4_digits).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last_4_digits", _last_4_digits.to_s.size, MAX_LENGTH_FOR_LAST_4_DIGITS)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("last_4_digits", _last_4_digits.to_s.size, MIN_LENGTH_FOR_LAST_4_DIGITS)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_id_type = @id_type).nil?
      end

      unless (_id_mask = @id_mask).nil?
      end

      unless (_last_4_digits = @last_4_digits).nil?
        return false if _last_4_digits.to_s.size > MAX_LENGTH_FOR_LAST_4_DIGITS
        return false if _last_4_digits.to_s.size < MIN_LENGTH_FOR_LAST_4_DIGITS
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_type Object to be assigned
    def id_type=(new_value : String?)
      unless new_value.nil?
      end

      @id_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_mask Object to be assigned
    def id_mask=(new_value : String?)
      unless new_value.nil?
      end

      @id_mask = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_4_digits Object to be assigned
    def last_4_digits=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last_4_digits", new_value.to_s.size, MAX_LENGTH_FOR_LAST_4_DIGITS)
        OpenApi::PrimitiveValidator.validate_min_length("last_4_digits", new_value.to_s.size, MIN_LENGTH_FOR_LAST_4_DIGITS)
      end

      @last_4_digits = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id_type, @id_type_present, @id_mask, @id_mask_present, @last_4_digits, @last_4_digits_present)
  end
end
