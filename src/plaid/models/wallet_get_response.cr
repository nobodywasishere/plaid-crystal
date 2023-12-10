#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./wallet_balance"
require "./wallet_numbers"
require "./wallet_status"

module Plaid
  # WalletGetResponse defines the response schema for `/wallet/get`
  class WalletGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique ID identifying the e-wallet
    @[JSON::Field(key: "wallet_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter wallet_id : String? = nil

    @[JSON::Field(key: "balance", type: WalletBalance?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balance : WalletBalance? = nil

    @[JSON::Field(key: "numbers", type: WalletNumbers?, default: nil, required: true, nullable: false, emit_null: false)]
    getter numbers : WalletNumbers? = nil

    @[JSON::Field(key: "status", type: Plaid::WalletStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::WalletStatus? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # The ID of the recipient that corresponds to the e-wallet account numbers
    @[JSON::Field(key: "recipient_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter recipient_id : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @wallet_id : String? = nil,
      @balance : WalletBalance? = nil,
      @numbers : WalletNumbers? = nil,
      @status : Plaid::WalletStatus? = nil,
      @request_id : String? = nil,
      # Optional properties
      @recipient_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"wallet_id\" is required and cannot be null") if @wallet_id.nil?

      unless (_wallet_id = @wallet_id).nil?
      end
      invalid_properties.push("\"balance\" is required and cannot be null") if @balance.nil?

      unless (_balance = @balance).nil?
      end
      invalid_properties.push("\"numbers\" is required and cannot be null") if @numbers.nil?

      unless (_numbers = @numbers).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      unless (_recipient_id = @recipient_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @wallet_id.nil?
      unless (_wallet_id = @wallet_id).nil?
      end

      return false if @balance.nil?
      unless (_balance = @balance).nil?
      end

      return false if @numbers.nil?
      unless (_numbers = @numbers).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      unless (_recipient_id = @recipient_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet_id Object to be assigned
    def wallet_id=(new_value : String?)
      raise ArgumentError.new("\"wallet_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @wallet_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance Object to be assigned
    def balance=(new_value : WalletBalance?)
      raise ArgumentError.new("\"balance\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] numbers Object to be assigned
    def numbers=(new_value : WalletNumbers?)
      raise ArgumentError.new("\"numbers\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @numbers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::WalletStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recipient_id Object to be assigned
    def recipient_id=(new_value : String?)
      unless new_value.nil?
      end

      @recipient_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@wallet_id, @balance, @numbers, @status, @request_id, @recipient_id)
  end
end