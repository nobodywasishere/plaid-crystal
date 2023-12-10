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
  # Request input for fetching an entity watchlist program
  class WatchlistScreeningEntityProgramGetRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated entity program.
    @[JSON::Field(key: "entity_watchlist_program_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter entity_watchlist_program_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @entity_watchlist_program_id : String? = nil,
      # Optional properties
      @secret : String? = nil,
      @client_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"entity_watchlist_program_id\" is required and cannot be null") if @entity_watchlist_program_id.nil?

      unless (_entity_watchlist_program_id = @entity_watchlist_program_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @entity_watchlist_program_id.nil?
      unless (_entity_watchlist_program_id = @entity_watchlist_program_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_watchlist_program_id Object to be assigned
    def entity_watchlist_program_id=(new_value : String?)
      raise ArgumentError.new("\"entity_watchlist_program_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @entity_watchlist_program_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secret Object to be assigned
    def secret=(new_value : String?)
      unless new_value.nil?
      end

      @secret = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_id Object to be assigned
    def client_id=(new_value : String?)
      unless new_value.nil?
      end

      @client_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@entity_watchlist_program_id, @secret, @client_id)
  end
end
