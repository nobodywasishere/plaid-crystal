#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_initiation_standing_order_metadata"

module Plaid
  # Metadata that captures what specific payment configurations an institution supports when making Payment Initiation requests.
  class PaymentInitiationMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Indicates whether the institution supports payments from a different country.
    @[JSON::Field(key: "supports_international_payments", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supports_international_payments : Bool? = nil

    # Indicates whether the institution supports SEPA Instant payments.
    @[JSON::Field(key: "supports_sepa_instant", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supports_sepa_instant : Bool? = nil

    # A mapping of currency to maximum payment amount (denominated in the smallest unit of currency) supported by the institution.  Example: `{\"GBP\": \"10000\"}`
    @[JSON::Field(key: "maximum_payment_amount", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter maximum_payment_amount : Hash(String, String)? = nil

    # Indicates whether the institution supports returning refund details when initiating a payment.
    @[JSON::Field(key: "supports_refund_details", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter supports_refund_details : Bool? = nil

    @[JSON::Field(key: "standing_order_metadata", type: PaymentInitiationStandingOrderMetadata?, default: nil, required: true, nullable: true, emit_null: true)]
    getter standing_order_metadata : PaymentInitiationStandingOrderMetadata? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @supports_international_payments : Bool? = nil,
      @supports_sepa_instant : Bool? = nil,
      @maximum_payment_amount : Hash(String, String)? = nil,
      @supports_refund_details : Bool? = nil,
      @standing_order_metadata : PaymentInitiationStandingOrderMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"supports_international_payments\" is required and cannot be null") if @supports_international_payments.nil?

      unless (_supports_international_payments = @supports_international_payments).nil?
      end
      invalid_properties.push("\"supports_sepa_instant\" is required and cannot be null") if @supports_sepa_instant.nil?

      unless (_supports_sepa_instant = @supports_sepa_instant).nil?
      end
      invalid_properties.push("\"maximum_payment_amount\" is required and cannot be null") if @maximum_payment_amount.nil?

      unless (_maximum_payment_amount = @maximum_payment_amount).nil?
      end
      invalid_properties.push("\"supports_refund_details\" is required and cannot be null") if @supports_refund_details.nil?

      unless (_supports_refund_details = @supports_refund_details).nil?
      end
      unless (_standing_order_metadata = @standing_order_metadata).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @supports_international_payments.nil?
      unless (_supports_international_payments = @supports_international_payments).nil?
      end

      return false if @supports_sepa_instant.nil?
      unless (_supports_sepa_instant = @supports_sepa_instant).nil?
      end

      return false if @maximum_payment_amount.nil?
      unless (_maximum_payment_amount = @maximum_payment_amount).nil?
      end

      return false if @supports_refund_details.nil?
      unless (_supports_refund_details = @supports_refund_details).nil?
      end

      unless (_standing_order_metadata = @standing_order_metadata).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supports_international_payments Object to be assigned
    def supports_international_payments=(new_value : Bool?)
      raise ArgumentError.new("\"supports_international_payments\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @supports_international_payments = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supports_sepa_instant Object to be assigned
    def supports_sepa_instant=(new_value : Bool?)
      raise ArgumentError.new("\"supports_sepa_instant\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @supports_sepa_instant = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maximum_payment_amount Object to be assigned
    def maximum_payment_amount=(new_value : Hash(String, String)?)
      raise ArgumentError.new("\"maximum_payment_amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @maximum_payment_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supports_refund_details Object to be assigned
    def supports_refund_details=(new_value : Bool?)
      raise ArgumentError.new("\"supports_refund_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @supports_refund_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] standing_order_metadata Object to be assigned
    def standing_order_metadata=(new_value : PaymentInitiationStandingOrderMetadata?)
      unless new_value.nil?
      end

      @standing_order_metadata = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@supports_international_payments, @supports_sepa_instant, @maximum_payment_amount, @supports_refund_details, @standing_order_metadata)
  end
end
