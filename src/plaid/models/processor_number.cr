#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./numbers_ach_nullable"
require "./numbers_bacs_nullable"
require "./numbers_eft_nullable"
require "./numbers_international_nullable"

module Plaid
  # An object containing identifying numbers used for making electronic transfers to and from the `account`. The identifying number type (ACH, EFT, IBAN, or BACS) used will depend on the country of the account. An account may have more than one number type. If a particular identifying number type is not used by the `account` for which auth data has been requested, a null value will be returned.
  class ProcessorNumber
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "ach", type: Plaid::NumbersACHNullable?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ach.nil? && !ach_present?)]
    getter ach : Plaid::NumbersACHNullable? = nil

    @[JSON::Field(ignore: true)]
    property? ach_present : Bool = false

    @[JSON::Field(key: "eft", type: Plaid::NumbersEFTNullable?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: eft.nil? && !eft_present?)]
    getter eft : Plaid::NumbersEFTNullable? = nil

    @[JSON::Field(ignore: true)]
    property? eft_present : Bool = false

    @[JSON::Field(key: "international", type: Plaid::NumbersInternationalNullable?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: international.nil? && !international_present?)]
    getter international : Plaid::NumbersInternationalNullable? = nil

    @[JSON::Field(ignore: true)]
    property? international_present : Bool = false

    @[JSON::Field(key: "bacs", type: Plaid::NumbersBACSNullable?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bacs.nil? && !bacs_present?)]
    getter bacs : Plaid::NumbersBACSNullable? = nil

    @[JSON::Field(ignore: true)]
    property? bacs_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @ach : Plaid::NumbersACHNullable? = nil,
      @eft : Plaid::NumbersEFTNullable? = nil,
      @international : Plaid::NumbersInternationalNullable? = nil,
      @bacs : Plaid::NumbersBACSNullable? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_ach = @ach).nil?
        invalid_properties.concat(_ach.list_invalid_properties_for("ach")) if _ach.is_a?(OpenApi::Validatable)
      end
      unless (_eft = @eft).nil?
        invalid_properties.concat(_eft.list_invalid_properties_for("eft")) if _eft.is_a?(OpenApi::Validatable)
      end
      unless (_international = @international).nil?
        invalid_properties.concat(_international.list_invalid_properties_for("international")) if _international.is_a?(OpenApi::Validatable)
      end
      unless (_bacs = @bacs).nil?
        invalid_properties.concat(_bacs.list_invalid_properties_for("bacs")) if _bacs.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_ach = @ach).nil?
        return false if _ach.is_a?(OpenApi::Validatable) && !_ach.valid?
      end

      unless (_eft = @eft).nil?
        return false if _eft.is_a?(OpenApi::Validatable) && !_eft.valid?
      end

      unless (_international = @international).nil?
        return false if _international.is_a?(OpenApi::Validatable) && !_international.valid?
      end

      unless (_bacs = @bacs).nil?
        return false if _bacs.is_a?(OpenApi::Validatable) && !_bacs.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ach Object to be assigned
    def ach=(new_value : Plaid::NumbersACHNullable?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @ach = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eft Object to be assigned
    def eft=(new_value : Plaid::NumbersEFTNullable?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @eft = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] international Object to be assigned
    def international=(new_value : Plaid::NumbersInternationalNullable?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @international = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs Object to be assigned
    def bacs=(new_value : Plaid::NumbersBACSNullable?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bacs = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@ach, @ach_present, @eft, @eft_present, @international, @international_present, @bacs, @bacs_present)
  end
end
