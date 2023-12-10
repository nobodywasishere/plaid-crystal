#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./entity_screening_hit_analysis"
require "./entity_screening_hit_data"
require "./entity_watchlist_code"
require "./watchlist_screening_hit_status"

module Plaid
  # Data from a government watchlist that has been attached to the screening.
  class EntityWatchlistScreeningHit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated entity screening hit.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    @[JSON::Field(key: "review_status", type: Plaid::WatchlistScreeningHitStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter review_status : Plaid::WatchlistScreeningHitStatus? = nil

    # An ISO8601 formatted timestamp.
    @[JSON::Field(key: "first_active", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter first_active : Time? = nil

    # An ISO8601 formatted timestamp.
    @[JSON::Field(key: "inactive_since", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter inactive_since : Time? = nil

    # An ISO8601 formatted timestamp.
    @[JSON::Field(key: "historical_since", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter historical_since : Time? = nil

    @[JSON::Field(key: "list_code", type: Plaid::EntityWatchlistCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter list_code : Plaid::EntityWatchlistCode? = nil

    # A universal identifier for a watchlist individual that is stable across searches and updates.
    @[JSON::Field(key: "plaid_uid", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter plaid_uid : String? = nil

    # The identifier provided by the source sanction or watchlist. When one is not provided by the source, this is `null`.
    @[JSON::Field(key: "source_uid", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source_uid : String? = nil
    MIN_LENGTH_FOR_SOURCE_UID = 1

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "analysis", type: EntityScreeningHitAnalysis?, default: nil, required: false, nullable: false, emit_null: false)]
    getter analysis : EntityScreeningHitAnalysis? = nil

    @[JSON::Field(key: "data", type: EntityScreeningHitData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter data : EntityScreeningHitData? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @review_status : Plaid::WatchlistScreeningHitStatus? = nil,
      @first_active : Time? = nil,
      @inactive_since : Time? = nil,
      @historical_since : Time? = nil,
      @list_code : Plaid::EntityWatchlistCode? = nil,
      @plaid_uid : String? = nil,
      @source_uid : String? = nil,
      # Optional properties
      @analysis : EntityScreeningHitAnalysis? = nil,
      @data : EntityScreeningHitData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"review_status\" is required and cannot be null") if @review_status.nil?

      unless (_review_status = @review_status).nil?
        invalid_properties.push(_review_status.error_message) if !_review_status.valid?
      end
      invalid_properties.push("\"first_active\" is required and cannot be null") if @first_active.nil?

      unless (_first_active = @first_active).nil?
      end
      unless (_inactive_since = @inactive_since).nil?
      end
      unless (_historical_since = @historical_since).nil?
      end
      invalid_properties.push("\"list_code\" is required and cannot be null") if @list_code.nil?

      unless (_list_code = @list_code).nil?
        invalid_properties.push(_list_code.error_message) if !_list_code.valid?
      end
      invalid_properties.push("\"plaid_uid\" is required and cannot be null") if @plaid_uid.nil?

      unless (_plaid_uid = @plaid_uid).nil?
      end
      unless (_source_uid = @source_uid).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("source_uid", _source_uid.to_s.size, MIN_LENGTH_FOR_SOURCE_UID)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_analysis = @analysis).nil?
      end
      unless (_data = @data).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @review_status.nil?
      unless (_review_status = @review_status).nil?
        return false if !_review_status.valid?
      end

      return false if @first_active.nil?
      unless (_first_active = @first_active).nil?
      end

      unless (_inactive_since = @inactive_since).nil?
      end

      unless (_historical_since = @historical_since).nil?
      end

      return false if @list_code.nil?
      unless (_list_code = @list_code).nil?
        return false if !_list_code.valid?
      end

      return false if @plaid_uid.nil?
      unless (_plaid_uid = @plaid_uid).nil?
      end

      unless (_source_uid = @source_uid).nil?
        return false if _source_uid.to_s.size < MIN_LENGTH_FOR_SOURCE_UID
      end

      unless (_analysis = @analysis).nil?
      end

      unless (_data = @data).nil?
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
    # @param [Object] review_status Object to be assigned
    def review_status=(new_value : Plaid::WatchlistScreeningHitStatus?)
      raise ArgumentError.new("\"review_status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @review_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] first_active Object to be assigned
    def first_active=(new_value : Time?)
      raise ArgumentError.new("\"first_active\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @first_active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inactive_since Object to be assigned
    def inactive_since=(new_value : Time?)
      unless new_value.nil?
      end

      @inactive_since = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] historical_since Object to be assigned
    def historical_since=(new_value : Time?)
      unless new_value.nil?
      end

      @historical_since = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] list_code Object to be assigned
    def list_code=(new_value : Plaid::EntityWatchlistCode?)
      raise ArgumentError.new("\"list_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @list_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] plaid_uid Object to be assigned
    def plaid_uid=(new_value : String?)
      raise ArgumentError.new("\"plaid_uid\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @plaid_uid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_uid Object to be assigned
    def source_uid=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("source_uid", new_value.to_s.size, MIN_LENGTH_FOR_SOURCE_UID)
      end

      @source_uid = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] analysis Object to be assigned
    def analysis=(new_value : EntityScreeningHitAnalysis?)
      unless new_value.nil?
      end

      @analysis = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(new_value : EntityScreeningHitData?)
      unless new_value.nil?
      end

      @data = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @review_status, @first_active, @inactive_since, @historical_since, @list_code, @plaid_uid, @source_uid, @analysis, @data)
  end
end
