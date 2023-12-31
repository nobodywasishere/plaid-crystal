#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_delivery_session_status"

module Plaid
  # LinkDeliveryGetRequest defines the response schema for `/link_delivery/get`
  class LinkDeliveryGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "status", type: Plaid::LinkDeliverySessionStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::LinkDeliverySessionStatus? = nil

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the time the given Hosted Link session was created at.
    @[JSON::Field(key: "created_at", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created_at : Time? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the time the given Hosted Link session was completed at.
    @[JSON::Field(key: "completed_at", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: completed_at.nil? && !completed_at_present?, converter: Time::RFC3339Converter)]
    getter completed_at : Time? = nil

    @[JSON::Field(ignore: true)]
    property? completed_at_present : Bool = false

    # An array of access tokens associated with the Hosted Link session.
    @[JSON::Field(key: "access_tokens", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: access_tokens.nil? && !access_tokens_present?)]
    getter access_tokens : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? access_tokens_present : Bool = false

    # An array of `item_id`s associated with the Hosted Link session.
    @[JSON::Field(key: "item_ids", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: item_ids.nil? && !item_ids_present?)]
    getter item_ids : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? item_ids_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : Plaid::LinkDeliverySessionStatus? = nil,
      @created_at : Time? = nil,
      @request_id : String? = nil,
      # Optional properties
      @completed_at : Time? = nil,
      @access_tokens : Array(String)? = nil,
      @item_ids : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      invalid_properties.push("\"created_at\" is required and cannot be null") if @created_at.nil?

      unless (_created_at = @created_at).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      unless (_completed_at = @completed_at).nil?
      end
      unless (_access_tokens = @access_tokens).nil?
      end
      unless (_item_ids = @item_ids).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      return false if @created_at.nil?
      unless (_created_at = @created_at).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      unless (_completed_at = @completed_at).nil?
      end

      unless (_access_tokens = @access_tokens).nil?
      end

      unless (_item_ids = @item_ids).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::LinkDeliverySessionStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created_at Object to be assigned
    def created_at=(new_value : Time?)
      raise ArgumentError.new("\"created_at\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] completed_at Object to be assigned
    def completed_at=(new_value : Time?)
      unless new_value.nil?
      end

      @completed_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access_tokens Object to be assigned
    def access_tokens=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @access_tokens = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_ids Object to be assigned
    def item_ids=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @item_ids = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @created_at, @request_id, @completed_at, @completed_at_present, @access_tokens, @access_tokens_present, @item_ids, @item_ids_present)
  end
end
