#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./external_payment_initiation_consent_options"
require "./payment_initiation_consent_constraints"
require "./payment_initiation_consent_scope"

module Plaid
  # PaymentInitiationConsentCreateRequest defines the request schema for `/payment_initiation/consent/create`
  class PaymentInitiationConsentCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the recipient the payment consent is for. The created consent can be used to transfer funds to this recipient only.
    @[JSON::Field(key: "recipient_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter recipient_id : String? = nil

    # A reference for the payment consent. This must be an alphanumeric string with at most 18 characters and must not contain any special characters.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 18
    MIN_LENGTH_FOR_REFERENCE =  1

    # An array of payment consent scopes.
    @[JSON::Field(key: "scopes", type: Array(PaymentInitiationConsentScope)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter scopes : Array(PaymentInitiationConsentScope)? = nil
    MIN_ITEMS_FOR_SCOPES = 1

    @[JSON::Field(key: "constraints", type: Plaid::PaymentInitiationConsentConstraints?, default: nil, required: true, nullable: false, emit_null: false)]
    getter constraints : Plaid::PaymentInitiationConsentConstraints? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "options", type: Plaid::ExternalPaymentInitiationConsentOptions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: options.nil? && !options_present?)]
    getter options : Plaid::ExternalPaymentInitiationConsentOptions? = nil

    @[JSON::Field(ignore: true)]
    property? options_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @recipient_id : String? = nil,
      @reference : String? = nil,
      @scopes : Array(PaymentInitiationConsentScope)? = nil,
      @constraints : Plaid::PaymentInitiationConsentConstraints? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @options : Plaid::ExternalPaymentInitiationConsentOptions? = nil
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
      invalid_properties.push("\"scopes\" is required and cannot be null") if @scopes.nil?

      unless (_scopes = @scopes).nil?
        if min_items_error = OpenApi::PrimitiveValidator.min_items_error("scopes", _scopes.size, MIN_ITEMS_FOR_SCOPES)
          invalid_properties.push(min_items_error)
        end
      end
      invalid_properties.push("\"constraints\" is required and cannot be null") if @constraints.nil?

      unless (_constraints = @constraints).nil?
        invalid_properties.concat(_constraints.list_invalid_properties_for("constraints")) if _constraints.is_a?(OpenApi::Validatable)
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
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

      return false if @scopes.nil?
      unless (_scopes = @scopes).nil?
        return false if _scopes.size < MIN_ITEMS_FOR_SCOPES
      end

      return false if @constraints.nil?
      unless (_constraints = @constraints).nil?
        return false if _constraints.is_a?(OpenApi::Validatable) && !_constraints.valid?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
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
    # @param [Object] scopes Object to be assigned
    def scopes=(new_value : Array(PaymentInitiationConsentScope)?)
      raise ArgumentError.new("\"scopes\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_items("scopes", new_value.size, MIN_ITEMS_FOR_SCOPES)
      end

      @scopes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] constraints Object to be assigned
    def constraints=(new_value : Plaid::PaymentInitiationConsentConstraints?)
      raise ArgumentError.new("\"constraints\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @constraints = new_value
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
    # @param [Object] options Object to be assigned
    def options=(new_value : Plaid::ExternalPaymentInitiationConsentOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@recipient_id, @reference, @scopes, @constraints, @client_id, @secret, @options, @options_present)
  end
end
