#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./watchlist_screening_status"

module Plaid
  # Request input for listinging watchlist screenings for individuals
  class WatchlistScreeningIndividualListRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated program.
    @[JSON::Field(key: "watchlist_program_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter watchlist_program_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # A unique ID that identifies the end user in your system. This ID can also be used to associate user-specific data from other Plaid products. Financial Account Matching requires this field and the `/link/token/create` `client_user_id` to be consistent. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`.
    @[JSON::Field(key: "client_user_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_user_id : String? = nil
    MIN_LENGTH_FOR_CLIENT_USER_ID = 1

    @[JSON::Field(key: "status", type: Plaid::WatchlistScreeningStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Plaid::WatchlistScreeningStatus? = nil

    # ID of the associated user.
    @[JSON::Field(key: "assignee", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter assignee : String? = nil

    # An identifier that determines which page of results you receive.
    @[JSON::Field(key: "cursor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cursor.nil? && !cursor_present?)]
    getter cursor : String? = nil

    @[JSON::Field(ignore: true)]
    property? cursor_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @watchlist_program_id : String? = nil,
      # Optional properties
      @secret : String? = nil,
      @client_id : String? = nil,
      @client_user_id : String? = nil,
      @status : Plaid::WatchlistScreeningStatus? = nil,
      @assignee : String? = nil,
      @cursor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"watchlist_program_id\" is required and cannot be null") if @watchlist_program_id.nil?

      unless (_watchlist_program_id = @watchlist_program_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_client_user_id = @client_user_id).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("client_user_id", _client_user_id.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_assignee = @assignee).nil?
      end
      unless (_cursor = @cursor).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @watchlist_program_id.nil?
      unless (_watchlist_program_id = @watchlist_program_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_client_user_id = @client_user_id).nil?
        return false if _client_user_id.to_s.size < MIN_LENGTH_FOR_CLIENT_USER_ID
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_assignee = @assignee).nil?
      end

      unless (_cursor = @cursor).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] watchlist_program_id Object to be assigned
    def watchlist_program_id=(new_value : String?)
      raise ArgumentError.new("\"watchlist_program_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @watchlist_program_id = new_value
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_user_id Object to be assigned
    def client_user_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("client_user_id", new_value.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
      end

      @client_user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::WatchlistScreeningStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] assignee Object to be assigned
    def assignee=(new_value : String?)
      unless new_value.nil?
      end

      @assignee = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cursor Object to be assigned
    def cursor=(new_value : String?)
      unless new_value.nil?
      end

      @cursor = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@watchlist_program_id, @secret, @client_id, @client_user_id, @status, @assignee, @cursor, @cursor_present)
  end
end
