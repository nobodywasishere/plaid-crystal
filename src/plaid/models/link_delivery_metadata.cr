#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_delivery_webhook_communication_method"
require "./link_delivery_webhook_delivery_status"

module Plaid
  # Information related to the related to the delivery of the link session to users
  class LinkDeliveryMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "communication_method", type: Plaid::LinkDeliveryWebhookCommunicationMethod?, default: nil, required: false, nullable: false, emit_null: false)]
    getter communication_method : Plaid::LinkDeliveryWebhookCommunicationMethod? = nil

    @[JSON::Field(key: "delivery_status", type: Plaid::LinkDeliveryWebhookDeliveryStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter delivery_status : Plaid::LinkDeliveryWebhookDeliveryStatus? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @communication_method : Plaid::LinkDeliveryWebhookCommunicationMethod? = nil,
      @delivery_status : Plaid::LinkDeliveryWebhookDeliveryStatus? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_communication_method = @communication_method).nil?
        invalid_properties.push(_communication_method.error_message) if !_communication_method.valid?
      end
      unless (_delivery_status = @delivery_status).nil?
        invalid_properties.push(_delivery_status.error_message) if !_delivery_status.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_communication_method = @communication_method).nil?
        return false if !_communication_method.valid?
      end

      unless (_delivery_status = @delivery_status).nil?
        return false if !_delivery_status.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] communication_method Object to be assigned
    def communication_method=(new_value : Plaid::LinkDeliveryWebhookCommunicationMethod?)
      unless new_value.nil?
        new_value.validate
      end

      @communication_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delivery_status Object to be assigned
    def delivery_status=(new_value : Plaid::LinkDeliveryWebhookDeliveryStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @delivery_status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@communication_method, @delivery_status)
  end
end
