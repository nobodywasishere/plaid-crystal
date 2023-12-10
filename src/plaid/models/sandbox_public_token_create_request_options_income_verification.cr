#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./income_verification_source_type"
require "./sandbox_public_token_create_request_income_verification_bank_income"

module Plaid
  # A set of parameters for income verification options. This field is required if `income_verification` is included in the `initial_products` array.
  class SandboxPublicTokenCreateRequestOptionsIncomeVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The types of source income data that users will be permitted to share. Options include `bank` and `payroll`. Currently you can only specify one of these options.
    @[JSON::Field(key: "income_source_types", type: Array(IncomeVerificationSourceType)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter income_source_types : Array(IncomeVerificationSourceType)? = nil

    @[JSON::Field(key: "bank_income", type: Plaid::SandboxPublicTokenCreateRequestIncomeVerificationBankIncome?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_income : Plaid::SandboxPublicTokenCreateRequestIncomeVerificationBankIncome? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @income_source_types : Array(IncomeVerificationSourceType)? = nil,
      @bank_income : Plaid::SandboxPublicTokenCreateRequestIncomeVerificationBankIncome? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_income_source_types = @income_source_types).nil?
      end
      unless (_bank_income = @bank_income).nil?
        invalid_properties.concat(_bank_income.list_invalid_properties_for("bank_income")) if _bank_income.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_income_source_types = @income_source_types).nil?
      end

      unless (_bank_income = @bank_income).nil?
        return false if _bank_income.is_a?(OpenApi::Validatable) && !_bank_income.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] income_source_types Object to be assigned
    def income_source_types=(new_value : Array(IncomeVerificationSourceType)?)
      unless new_value.nil?
      end

      @income_source_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_income Object to be assigned
    def bank_income=(new_value : Plaid::SandboxPublicTokenCreateRequestIncomeVerificationBankIncome?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bank_income = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@income_source_types, @bank_income)
  end
end