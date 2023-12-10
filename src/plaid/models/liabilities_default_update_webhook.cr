#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./plaid_error"
require "./webhook_environment_values"

module Plaid
  # The webhook of type `LIABILITIES` and code `DEFAULT_UPDATE` will be fired when new or updated liabilities have been detected on a liabilities item.
  class LiabilitiesDefaultUpdateWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `LIABILITIES`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `DEFAULT_UPDATE`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # The `item_id` of the Item associated with this webhook, warning, or error
    @[JSON::Field(key: "item_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item_id : String? = nil

    @[JSON::Field(key: "error", type: PlaidError?, default: nil, required: true, nullable: true, emit_null: true)]
    getter error : PlaidError? = nil

    # An array of `account_id`'s for accounts that contain new liabilities.'
    @[JSON::Field(key: "account_ids_with_new_liabilities", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_ids_with_new_liabilities : Array(String)? = nil

    # An object with keys of `account_id`'s that are mapped to their respective liabilities fields that changed.  Example: `{ \"XMBvvyMGQ1UoLbKByoMqH3nXMj84ALSdE5B58\": [\"past_amount_due\"] }`
    @[JSON::Field(key: "account_ids_with_updated_liabilities", type: Hash(String, Array(String))?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_ids_with_updated_liabilities : Hash(String, Array(String))? = nil

    @[JSON::Field(key: "environment", type: Plaid::WebhookEnvironmentValues?, default: nil, required: true, nullable: false, emit_null: false)]
    getter environment : Plaid::WebhookEnvironmentValues? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @webhook_type : String? = nil,
      @webhook_code : String? = nil,
      @item_id : String? = nil,
      @error : PlaidError? = nil,
      @account_ids_with_new_liabilities : Array(String)? = nil,
      @account_ids_with_updated_liabilities : Hash(String, Array(String))? = nil,
      @environment : Plaid::WebhookEnvironmentValues? = nil
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
      invalid_properties.push("\"item_id\" is required and cannot be null") if @item_id.nil?

      unless (_item_id = @item_id).nil?
      end
      unless (_error = @error).nil?
      end
      invalid_properties.push("\"account_ids_with_new_liabilities\" is required and cannot be null") if @account_ids_with_new_liabilities.nil?

      unless (_account_ids_with_new_liabilities = @account_ids_with_new_liabilities).nil?
      end
      invalid_properties.push("\"account_ids_with_updated_liabilities\" is required and cannot be null") if @account_ids_with_updated_liabilities.nil?

      unless (_account_ids_with_updated_liabilities = @account_ids_with_updated_liabilities).nil?
      end
      invalid_properties.push("\"environment\" is required and cannot be null") if @environment.nil?

      unless (_environment = @environment).nil?
        invalid_properties.push(_environment.error_message) if !_environment.valid?
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

      return false if @item_id.nil?
      unless (_item_id = @item_id).nil?
      end

      unless (_error = @error).nil?
      end

      return false if @account_ids_with_new_liabilities.nil?
      unless (_account_ids_with_new_liabilities = @account_ids_with_new_liabilities).nil?
      end

      return false if @account_ids_with_updated_liabilities.nil?
      unless (_account_ids_with_updated_liabilities = @account_ids_with_updated_liabilities).nil?
      end

      return false if @environment.nil?
      unless (_environment = @environment).nil?
        return false if !_environment.valid?
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
    # @param [Object] item_id Object to be assigned
    def item_id=(new_value : String?)
      raise ArgumentError.new("\"item_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @item_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error Object to be assigned
    def error=(new_value : PlaidError?)
      unless new_value.nil?
      end

      @error = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_ids_with_new_liabilities Object to be assigned
    def account_ids_with_new_liabilities=(new_value : Array(String)?)
      raise ArgumentError.new("\"account_ids_with_new_liabilities\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_ids_with_new_liabilities = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_ids_with_updated_liabilities Object to be assigned
    def account_ids_with_updated_liabilities=(new_value : Hash(String, Array(String))?)
      raise ArgumentError.new("\"account_ids_with_updated_liabilities\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_ids_with_updated_liabilities = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] environment Object to be assigned
    def environment=(new_value : Plaid::WebhookEnvironmentValues?)
      raise ArgumentError.new("\"environment\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @environment = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@webhook_type, @webhook_code, @item_id, @error, @account_ids_with_new_liabilities, @account_ids_with_updated_liabilities, @environment)
  end
end
