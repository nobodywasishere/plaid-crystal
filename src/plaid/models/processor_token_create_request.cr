#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Plaid
  # ProcessorTokenCreateRequest defines the request schema for `/processor/token/create`
  class ProcessorTokenCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The access token associated with the Item data is being requested for.
    @[JSON::Field(key: "access_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter access_token : String? = nil

    # The `account_id` value obtained from the `onSuccess` callback in Link
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    # The processor you are integrating with.
    @[JSON::Field(key: "processor", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter processor : String? = nil
    ERROR_MESSAGE_FOR_PROCESSOR = "invalid value for \"processor\", must be one of [dwolla, galileo, modern_treasury, ocrolus, prime_trust, vesta, drivewealth, vopay, achq, check, checkbook, circle, sila_money, rize, svb_api, unit, wyre, lithic, alpaca, astra, moov, treasury_prime, marqeta, checkout, solid, highnote, gemini, apex_clearing, gusto, adyen, atomic, i2c, wepay, riskified, utb, adp_roll, fortress_trust, bond, bakkt, teal, zero_hash, taba_pay, knot]."
    VALID_VALUES_FOR_PROCESSOR  = String.static_array("dwolla", "galileo", "modern_treasury", "ocrolus", "prime_trust", "vesta", "drivewealth", "vopay", "achq", "check", "checkbook", "circle", "sila_money", "rize", "svb_api", "unit", "wyre", "lithic", "alpaca", "astra", "moov", "treasury_prime", "marqeta", "checkout", "solid", "highnote", "gemini", "apex_clearing", "gusto", "adyen", "atomic", "i2c", "wepay", "riskified", "utb", "adp_roll", "fortress_trust", "bond", "bakkt", "teal", "zero_hash", "taba_pay", "knot")

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @access_token : String? = nil,
      @account_id : String? = nil,
      @processor : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"access_token\" is required and cannot be null") if @access_token.nil?

      unless (_access_token = @access_token).nil?
      end
      invalid_properties.push("\"account_id\" is required and cannot be null") if @account_id.nil?

      unless (_account_id = @account_id).nil?
      end
      invalid_properties.push("\"processor\" is required and cannot be null") if @processor.nil?

      unless (_processor = @processor).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PROCESSOR) unless OpenApi::EnumValidator.valid?(_processor, VALID_VALUES_FOR_PROCESSOR)
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @access_token.nil?
      unless (_access_token = @access_token).nil?
      end

      return false if @account_id.nil?
      unless (_account_id = @account_id).nil?
      end

      return false if @processor.nil?
      unless (_processor = @processor).nil?
        return false unless OpenApi::EnumValidator.valid?(_processor, VALID_VALUES_FOR_PROCESSOR)
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] access_token Object to be assigned
    def access_token=(new_value : String?)
      raise ArgumentError.new("\"access_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @access_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      raise ArgumentError.new("\"account_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] processor Object to be assigned
    def processor=(new_value : String?)
      raise ArgumentError.new("\"processor\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("processor", new_value, VALID_VALUES_FOR_PROCESSOR)
      end

      @processor = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@access_token, @account_id, @processor, @client_id, @secret)
  end
end