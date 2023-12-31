#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./generic_screening_hit_location_items"
require "./screening_hit_date_of_birth_item"
require "./screening_hit_documents_items"
require "./screening_hit_names_items"

module Plaid
  # Information associated with the watchlist hit
  class ScreeningHitData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Dates of birth associated with the watchlist hit
    @[JSON::Field(key: "dates_of_birth", type: Array(ScreeningHitDateOfBirthItem)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dates_of_birth : Array(ScreeningHitDateOfBirthItem)? = nil

    # Documents associated with the watchlist hit
    @[JSON::Field(key: "documents", type: Array(ScreeningHitDocumentsItems)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter documents : Array(ScreeningHitDocumentsItems)? = nil

    # Locations associated with the watchlist hit
    @[JSON::Field(key: "locations", type: Array(GenericScreeningHitLocationItems)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter locations : Array(GenericScreeningHitLocationItems)? = nil

    # Names associated with the watchlist hit
    @[JSON::Field(key: "names", type: Array(ScreeningHitNamesItems)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter names : Array(ScreeningHitNamesItems)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @dates_of_birth : Array(ScreeningHitDateOfBirthItem)? = nil,
      @documents : Array(ScreeningHitDocumentsItems)? = nil,
      @locations : Array(GenericScreeningHitLocationItems)? = nil,
      @names : Array(ScreeningHitNamesItems)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_dates_of_birth = @dates_of_birth).nil?
      end
      unless (_documents = @documents).nil?
      end
      unless (_locations = @locations).nil?
      end
      unless (_names = @names).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_dates_of_birth = @dates_of_birth).nil?
      end

      unless (_documents = @documents).nil?
      end

      unless (_locations = @locations).nil?
      end

      unless (_names = @names).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dates_of_birth Object to be assigned
    def dates_of_birth=(new_value : Array(ScreeningHitDateOfBirthItem)?)
      unless new_value.nil?
      end

      @dates_of_birth = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(new_value : Array(ScreeningHitDocumentsItems)?)
      unless new_value.nil?
      end

      @documents = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] locations Object to be assigned
    def locations=(new_value : Array(GenericScreeningHitLocationItems)?)
      unless new_value.nil?
      end

      @locations = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] names Object to be assigned
    def names=(new_value : Array(ScreeningHitNamesItems)?)
      unless new_value.nil?
      end

      @names = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@dates_of_birth, @documents, @locations, @names)
  end
end
