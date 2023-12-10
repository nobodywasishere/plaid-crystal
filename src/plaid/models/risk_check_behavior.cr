#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./risk_check_behavior_bot_detected_label"
require "./risk_check_behavior_fraud_ring_detected_label"
require "./risk_check_behavior_user_interactions_label"

module Plaid
  # Result summary object specifying values for `behavior` attributes of risk check, when available.
  class RiskCheckBehavior
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "user_interactions", type: Plaid::RiskCheckBehaviorUserInteractionsLabel?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user_interactions : Plaid::RiskCheckBehaviorUserInteractionsLabel? = nil

    @[JSON::Field(key: "fraud_ring_detected", type: Plaid::RiskCheckBehaviorFraudRingDetectedLabel?, default: nil, required: true, nullable: false, emit_null: false)]
    getter fraud_ring_detected : Plaid::RiskCheckBehaviorFraudRingDetectedLabel? = nil

    @[JSON::Field(key: "bot_detected", type: Plaid::RiskCheckBehaviorBotDetectedLabel?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bot_detected : Plaid::RiskCheckBehaviorBotDetectedLabel? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @user_interactions : Plaid::RiskCheckBehaviorUserInteractionsLabel? = nil,
      @fraud_ring_detected : Plaid::RiskCheckBehaviorFraudRingDetectedLabel? = nil,
      @bot_detected : Plaid::RiskCheckBehaviorBotDetectedLabel? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"user_interactions\" is required and cannot be null") if @user_interactions.nil?

      unless (_user_interactions = @user_interactions).nil?
        invalid_properties.push(_user_interactions.error_message) if !_user_interactions.valid?
      end
      invalid_properties.push("\"fraud_ring_detected\" is required and cannot be null") if @fraud_ring_detected.nil?

      unless (_fraud_ring_detected = @fraud_ring_detected).nil?
        invalid_properties.push(_fraud_ring_detected.error_message) if !_fraud_ring_detected.valid?
      end
      invalid_properties.push("\"bot_detected\" is required and cannot be null") if @bot_detected.nil?

      unless (_bot_detected = @bot_detected).nil?
        invalid_properties.push(_bot_detected.error_message) if !_bot_detected.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @user_interactions.nil?
      unless (_user_interactions = @user_interactions).nil?
        return false if !_user_interactions.valid?
      end

      return false if @fraud_ring_detected.nil?
      unless (_fraud_ring_detected = @fraud_ring_detected).nil?
        return false if !_fraud_ring_detected.valid?
      end

      return false if @bot_detected.nil?
      unless (_bot_detected = @bot_detected).nil?
        return false if !_bot_detected.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_interactions Object to be assigned
    def user_interactions=(new_value : Plaid::RiskCheckBehaviorUserInteractionsLabel?)
      raise ArgumentError.new("\"user_interactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @user_interactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraud_ring_detected Object to be assigned
    def fraud_ring_detected=(new_value : Plaid::RiskCheckBehaviorFraudRingDetectedLabel?)
      raise ArgumentError.new("\"fraud_ring_detected\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @fraud_ring_detected = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bot_detected Object to be assigned
    def bot_detected=(new_value : Plaid::RiskCheckBehaviorBotDetectedLabel?)
      raise ArgumentError.new("\"bot_detected\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @bot_detected = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@user_interactions, @fraud_ring_detected, @bot_detected)
  end
end
