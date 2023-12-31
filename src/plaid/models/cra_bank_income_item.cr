#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./cra_bank_income_account"
require "./cra_bank_income_source"

module Plaid
  # The details and metadata for an end user's Item.
  class CraBankIncomeItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The Item's accounts that have Bank Income data.
    @[JSON::Field(key: "bank_income_accounts", type: Array(Plaid::CraBankIncomeAccount)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_income_accounts : Array(Plaid::CraBankIncomeAccount)? = nil

    # The income sources for this Item. Each entry in the array is a single income source.
    @[JSON::Field(key: "bank_income_sources", type: Array(Plaid::CraBankIncomeSource)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_income_sources : Array(Plaid::CraBankIncomeSource)? = nil

    # The time when this Item's data was last retrieved from the financial institution.
    @[JSON::Field(key: "last_updated_time", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter last_updated_time : Time? = nil

    # The unique identifier of the institution associated with the Item.
    @[JSON::Field(key: "institution_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter institution_id : String? = nil

    # The name of the institution associated with the Item.
    @[JSON::Field(key: "institution_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter institution_name : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_income_accounts : Array(Plaid::CraBankIncomeAccount)? = nil,
      @bank_income_sources : Array(Plaid::CraBankIncomeSource)? = nil,
      @last_updated_time : Time? = nil,
      @institution_id : String? = nil,
      @institution_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_bank_income_accounts = @bank_income_accounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "bank_income_accounts", container: _bank_income_accounts)) if _bank_income_accounts.is_a?(Array)
      end
      unless (_bank_income_sources = @bank_income_sources).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "bank_income_sources", container: _bank_income_sources)) if _bank_income_sources.is_a?(Array)
      end
      unless (_last_updated_time = @last_updated_time).nil?
      end
      unless (_institution_id = @institution_id).nil?
      end
      unless (_institution_name = @institution_name).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bank_income_accounts = @bank_income_accounts).nil?
        return false if _bank_income_accounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _bank_income_accounts)
      end

      unless (_bank_income_sources = @bank_income_sources).nil?
        return false if _bank_income_sources.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _bank_income_sources)
      end

      unless (_last_updated_time = @last_updated_time).nil?
      end

      unless (_institution_id = @institution_id).nil?
      end

      unless (_institution_name = @institution_name).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_income_accounts Object to be assigned
    def bank_income_accounts=(new_value : Array(Plaid::CraBankIncomeAccount)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @bank_income_accounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_income_sources Object to be assigned
    def bank_income_sources=(new_value : Array(Plaid::CraBankIncomeSource)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @bank_income_sources = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_updated_time Object to be assigned
    def last_updated_time=(new_value : Time?)
      unless new_value.nil?
      end

      @last_updated_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_id Object to be assigned
    def institution_id=(new_value : String?)
      unless new_value.nil?
      end

      @institution_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_name Object to be assigned
    def institution_name=(new_value : String?)
      unless new_value.nil?
      end

      @institution_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_income_accounts, @bank_income_sources, @last_updated_time, @institution_id, @institution_name)
  end
end
