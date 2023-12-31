#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./external_payment_options"
require "./external_payment_schedule_request"
require "./payment_amount"

module Plaid
  # PaymentInitiationPaymentCreateRequest defines the request schema for `/payment_initiation/payment/create`
  class PaymentInitiationPaymentCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the recipient the payment is for.
    @[JSON::Field(key: "recipient_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter recipient_id : String? = nil

    # A reference for the payment. This must be an alphanumeric string with at most 18 characters and must not contain any special characters (since not all institutions support them). In order to track settlement via Payment Confirmation, each payment must have a unique reference. If the reference provided through the API is not unique, Plaid will adjust it. Both the originally provided and automatically adjusted references (if any) can be found in the `reference` and `adjusted_reference` fields, respectively.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 18
    MIN_LENGTH_FOR_REFERENCE =  1

    @[JSON::Field(key: "amount", type: Plaid::PaymentAmount?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Plaid::PaymentAmount? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "schedule", type: Plaid::ExternalPaymentScheduleRequest?, default: nil, required: false, nullable: false, emit_null: false)]
    getter schedule : Plaid::ExternalPaymentScheduleRequest? = nil

    @[JSON::Field(key: "options", type: Plaid::ExternalPaymentOptions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: options.nil? && !options_present?)]
    getter options : Plaid::ExternalPaymentOptions? = nil

    @[JSON::Field(ignore: true)]
    property? options_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @recipient_id : String? = nil,
      @reference : String? = nil,
      @amount : Plaid::PaymentAmount? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @schedule : Plaid::ExternalPaymentScheduleRequest? = nil,
      @options : Plaid::ExternalPaymentOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"recipient_id\" is required and cannot be null") if @recipient_id.nil?

      unless (_recipient_id = @recipient_id).nil?
      end
      invalid_properties.push("\"reference\" is required and cannot be null") if @reference.nil?

      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("reference", _reference.to_s.size, MIN_LENGTH_FOR_REFERENCE)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
        invalid_properties.concat(_amount.list_invalid_properties_for("amount")) if _amount.is_a?(OpenApi::Validatable)
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_schedule = @schedule).nil?
        invalid_properties.concat(_schedule.list_invalid_properties_for("schedule")) if _schedule.is_a?(OpenApi::Validatable)
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @recipient_id.nil?
      unless (_recipient_id = @recipient_id).nil?
      end

      return false if @reference.nil?
      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
        return false if _reference.to_s.size < MIN_LENGTH_FOR_REFERENCE
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
        return false if _amount.is_a?(OpenApi::Validatable) && !_amount.valid?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_schedule = @schedule).nil?
        return false if _schedule.is_a?(OpenApi::Validatable) && !_schedule.valid?
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recipient_id Object to be assigned
    def recipient_id=(new_value : String?)
      raise ArgumentError.new("\"recipient_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @recipient_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      raise ArgumentError.new("\"reference\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
        OpenApi::PrimitiveValidator.validate_min_length("reference", new_value.to_s.size, MIN_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Plaid::PaymentAmount?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @amount = new_value
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
    # @param [Object] schedule Object to be assigned
    def schedule=(new_value : Plaid::ExternalPaymentScheduleRequest?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @schedule = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(new_value : Plaid::ExternalPaymentOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@recipient_id, @reference, @amount, @client_id, @secret, @schedule, @options, @options_present)
  end
end
