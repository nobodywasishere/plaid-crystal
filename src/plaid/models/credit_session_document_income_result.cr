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
  # The details of a document income verification in Link
  class CreditSessionDocumentIncomeResult
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The number of paystubs uploaded by the user.
    @[JSON::Field(key: "num_paystubs_uploaded", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter num_paystubs_uploaded : Int32? = nil

    # The number of w2s uploaded by the user.
    @[JSON::Field(key: "num_w2s_uploaded", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter num_w2s_uploaded : Int32? = nil

    # The number of bank statements uploaded by the user.
    @[JSON::Field(key: "num_bank_statements_uploaded", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter num_bank_statements_uploaded : Int32? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @num_paystubs_uploaded : Int32? = nil,
      @num_w2s_uploaded : Int32? = nil,
      @num_bank_statements_uploaded : Int32? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"num_paystubs_uploaded\" is required and cannot be null") if @num_paystubs_uploaded.nil?

      unless (_num_paystubs_uploaded = @num_paystubs_uploaded).nil?
      end
      invalid_properties.push("\"num_w2s_uploaded\" is required and cannot be null") if @num_w2s_uploaded.nil?

      unless (_num_w2s_uploaded = @num_w2s_uploaded).nil?
      end
      invalid_properties.push("\"num_bank_statements_uploaded\" is required and cannot be null") if @num_bank_statements_uploaded.nil?

      unless (_num_bank_statements_uploaded = @num_bank_statements_uploaded).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @num_paystubs_uploaded.nil?
      unless (_num_paystubs_uploaded = @num_paystubs_uploaded).nil?
      end

      return false if @num_w2s_uploaded.nil?
      unless (_num_w2s_uploaded = @num_w2s_uploaded).nil?
      end

      return false if @num_bank_statements_uploaded.nil?
      unless (_num_bank_statements_uploaded = @num_bank_statements_uploaded).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_paystubs_uploaded Object to be assigned
    def num_paystubs_uploaded=(new_value : Int32?)
      raise ArgumentError.new("\"num_paystubs_uploaded\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @num_paystubs_uploaded = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_w2s_uploaded Object to be assigned
    def num_w2s_uploaded=(new_value : Int32?)
      raise ArgumentError.new("\"num_w2s_uploaded\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @num_w2s_uploaded = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_bank_statements_uploaded Object to be assigned
    def num_bank_statements_uploaded=(new_value : Int32?)
      raise ArgumentError.new("\"num_bank_statements_uploaded\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @num_bank_statements_uploaded = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@num_paystubs_uploaded, @num_w2s_uploaded, @num_bank_statements_uploaded)
  end
end
