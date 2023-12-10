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
  # Location information for the associated individual watchlist hit
  class WatchlistScreeningHitLocations
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The full location string, potentially including elements like street, city, postal codes and country codes. Note that this is not necessarily a complete or well-formatted address.
    @[JSON::Field(key: "full", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter full : String? = nil

    # Valid, capitalized, two-letter ISO code representing the country of this object. Must be in ISO 3166-1 alpha-2 form.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MIN_LENGTH_FOR_COUNTRY = 2

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @full : String? = nil,
      @country : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"full\" is required and cannot be null") if @full.nil?

      unless (_full = @full).nil?
      end
      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("country", _country.to_s.size, MIN_LENGTH_FOR_COUNTRY)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @full.nil?
      unless (_full = @full).nil?
      end

      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size < MIN_LENGTH_FOR_COUNTRY
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] full Object to be assigned
    def full=(new_value : String?)
      raise ArgumentError.new("\"full\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @full = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@full, @country)
  end
end