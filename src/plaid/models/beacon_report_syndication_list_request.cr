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
  # Request input for listing Beacon Report Syndications
  class BeaconReportSyndicationListRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated Beacon User.
    @[JSON::Field(key: "beacon_user_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter beacon_user_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # An identifier that determines which page of results you receive.
    @[JSON::Field(key: "cursor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cursor.nil? && !cursor_present?)]
    getter cursor : String? = nil

    @[JSON::Field(ignore: true)]
    property? cursor_present : Bool = false

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @beacon_user_id : String? = nil,
      # Optional properties
      @cursor : String? = nil,
      @client_id : String? = nil,
      @secret : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"beacon_user_id\" is required and cannot be null") if @beacon_user_id.nil?

      unless (_beacon_user_id = @beacon_user_id).nil?
      end
      unless (_cursor = @cursor).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @beacon_user_id.nil?
      unless (_beacon_user_id = @beacon_user_id).nil?
      end

      unless (_cursor = @cursor).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] beacon_user_id Object to be assigned
    def beacon_user_id=(new_value : String?)
      raise ArgumentError.new("\"beacon_user_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @beacon_user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cursor Object to be assigned
    def cursor=(new_value : String?)
      unless new_value.nil?
      end

      @cursor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_id Object to be assigned
    def client_id=(new_value : String?)
      unless new_value.nil?
      end

      @client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secret Object to be assigned
    def secret=(new_value : String?)
      unless new_value.nil?
      end

      @secret = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@beacon_user_id, @cursor, @cursor_present, @client_id, @secret)
  end
end
