#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_failure"

module Plaid
  # Defines the request schema for `/sandbox/bank_transfer/simulate`
  class SandboxBankTransferSimulateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Plaid’s unique identifier for a bank transfer.
    @[JSON::Field(key: "bank_transfer_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank_transfer_id : String? = nil

    # The asynchronous event to be simulated. May be: `posted`, `failed`, or `reversed`.  An error will be returned if the event type is incompatible with the current transfer status. Compatible status --> event type transitions include:  `pending` --> `failed`  `pending` --> `posted`  `posted` --> `reversed`
    @[JSON::Field(key: "event_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter event_type : String? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "failure_reason", type: BankTransferFailure?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_reason.nil? && !failure_reason_present?)]
    getter failure_reason : BankTransferFailure? = nil

    @[JSON::Field(ignore: true)]
    property? failure_reason_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank_transfer_id : String? = nil,
      @event_type : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @failure_reason : BankTransferFailure? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"bank_transfer_id\" is required and cannot be null") if @bank_transfer_id.nil?

      unless (_bank_transfer_id = @bank_transfer_id).nil?
      end
      invalid_properties.push("\"event_type\" is required and cannot be null") if @event_type.nil?

      unless (_event_type = @event_type).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_failure_reason = @failure_reason).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @bank_transfer_id.nil?
      unless (_bank_transfer_id = @bank_transfer_id).nil?
      end

      return false if @event_type.nil?
      unless (_event_type = @event_type).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_failure_reason = @failure_reason).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer_id Object to be assigned
    def bank_transfer_id=(new_value : String?)
      raise ArgumentError.new("\"bank_transfer_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @bank_transfer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_type Object to be assigned
    def event_type=(new_value : String?)
      raise ArgumentError.new("\"event_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @event_type = new_value
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
    # @param [Object] failure_reason Object to be assigned
    def failure_reason=(new_value : BankTransferFailure?)
      unless new_value.nil?
      end

      @failure_reason = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer_id, @event_type, @client_id, @secret, @failure_reason, @failure_reason_present)
  end
end
