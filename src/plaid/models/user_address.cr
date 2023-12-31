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
  # Home address for the user. For more context on this field, see [Input Validation by Country](https://plaid.com/docs/identity-verification/hybrid-input-validation/#input-validation-by-country).
  class UserAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The primary street portion of an address. If the user has submitted their address, this field will always be filled.
    @[JSON::Field(key: "street", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter street : String? = nil

    # City from the end user's address
    @[JSON::Field(key: "city", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter city : String? = nil

    # Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MIN_LENGTH_FOR_COUNTRY = 2

    # End of Required Properties

    # Optional Properties

    # Extra street information, like an apartment or suite number.
    @[JSON::Field(key: "street2", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: street2.nil? && !street2_present?)]
    getter street2 : String? = nil

    @[JSON::Field(ignore: true)]
    property? street2_present : Bool = false

    # An ISO 3166-2 subdivision code. Related terms would be \"state\", \"province\", \"prefecture\", \"zone\", \"subdivision\", etc.
    @[JSON::Field(key: "region", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: region.nil? && !region_present?)]
    getter region : String? = nil

    @[JSON::Field(ignore: true)]
    property? region_present : Bool = false

    # The postal code for the associated address. Between 2 and 10 alphanumeric characters. For US-based addresses this must be 5 numeric digits.
    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: postal_code.nil? && !postal_code_present?)]
    getter postal_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? postal_code_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @street : String? = nil,
      @city : String? = nil,
      @country : String? = nil,
      # Optional properties
      @street2 : String? = nil,
      @region : String? = nil,
      @postal_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"street\" is required and cannot be null") if @street.nil?

      unless (_street = @street).nil?
      end
      invalid_properties.push("\"city\" is required and cannot be null") if @city.nil?

      unless (_city = @city).nil?
      end
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("country", _country.to_s.size, MIN_LENGTH_FOR_COUNTRY)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_street2 = @street2).nil?
      end
      unless (_region = @region).nil?
      end
      unless (_postal_code = @postal_code).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @street.nil?
      unless (_street = @street).nil?
      end

      return false if @city.nil?
      unless (_city = @city).nil?
      end

      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size < MIN_LENGTH_FOR_COUNTRY
      end

      unless (_street2 = @street2).nil?
      end

      unless (_region = @region).nil?
      end

      unless (_postal_code = @postal_code).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] street Object to be assigned
    def street=(new_value : String?)
      raise ArgumentError.new("\"street\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @street = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] city Object to be assigned
    def city=(new_value : String?)
      raise ArgumentError.new("\"city\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @city = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      raise ArgumentError.new("\"country\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("country", new_value.to_s.size, MIN_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] street2 Object to be assigned
    def street2=(new_value : String?)
      unless new_value.nil?
      end

      @street2 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(new_value : String?)
      unless new_value.nil?
      end

      @region = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postal_code Object to be assigned
    def postal_code=(new_value : String?)
      unless new_value.nil?
      end

      @postal_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@street, @city, @country, @street2, @street2_present, @region, @region_present, @postal_code, @postal_code_present)
  end
end
