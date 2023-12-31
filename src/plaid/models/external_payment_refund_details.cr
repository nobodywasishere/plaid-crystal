#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./recipient_bacs_nullable"

module Plaid
  # Details about external payment refund
  class ExternalPaymentRefundDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The name of the account holder.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The International Bank Account Number (IBAN) for the account.
    @[JSON::Field(key: "iban", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter iban : String? = nil

    @[JSON::Field(key: "bacs", type: Plaid::RecipientBACSNullable?, default: nil, required: true, nullable: true, emit_null: true)]
    getter bacs : Plaid::RecipientBACSNullable? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @iban : String? = nil,
      @bacs : Plaid::RecipientBACSNullable? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
      end
      unless (_iban = @iban).nil?
      end
      unless (_bacs = @bacs).nil?
        invalid_properties.concat(_bacs.list_invalid_properties_for("bacs")) if _bacs.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @name.nil?
      unless (_name = @name).nil?
      end

      unless (_iban = @iban).nil?
      end

      unless (_bacs = @bacs).nil?
        return false if _bacs.is_a?(OpenApi::Validatable) && !_bacs.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban Object to be assigned
    def iban=(new_value : String?)
      unless new_value.nil?
      end

      @iban = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs Object to be assigned
    def bacs=(new_value : Plaid::RecipientBACSNullable?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bacs = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @iban, @bacs)
  end
end
