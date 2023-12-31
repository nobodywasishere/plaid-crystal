#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./update_entity_screening_request_search_terms"
require "./watchlist_screening_entity_update_request_resettable_field"
require "./watchlist_screening_status"

module Plaid
  # Request input for editing an entity watchlist screening
  class WatchlistScreeningEntityUpdateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated entity screening.
    @[JSON::Field(key: "entity_watchlist_screening_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter entity_watchlist_screening_id : String? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "search_terms", type: Plaid::UpdateEntityScreeningRequestSearchTerms?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: search_terms.nil? && !search_terms_present?)]
    getter search_terms : Plaid::UpdateEntityScreeningRequestSearchTerms? = nil

    @[JSON::Field(ignore: true)]
    property? search_terms_present : Bool = false

    # ID of the associated user.
    @[JSON::Field(key: "assignee", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter assignee : String? = nil

    @[JSON::Field(key: "status", type: Plaid::WatchlistScreeningStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Plaid::WatchlistScreeningStatus? = nil

    # A unique ID that identifies the end user in your system. This ID can also be used to associate user-specific data from other Plaid products. Financial Account Matching requires this field and the `/link/token/create` `client_user_id` to be consistent. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`.
    @[JSON::Field(key: "client_user_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_user_id : String? = nil
    MIN_LENGTH_FOR_CLIENT_USER_ID = 1

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # A list of fields to reset back to null
    @[JSON::Field(key: "reset_fields", type: Array(WatchlistScreeningEntityUpdateRequestResettableField)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reset_fields.nil? && !reset_fields_present?)]
    getter reset_fields : Array(WatchlistScreeningEntityUpdateRequestResettableField)? = nil

    @[JSON::Field(ignore: true)]
    property? reset_fields_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @entity_watchlist_screening_id : String? = nil,
      # Optional properties
      @search_terms : Plaid::UpdateEntityScreeningRequestSearchTerms? = nil,
      @assignee : String? = nil,
      @status : Plaid::WatchlistScreeningStatus? = nil,
      @client_user_id : String? = nil,
      @client_id : String? = nil,
      @secret : String? = nil,
      @reset_fields : Array(WatchlistScreeningEntityUpdateRequestResettableField)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"entity_watchlist_screening_id\" is required and cannot be null") if @entity_watchlist_screening_id.nil?

      unless (_entity_watchlist_screening_id = @entity_watchlist_screening_id).nil?
      end
      unless (_search_terms = @search_terms).nil?
        invalid_properties.concat(_search_terms.list_invalid_properties_for("search_terms")) if _search_terms.is_a?(OpenApi::Validatable)
      end
      unless (_assignee = @assignee).nil?
      end
      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_client_user_id = @client_user_id).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("client_user_id", _client_user_id.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_reset_fields = @reset_fields).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @entity_watchlist_screening_id.nil?
      unless (_entity_watchlist_screening_id = @entity_watchlist_screening_id).nil?
      end

      unless (_search_terms = @search_terms).nil?
        return false if _search_terms.is_a?(OpenApi::Validatable) && !_search_terms.valid?
      end

      unless (_assignee = @assignee).nil?
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_client_user_id = @client_user_id).nil?
        return false if _client_user_id.to_s.size < MIN_LENGTH_FOR_CLIENT_USER_ID
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_reset_fields = @reset_fields).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_watchlist_screening_id Object to be assigned
    def entity_watchlist_screening_id=(new_value : String?)
      raise ArgumentError.new("\"entity_watchlist_screening_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @entity_watchlist_screening_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] search_terms Object to be assigned
    def search_terms=(new_value : Plaid::UpdateEntityScreeningRequestSearchTerms?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @search_terms = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] assignee Object to be assigned
    def assignee=(new_value : String?)
      unless new_value.nil?
      end

      @assignee = new_value
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
    # @param [Object] client_user_id Object to be assigned
    def client_user_id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("client_user_id", new_value.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
      end

      @client_user_id = new_value
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reset_fields Object to be assigned
    def reset_fields=(new_value : Array(WatchlistScreeningEntityUpdateRequestResettableField)?)
      unless new_value.nil?
      end

      @reset_fields = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@entity_watchlist_screening_id, @search_terms, @search_terms_present, @assignee, @status, @client_user_id, @client_id, @secret, @reset_fields, @reset_fields_present)
  end
end
