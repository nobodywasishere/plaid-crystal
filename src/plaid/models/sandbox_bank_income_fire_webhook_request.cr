#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./sandbox_bank_income_webhook_fire_request_webhook_code"
require "./sandbox_bank_income_webhook_fire_request_webhook_fields"

module Plaid
  # SandboxBankIncomeFireWebhookRequest defines the request schema for `/sandbox/bank_income/fire_webhook`
  class SandboxBankIncomeFireWebhookRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "webhook_code", type: Plaid::SandboxBankIncomeWebhookFireRequestWebhookCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : Plaid::SandboxBankIncomeWebhookFireRequestWebhookCode? = nil

    @[JSON::Field(key: "webhook_fields", type: Plaid::SandboxBankIncomeWebhookFireRequestWebhookFields?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_fields : Plaid::SandboxBankIncomeWebhookFireRequestWebhookFields? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # The URL to which the webhook should be sent. If provided, this will override the URL set in the dashboard.
    @[JSON::Field(key: "webhook_override", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter webhook_override : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @webhook_code : Plaid::SandboxBankIncomeWebhookFireRequestWebhookCode? = nil,
      @webhook_fields : Plaid::SandboxBankIncomeWebhookFireRequestWebhookFields? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @webhook_override : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"webhook_code\" is required and cannot be null") if @webhook_code.nil?

      unless (_webhook_code = @webhook_code).nil?
        invalid_properties.push(_webhook_code.error_message) if !_webhook_code.valid?
      end
      invalid_properties.push("\"webhook_fields\" is required and cannot be null") if @webhook_fields.nil?

      unless (_webhook_fields = @webhook_fields).nil?
        invalid_properties.concat(_webhook_fields.list_invalid_properties_for("webhook_fields")) if _webhook_fields.is_a?(OpenApi::Validatable)
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_webhook_override = @webhook_override).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @webhook_code.nil?
      unless (_webhook_code = @webhook_code).nil?
        return false if !_webhook_code.valid?
      end

      return false if @webhook_fields.nil?
      unless (_webhook_fields = @webhook_fields).nil?
        return false if _webhook_fields.is_a?(OpenApi::Validatable) && !_webhook_fields.valid?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_webhook_override = @webhook_override).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_code Object to be assigned
    def webhook_code=(new_value : Plaid::SandboxBankIncomeWebhookFireRequestWebhookCode?)
      raise ArgumentError.new("\"webhook_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @webhook_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_fields Object to be assigned
    def webhook_fields=(new_value : Plaid::SandboxBankIncomeWebhookFireRequestWebhookFields?)
      raise ArgumentError.new("\"webhook_fields\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @webhook_fields = new_value
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
    # @param [Object] webhook_override Object to be assigned
    def webhook_override=(new_value : String?)
      unless new_value.nil?
      end

      @webhook_override = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@webhook_code, @webhook_fields, @client_id, @secret, @webhook_override)
  end
end
