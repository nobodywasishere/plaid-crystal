#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./document_date_of_birth_match_code"
require "./document_name_match_code"
require "./expiration_date"
require "./issuing_country"

module Plaid
  # Analysis of the data extracted from the submitted document.
  class PhysicalDocumentExtractedDataAnalysis
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "name", type: Plaid::DocumentNameMatchCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : Plaid::DocumentNameMatchCode? = nil

    @[JSON::Field(key: "date_of_birth", type: Plaid::DocumentDateOfBirthMatchCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter date_of_birth : Plaid::DocumentDateOfBirthMatchCode? = nil

    @[JSON::Field(key: "expiration_date", type: Plaid::ExpirationDate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter expiration_date : Plaid::ExpirationDate? = nil

    @[JSON::Field(key: "issuing_country", type: Plaid::IssuingCountry?, default: nil, required: true, nullable: false, emit_null: false)]
    getter issuing_country : Plaid::IssuingCountry? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : Plaid::DocumentNameMatchCode? = nil,
      @date_of_birth : Plaid::DocumentDateOfBirthMatchCode? = nil,
      @expiration_date : Plaid::ExpirationDate? = nil,
      @issuing_country : Plaid::IssuingCountry? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        invalid_properties.push(_name.error_message) if !_name.valid?
      end
      invalid_properties.push("\"date_of_birth\" is required and cannot be null") if @date_of_birth.nil?

      unless (_date_of_birth = @date_of_birth).nil?
        invalid_properties.push(_date_of_birth.error_message) if !_date_of_birth.valid?
      end
      invalid_properties.push("\"expiration_date\" is required and cannot be null") if @expiration_date.nil?

      unless (_expiration_date = @expiration_date).nil?
        invalid_properties.push(_expiration_date.error_message) if !_expiration_date.valid?
      end
      invalid_properties.push("\"issuing_country\" is required and cannot be null") if @issuing_country.nil?

      unless (_issuing_country = @issuing_country).nil?
        invalid_properties.push(_issuing_country.error_message) if !_issuing_country.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @name.nil?
      unless (_name = @name).nil?
        return false if !_name.valid?
      end

      return false if @date_of_birth.nil?
      unless (_date_of_birth = @date_of_birth).nil?
        return false if !_date_of_birth.valid?
      end

      return false if @expiration_date.nil?
      unless (_expiration_date = @expiration_date).nil?
        return false if !_expiration_date.valid?
      end

      return false if @issuing_country.nil?
      unless (_issuing_country = @issuing_country).nil?
        return false if !_issuing_country.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : Plaid::DocumentNameMatchCode?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_of_birth Object to be assigned
    def date_of_birth=(new_value : Plaid::DocumentDateOfBirthMatchCode?)
      raise ArgumentError.new("\"date_of_birth\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @date_of_birth = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expiration_date Object to be assigned
    def expiration_date=(new_value : Plaid::ExpirationDate?)
      raise ArgumentError.new("\"expiration_date\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @expiration_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_country Object to be assigned
    def issuing_country=(new_value : Plaid::IssuingCountry?)
      raise ArgumentError.new("\"issuing_country\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @issuing_country = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @date_of_birth, @expiration_date, @issuing_country)
  end
end