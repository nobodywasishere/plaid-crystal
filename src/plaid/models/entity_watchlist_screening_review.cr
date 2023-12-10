#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./watchlist_screening_audit_trail"

module Plaid
  # A review submitted by a team member for an entity watchlist screening. A review can be either a comment on the current screening state, actions taken against hits attached to the watchlist screening, or both.
  class EntityWatchlistScreeningReview
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated entity review.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Hits marked as a true positive after thorough manual review. These hits will never recur or be updated once dismissed. In most cases, confirmed hits indicate that the customer should be rejected.
    @[JSON::Field(key: "confirmed_hits", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter confirmed_hits : Array(String)? = nil

    # Hits marked as a false positive after thorough manual review. These hits will never recur or be updated once dismissed.
    @[JSON::Field(key: "dismissed_hits", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter dismissed_hits : Array(String)? = nil

    # A comment submitted by a team member as part of reviewing a watchlist screening.
    @[JSON::Field(key: "comment", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter comment : String? = nil
    MIN_LENGTH_FOR_COMMENT = 1

    @[JSON::Field(key: "audit_trail", type: WatchlistScreeningAuditTrail?, default: nil, required: true, nullable: false, emit_null: false)]
    getter audit_trail : WatchlistScreeningAuditTrail? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @confirmed_hits : Array(String)? = nil,
      @dismissed_hits : Array(String)? = nil,
      @comment : String? = nil,
      @audit_trail : WatchlistScreeningAuditTrail? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"confirmed_hits\" is required and cannot be null") if @confirmed_hits.nil?

      unless (_confirmed_hits = @confirmed_hits).nil?
      end
      invalid_properties.push("\"dismissed_hits\" is required and cannot be null") if @dismissed_hits.nil?

      unless (_dismissed_hits = @dismissed_hits).nil?
      end
      unless (_comment = @comment).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("comment", _comment.to_s.size, MIN_LENGTH_FOR_COMMENT)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties.push("\"audit_trail\" is required and cannot be null") if @audit_trail.nil?

      unless (_audit_trail = @audit_trail).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @confirmed_hits.nil?
      unless (_confirmed_hits = @confirmed_hits).nil?
      end

      return false if @dismissed_hits.nil?
      unless (_dismissed_hits = @dismissed_hits).nil?
      end

      unless (_comment = @comment).nil?
        return false if _comment.to_s.size < MIN_LENGTH_FOR_COMMENT
      end

      return false if @audit_trail.nil?
      unless (_audit_trail = @audit_trail).nil?
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
    # @param [Object] confirmed_hits Object to be assigned
    def confirmed_hits=(new_value : Array(String)?)
      raise ArgumentError.new("\"confirmed_hits\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @confirmed_hits = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dismissed_hits Object to be assigned
    def dismissed_hits=(new_value : Array(String)?)
      raise ArgumentError.new("\"dismissed_hits\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @dismissed_hits = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comment Object to be assigned
    def comment=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("comment", new_value.to_s.size, MIN_LENGTH_FOR_COMMENT)
      end

      @comment = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] audit_trail Object to be assigned
    def audit_trail=(new_value : WatchlistScreeningAuditTrail?)
      raise ArgumentError.new("\"audit_trail\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @audit_trail = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @confirmed_hits, @dismissed_hits, @comment, @audit_trail)
  end
end
