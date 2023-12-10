#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./entity_watchlist_screening_search_terms"
require "./watchlist_screening_audit_trail"
require "./watchlist_screening_status"

module Plaid
  # The entity screening object allows you to represent an entity in your system, update its profile, and search for it on various watchlists. Note: Rejected entity screenings will not receive new hits, regardless of entity program configuration.
  class WatchlistScreeningEntityCreateResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated entity screening.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    @[JSON::Field(key: "search_terms", type: EntityWatchlistScreeningSearchTerms?, default: nil, required: true, nullable: false, emit_null: false)]
    getter search_terms : EntityWatchlistScreeningSearchTerms? = nil

    # ID of the associated user.
    @[JSON::Field(key: "assignee", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter assignee : String? = nil

    @[JSON::Field(key: "status", type: Plaid::WatchlistScreeningStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::WatchlistScreeningStatus? = nil

    # A unique ID that identifies the end user in your system. This ID can also be used to associate user-specific data from other Plaid products. Financial Account Matching requires this field and the `/link/token/create` `client_user_id` to be consistent. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`.
    @[JSON::Field(key: "client_user_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter client_user_id : String? = nil
    MIN_LENGTH_FOR_CLIENT_USER_ID = 1

    @[JSON::Field(key: "audit_trail", type: WatchlistScreeningAuditTrail?, default: nil, required: true, nullable: false, emit_null: false)]
    getter audit_trail : WatchlistScreeningAuditTrail? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @search_terms : EntityWatchlistScreeningSearchTerms? = nil,
      @assignee : String? = nil,
      @status : Plaid::WatchlistScreeningStatus? = nil,
      @client_user_id : String? = nil,
      @audit_trail : WatchlistScreeningAuditTrail? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"search_terms\" is required and cannot be null") if @search_terms.nil?

      unless (_search_terms = @search_terms).nil?
      end
      unless (_assignee = @assignee).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_client_user_id = @client_user_id).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("client_user_id", _client_user_id.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties.push("\"audit_trail\" is required and cannot be null") if @audit_trail.nil?

      unless (_audit_trail = @audit_trail).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @search_terms.nil?
      unless (_search_terms = @search_terms).nil?
      end

      unless (_assignee = @assignee).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_client_user_id = @client_user_id).nil?
        return false if _client_user_id.to_s.size < MIN_LENGTH_FOR_CLIENT_USER_ID
      end

      return false if @audit_trail.nil?
      unless (_audit_trail = @audit_trail).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] search_terms Object to be assigned
    def search_terms=(new_value : EntityWatchlistScreeningSearchTerms?)
      raise ArgumentError.new("\"search_terms\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
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
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
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
    # @param [Object] audit_trail Object to be assigned
    def audit_trail=(new_value : WatchlistScreeningAuditTrail?)
      raise ArgumentError.new("\"audit_trail\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @audit_trail = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @search_terms, @assignee, @status, @client_user_id, @audit_trail, @request_id)
  end
end
