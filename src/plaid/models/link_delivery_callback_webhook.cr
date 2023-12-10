#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_callback_metadata"
require "./plaid_error"

module Plaid
  # Webhook containing metadata proxied over from Link callback e.g `onEvent`, `onExit`, `onSuccess`.
  class LinkDeliveryCallbackWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `LINK_DELIVERY`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `LINK_CALLBACK`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # The ID of the Hosted Link session.
    @[JSON::Field(key: "link_delivery_session_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter link_delivery_session_id : String? = nil

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format.
    @[JSON::Field(key: "timestamp", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter timestamp : String? = nil

    @[JSON::Field(key: "link_callback_metadata", type: LinkCallbackMetadata?, default: nil, required: true, nullable: false, emit_null: false)]
    getter link_callback_metadata : LinkCallbackMetadata? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "error", type: PlaidError?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: error.nil? && !error_present?)]
    getter error : PlaidError? = nil

    @[JSON::Field(ignore: true)]
    property? error_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @webhook_type : String? = nil,
      @webhook_code : String? = nil,
      @link_delivery_session_id : String? = nil,
      @timestamp : String? = nil,
      @link_callback_metadata : LinkCallbackMetadata? = nil,
      # Optional properties
      @error : PlaidError? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"webhook_type\" is required and cannot be null") if @webhook_type.nil?

      unless (_webhook_type = @webhook_type).nil?
      end
      invalid_properties.push("\"webhook_code\" is required and cannot be null") if @webhook_code.nil?

      unless (_webhook_code = @webhook_code).nil?
      end
      invalid_properties.push("\"link_delivery_session_id\" is required and cannot be null") if @link_delivery_session_id.nil?

      unless (_link_delivery_session_id = @link_delivery_session_id).nil?
      end
      invalid_properties.push("\"timestamp\" is required and cannot be null") if @timestamp.nil?

      unless (_timestamp = @timestamp).nil?
      end
      invalid_properties.push("\"link_callback_metadata\" is required and cannot be null") if @link_callback_metadata.nil?

      unless (_link_callback_metadata = @link_callback_metadata).nil?
      end
      unless (_error = @error).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @webhook_type.nil?
      unless (_webhook_type = @webhook_type).nil?
      end

      return false if @webhook_code.nil?
      unless (_webhook_code = @webhook_code).nil?
      end

      return false if @link_delivery_session_id.nil?
      unless (_link_delivery_session_id = @link_delivery_session_id).nil?
      end

      return false if @timestamp.nil?
      unless (_timestamp = @timestamp).nil?
      end

      return false if @link_callback_metadata.nil?
      unless (_link_callback_metadata = @link_callback_metadata).nil?
      end

      unless (_error = @error).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_type Object to be assigned
    def webhook_type=(new_value : String?)
      raise ArgumentError.new("\"webhook_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @webhook_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_code Object to be assigned
    def webhook_code=(new_value : String?)
      raise ArgumentError.new("\"webhook_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @webhook_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_delivery_session_id Object to be assigned
    def link_delivery_session_id=(new_value : String?)
      raise ArgumentError.new("\"link_delivery_session_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @link_delivery_session_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] timestamp Object to be assigned
    def timestamp=(new_value : String?)
      raise ArgumentError.new("\"timestamp\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @timestamp = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_callback_metadata Object to be assigned
    def link_callback_metadata=(new_value : LinkCallbackMetadata?)
      raise ArgumentError.new("\"link_callback_metadata\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @link_callback_metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(new_value : PlaidError?)
      unless new_value.nil?
      end

      @error = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@webhook_type, @webhook_code, @link_delivery_session_id, @timestamp, @link_callback_metadata, @error, @error_present)
  end
end