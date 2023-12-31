#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./entity_screening_hit_urls"
require "./match_summary"

module Plaid
  # Analyzed URLs for the associated hit
  class EntityScreeningHitUrlsItems
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "analysis", type: MatchSummary?, default: nil, required: false, nullable: false, emit_null: false)]
    getter analysis : MatchSummary? = nil

    @[JSON::Field(key: "data", type: EntityScreeningHitUrls?, default: nil, required: false, nullable: false, emit_null: false)]
    getter data : EntityScreeningHitUrls? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @analysis : MatchSummary? = nil,
      @data : EntityScreeningHitUrls? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_analysis = @analysis).nil?
      end
      unless (_data = @data).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_analysis = @analysis).nil?
      end

      unless (_data = @data).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] analysis Object to be assigned
    def analysis=(new_value : MatchSummary?)
      unless new_value.nil?
      end

      @analysis = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(new_value : EntityScreeningHitUrls?)
      unless new_value.nil?
      end

      @data = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@analysis, @data)
  end
end
