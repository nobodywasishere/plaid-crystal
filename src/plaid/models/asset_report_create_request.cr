#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./asset_report_create_request_options"

module Plaid
  # AssetReportCreateRequest defines the request schema for `/asset_report/create`
  class AssetReportCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The maximum integer number of days of history to include in the Asset Report. If using Fannie Mae Day 1 Certainty, `days_requested` must be at least 61 for new originations or at least 31 for refinancings.  An Asset Report requested with \"Additional History\" (that is, with more than 61 days of transaction history) will incur an Additional History fee.
    @[JSON::Field(key: "days_requested", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter days_requested : Int32? = nil
    MAX_FOR_DAYS_REQUESTED = Int32.new("731")
    MIN_FOR_DAYS_REQUESTED = Int32.new("0")

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # An array of access tokens corresponding to the Items that will be included in the report. The `assets` product must have been initialized for the Items during link; the Assets product cannot be added after initialization.
    @[JSON::Field(key: "access_tokens", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter access_tokens : Array(String)? = nil
    MAX_ITEMS_FOR_ACCESS_TOKENS = 99
    MIN_ITEMS_FOR_ACCESS_TOKENS =  1

    @[JSON::Field(key: "options", type: Plaid::AssetReportCreateRequestOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter options : Plaid::AssetReportCreateRequestOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @days_requested : Int32? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @access_tokens : Array(String)? = nil,
      @options : Plaid::AssetReportCreateRequestOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"days_requested\" is required and cannot be null") if @days_requested.nil?

      unless (_days_requested = @days_requested).nil?
        if max_number_error = OpenApi::PrimitiveValidator.max_number_error("days_requested", _days_requested, MAX_FOR_DAYS_REQUESTED)
          invalid_properties.push(max_number_error)
        end

        if min_number_error = OpenApi::PrimitiveValidator.min_number_error("days_requested", _days_requested, MIN_FOR_DAYS_REQUESTED)
          invalid_properties.push(min_number_error)
        end
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_access_tokens = @access_tokens).nil?
        if max_items_error = OpenApi::PrimitiveValidator.max_items_error("access_tokens", _access_tokens.size, MAX_ITEMS_FOR_ACCESS_TOKENS)
          invalid_properties.push(max_items_error)
        end

        if min_items_error = OpenApi::PrimitiveValidator.min_items_error("access_tokens", _access_tokens.size, MIN_ITEMS_FOR_ACCESS_TOKENS)
          invalid_properties.push(min_items_error)
        end
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @days_requested.nil?
      unless (_days_requested = @days_requested).nil?
        return false if _days_requested > MAX_FOR_DAYS_REQUESTED
        return false if _days_requested < MIN_FOR_DAYS_REQUESTED
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_access_tokens = @access_tokens).nil?
        return false if _access_tokens.size > MAX_ITEMS_FOR_ACCESS_TOKENS
        return false if _access_tokens.size < MIN_ITEMS_FOR_ACCESS_TOKENS
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_requested Object to be assigned
    def days_requested=(new_value : Int32?)
      raise ArgumentError.new("\"days_requested\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_number("days_requested", new_value, MAX_FOR_DAYS_REQUESTED)
        OpenApi::PrimitiveValidator.validate_min_number("days_requested", new_value, MIN_FOR_DAYS_REQUESTED)
      end

      @days_requested = new_value
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
    # @param [Object] access_tokens Object to be assigned
    def access_tokens=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_items("access_tokens", new_value.size, MAX_ITEMS_FOR_ACCESS_TOKENS)
        OpenApi::PrimitiveValidator.validate_min_items("access_tokens", new_value.size, MIN_ITEMS_FOR_ACCESS_TOKENS)
      end

      @access_tokens = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(new_value : Plaid::AssetReportCreateRequestOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@days_requested, @client_id, @secret, @access_tokens, @options)
  end
end
