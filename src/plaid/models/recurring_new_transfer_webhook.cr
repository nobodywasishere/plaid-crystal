#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./webhook_environment_values"

module Plaid
  # Fired when a new transfer of a recurring transfer is originated.
  class RecurringNewTransferWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `TRANSFER`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `RECURRING_NEW_TRANSFER`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # Plaid’s unique identifier for a recurring transfer.
    @[JSON::Field(key: "recurring_transfer_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter recurring_transfer_id : String? = nil

    # Plaid’s unique identifier for a transfer.
    @[JSON::Field(key: "transfer_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transfer_id : String? = nil

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
      @recurring_transfer_id : String? = nil,
      @transfer_id : String? = nil,
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
      invalid_properties.push("\"recurring_transfer_id\" is required and cannot be null") if @recurring_transfer_id.nil?

      unless (_recurring_transfer_id = @recurring_transfer_id).nil?
      end
      invalid_properties.push("\"transfer_id\" is required and cannot be null") if @transfer_id.nil?

      unless (_transfer_id = @transfer_id).nil?
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

      return false if @recurring_transfer_id.nil?
      unless (_recurring_transfer_id = @recurring_transfer_id).nil?
      end

      return false if @transfer_id.nil?
      unless (_transfer_id = @transfer_id).nil?
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
    # @param [Object] recurring_transfer_id Object to be assigned
    def recurring_transfer_id=(new_value : String?)
      raise ArgumentError.new("\"recurring_transfer_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @recurring_transfer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_id Object to be assigned
    def transfer_id=(new_value : String?)
      raise ArgumentError.new("\"transfer_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @transfer_id = new_value
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
    def_equals_and_hash(@webhook_type, @webhook_code, @recurring_transfer_id, @transfer_id, @environment)
  end
end
