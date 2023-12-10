#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_authorization_decision"
require "./transfer_authorization_decision_rationale_code"
require "./webhook_environment_values"

module Plaid
  # Fired when Plaid is unable to originate a new ACH transaction of the recurring transfer on the planned date.
  class RecurringTransferSkippedWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `TRANSFER`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `RECURRING_TRANSFER_SKIPPED`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # Plaid’s unique identifier for a recurring transfer.
    @[JSON::Field(key: "recurring_transfer_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter recurring_transfer_id : String? = nil

    @[JSON::Field(key: "authorization_decision", type: Plaid::TransferAuthorizationDecision?, default: nil, required: true, nullable: false, emit_null: false)]
    getter authorization_decision : Plaid::TransferAuthorizationDecision? = nil

    # The planned date on which Plaid is unable to originate a new ACH transaction of the recurring transfer. This will be of the form YYYY-MM-DD.
    @[JSON::Field(key: "skipped_origination_date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter skipped_origination_date : Time? = nil

    @[JSON::Field(key: "environment", type: Plaid::WebhookEnvironmentValues?, default: nil, required: true, nullable: false, emit_null: false)]
    getter environment : Plaid::WebhookEnvironmentValues? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "authorization_decision_rationale_code", type: Plaid::TransferAuthorizationDecisionRationaleCode?, default: nil, required: false, nullable: false, emit_null: false)]
    getter authorization_decision_rationale_code : Plaid::TransferAuthorizationDecisionRationaleCode? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @webhook_type : String? = nil,
      @webhook_code : String? = nil,
      @recurring_transfer_id : String? = nil,
      @authorization_decision : Plaid::TransferAuthorizationDecision? = nil,
      @skipped_origination_date : Time? = nil,
      @environment : Plaid::WebhookEnvironmentValues? = nil,
      # Optional properties
      @authorization_decision_rationale_code : Plaid::TransferAuthorizationDecisionRationaleCode? = nil
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
      invalid_properties.push("\"authorization_decision\" is required and cannot be null") if @authorization_decision.nil?

      unless (_authorization_decision = @authorization_decision).nil?
        invalid_properties.push(_authorization_decision.error_message) if !_authorization_decision.valid?
      end
      invalid_properties.push("\"skipped_origination_date\" is required and cannot be null") if @skipped_origination_date.nil?

      unless (_skipped_origination_date = @skipped_origination_date).nil?
      end
      invalid_properties.push("\"environment\" is required and cannot be null") if @environment.nil?

      unless (_environment = @environment).nil?
        invalid_properties.push(_environment.error_message) if !_environment.valid?
      end
      unless (_authorization_decision_rationale_code = @authorization_decision_rationale_code).nil?
        invalid_properties.push(_authorization_decision_rationale_code.error_message) if !_authorization_decision_rationale_code.valid?
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

      return false if @authorization_decision.nil?
      unless (_authorization_decision = @authorization_decision).nil?
        return false if !_authorization_decision.valid?
      end

      return false if @skipped_origination_date.nil?
      unless (_skipped_origination_date = @skipped_origination_date).nil?
      end

      return false if @environment.nil?
      unless (_environment = @environment).nil?
        return false if !_environment.valid?
      end

      unless (_authorization_decision_rationale_code = @authorization_decision_rationale_code).nil?
        return false if !_authorization_decision_rationale_code.valid?
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
    # @param [Object] authorization_decision Object to be assigned
    def authorization_decision=(new_value : Plaid::TransferAuthorizationDecision?)
      raise ArgumentError.new("\"authorization_decision\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @authorization_decision = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] skipped_origination_date Object to be assigned
    def skipped_origination_date=(new_value : Time?)
      raise ArgumentError.new("\"skipped_origination_date\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @skipped_origination_date = new_value
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
    # @param [Object] authorization_decision_rationale_code Object to be assigned
    def authorization_decision_rationale_code=(new_value : Plaid::TransferAuthorizationDecisionRationaleCode?)
      unless new_value.nil?
        new_value.validate
      end

      @authorization_decision_rationale_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@webhook_type, @webhook_code, @recurring_transfer_id, @authorization_decision, @skipped_origination_date, @environment, @authorization_decision_rationale_code)
  end
end