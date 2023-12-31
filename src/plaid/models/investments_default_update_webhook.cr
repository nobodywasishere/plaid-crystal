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
  # Fired when new transactions have been detected on an investment account.
  class InvestmentsDefaultUpdateWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `INVESTMENTS_TRANSACTIONS`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `DEFAULT_UPDATE`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # The `item_id` of the Item associated with this webhook, warning, or error
    @[JSON::Field(key: "item_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item_id : String? = nil

    # The number of new transactions reported since the last time this webhook was fired.
    @[JSON::Field(key: "new_investments_transactions", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter new_investments_transactions : Float64? = nil

    # The number of canceled transactions reported since the last time this webhook was fired.
    @[JSON::Field(key: "canceled_investments_transactions", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter canceled_investments_transactions : Float64? = nil

    @[JSON::Field(key: "environment", type: Plaid::WebhookEnvironmentValues?, default: nil, required: true, nullable: false, emit_null: false)]
    getter environment : Plaid::WebhookEnvironmentValues? = nil

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
      @item_id : String? = nil,
      @new_investments_transactions : Float64? = nil,
      @canceled_investments_transactions : Float64? = nil,
      @environment : Plaid::WebhookEnvironmentValues? = nil,
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
      invalid_properties.push("\"item_id\" is required and cannot be null") if @item_id.nil?

      unless (_item_id = @item_id).nil?
      end
      invalid_properties.push("\"new_investments_transactions\" is required and cannot be null") if @new_investments_transactions.nil?

      unless (_new_investments_transactions = @new_investments_transactions).nil?
      end
      invalid_properties.push("\"canceled_investments_transactions\" is required and cannot be null") if @canceled_investments_transactions.nil?

      unless (_canceled_investments_transactions = @canceled_investments_transactions).nil?
      end
      invalid_properties.push("\"environment\" is required and cannot be null") if @environment.nil?

      unless (_environment = @environment).nil?
        invalid_properties.push(_environment.error_message) if !_environment.valid?
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

      return false if @item_id.nil?
      unless (_item_id = @item_id).nil?
      end

      return false if @new_investments_transactions.nil?
      unless (_new_investments_transactions = @new_investments_transactions).nil?
      end

      return false if @canceled_investments_transactions.nil?
      unless (_canceled_investments_transactions = @canceled_investments_transactions).nil?
      end

      return false if @environment.nil?
      unless (_environment = @environment).nil?
        return false if !_environment.valid?
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
    # @param [Object] item_id Object to be assigned
    def item_id=(new_value : String?)
      raise ArgumentError.new("\"item_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @item_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] new_investments_transactions Object to be assigned
    def new_investments_transactions=(new_value : Float64?)
      raise ArgumentError.new("\"new_investments_transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @new_investments_transactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_investments_transactions Object to be assigned
    def canceled_investments_transactions=(new_value : Float64?)
      raise ArgumentError.new("\"canceled_investments_transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @canceled_investments_transactions = new_value
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
    def_equals_and_hash(@webhook_type, @webhook_code, @item_id, @new_investments_transactions, @canceled_investments_transactions, @environment, @error, @error_present)
  end
end
