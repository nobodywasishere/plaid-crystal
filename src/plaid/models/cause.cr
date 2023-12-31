#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./plaid_error_type"

module Plaid
  # An error object and associated `item_id` used to identify a specific Item and error when a batch operation operating on multiple Items has encountered an error in one of the Items.
  class Cause
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "error_type", type: Plaid::PlaidErrorType?, default: nil, required: true, nullable: false, emit_null: false)]
    getter error_type : Plaid::PlaidErrorType? = nil

    # The particular error code. Safe for programmatic use.
    @[JSON::Field(key: "error_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter error_code : String? = nil

    # A developer-friendly representation of the error code. This may change over time and is not safe for programmatic use.
    @[JSON::Field(key: "error_message", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter error_message : String? = nil

    # A user-friendly representation of the error code. `null` if the error is not related to user action.  This may change over time and is not safe for programmatic use.
    @[JSON::Field(key: "display_message", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter display_message : String? = nil

    # The `item_id` of the Item associated with this webhook, warning, or error
    @[JSON::Field(key: "item_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # A unique ID identifying the request, to be used for troubleshooting purposes. This field will be omitted in errors provided by webhooks.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # In the Assets product, a request can pertain to more than one Item. If an error is returned for such a request, `causes` will return an array of errors containing a breakdown of these errors on the individual Item level, if any can be identified.  `causes` will only be provided for the `error_type` `ASSET_REPORT_ERROR`. `causes` will also not be populated inside an error nested within a `warning` object.
    @[JSON::Field(key: "causes", type: Array(Object)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter causes : Array(Object)? = nil

    # The HTTP status code associated with the error. This will only be returned in the response body when the error information is provided via a webhook.
    @[JSON::Field(key: "status", type: Int32?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : Int32? = nil

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    # The URL of a Plaid documentation page with more information about the error
    @[JSON::Field(key: "documentation_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter documentation_url : String? = nil

    # Suggested steps for resolving the error
    @[JSON::Field(key: "suggested_action", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: suggested_action.nil? && !suggested_action_present?)]
    getter suggested_action : String? = nil

    @[JSON::Field(ignore: true)]
    property? suggested_action_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @error_type : Plaid::PlaidErrorType? = nil,
      @error_code : String? = nil,
      @error_message : String? = nil,
      @display_message : String? = nil,
      @item_id : String? = nil,
      # Optional properties
      @request_id : String? = nil,
      @causes : Array(Object)? = nil,
      @status : Int32? = nil,
      @documentation_url : String? = nil,
      @suggested_action : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"error_type\" is required and cannot be null") if @error_type.nil?

      unless (_error_type = @error_type).nil?
        invalid_properties.push(_error_type.error_message) if !_error_type.valid?
      end
      invalid_properties.push("\"error_code\" is required and cannot be null") if @error_code.nil?

      unless (_error_code = @error_code).nil?
      end
      invalid_properties.push("\"error_message\" is required and cannot be null") if @error_message.nil?

      unless (_error_message = @error_message).nil?
      end
      unless (_display_message = @display_message).nil?
      end
      invalid_properties.push("\"item_id\" is required and cannot be null") if @item_id.nil?

      unless (_item_id = @item_id).nil?
      end
      unless (_request_id = @request_id).nil?
      end
      unless (_causes = @causes).nil?
      end
      unless (_status = @status).nil?
      end
      unless (_documentation_url = @documentation_url).nil?
      end
      unless (_suggested_action = @suggested_action).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @error_type.nil?
      unless (_error_type = @error_type).nil?
        return false if !_error_type.valid?
      end

      return false if @error_code.nil?
      unless (_error_code = @error_code).nil?
      end

      return false if @error_message.nil?
      unless (_error_message = @error_message).nil?
      end

      unless (_display_message = @display_message).nil?
      end

      return false if @item_id.nil?
      unless (_item_id = @item_id).nil?
      end

      unless (_request_id = @request_id).nil?
      end

      unless (_causes = @causes).nil?
      end

      unless (_status = @status).nil?
      end

      unless (_documentation_url = @documentation_url).nil?
      end

      unless (_suggested_action = @suggested_action).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_type Object to be assigned
    def error_type=(new_value : Plaid::PlaidErrorType?)
      raise ArgumentError.new("\"error_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @error_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(new_value : String?)
      raise ArgumentError.new("\"error_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @error_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_message Object to be assigned
    def error_message=(new_value : String?)
      raise ArgumentError.new("\"error_message\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @error_message = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_message Object to be assigned
    def display_message=(new_value : String?)
      unless new_value.nil?
      end

      @display_message = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_id Object to be assigned
    def item_id=(new_value : String?)
      raise ArgumentError.new("\"item_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @item_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] causes Object to be assigned
    def causes=(new_value : Array(Object)?)
      unless new_value.nil?
      end

      @causes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Int32?)
      unless new_value.nil?
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documentation_url Object to be assigned
    def documentation_url=(new_value : String?)
      unless new_value.nil?
      end

      @documentation_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] suggested_action Object to be assigned
    def suggested_action=(new_value : String?)
      unless new_value.nil?
      end

      @suggested_action = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@error_type, @error_code, @error_message, @display_message, @item_id, @request_id, @causes, @status, @status_present, @documentation_url, @suggested_action, @suggested_action_present)
  end
end
