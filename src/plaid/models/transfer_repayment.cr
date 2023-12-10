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
  # A repayment is created automatically after one or more guaranteed transactions receive a return. If there are multiple eligible returns in a day, they are batched together into a single repayment.  Repayments are sent over ACH, with funds typically available on the next banking day.
  class TransferRepayment
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Identifier of the repayment.
    @[JSON::Field(key: "repayment_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter repayment_id : String? = nil

    # The datetime when the repayment occurred, in RFC 3339 format.
    @[JSON::Field(key: "created", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created : Time? = nil

    # Decimal amount of the repayment as it appears on your account ledger.
    @[JSON::Field(key: "amount", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : String? = nil

    # The currency of the repayment, e.g. \"USD\".
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter iso_currency_code : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @repayment_id : String? = nil,
      @created : Time? = nil,
      @amount : String? = nil,
      @iso_currency_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"repayment_id\" is required and cannot be null") if @repayment_id.nil?

      unless (_repayment_id = @repayment_id).nil?
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_created = @created).nil?
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
      end
      invalid_properties.push("\"iso_currency_code\" is required and cannot be null") if @iso_currency_code.nil?

      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @repayment_id.nil?
      unless (_repayment_id = @repayment_id).nil?
      end

      return false if @created.nil?
      unless (_created = @created).nil?
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
      end

      return false if @iso_currency_code.nil?
      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] repayment_id Object to be assigned
    def repayment_id=(new_value : String?)
      raise ArgumentError.new("\"repayment_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @repayment_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Time?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : String?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      raise ArgumentError.new("\"iso_currency_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@repayment_id, @created, @amount, @iso_currency_code)
  end
end