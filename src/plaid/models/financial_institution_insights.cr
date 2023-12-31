#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./detected_account"

module Plaid
  # Insights surrounding external financial institution counterparties associated with a user.
  class FinancialInstitutionInsights
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Name of the financial institution counterparty.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The website associated with the counterparty.
    @[JSON::Field(key: "website", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter website : String? = nil

    # Associated accounts, detected based on the nature of transfers to/from this institution.
    @[JSON::Field(key: "detected_accounts", type: Array(DetectedAccount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter detected_accounts : Array(DetectedAccount)? = nil

    # End of Required Properties

    # Optional Properties

    # A unique, stable, Plaid-generated id that maps to the counterparty.
    @[JSON::Field(key: "entity_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: entity_id.nil? && !entity_id_present?)]
    getter entity_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? entity_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @website : String? = nil,
      @detected_accounts : Array(DetectedAccount)? = nil,
      # Optional properties
      @entity_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
      end
      unless (_website = @website).nil?
      end
      invalid_properties.push("\"detected_accounts\" is required and cannot be null") if @detected_accounts.nil?

      unless (_detected_accounts = @detected_accounts).nil?
      end
      unless (_entity_id = @entity_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @name.nil?
      unless (_name = @name).nil?
      end

      unless (_website = @website).nil?
      end

      return false if @detected_accounts.nil?
      unless (_detected_accounts = @detected_accounts).nil?
      end

      unless (_entity_id = @entity_id).nil?
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
    # @param [Object] website Object to be assigned
    def website=(new_value : String?)
      unless new_value.nil?
      end

      @website = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] detected_accounts Object to be assigned
    def detected_accounts=(new_value : Array(DetectedAccount)?)
      raise ArgumentError.new("\"detected_accounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @detected_accounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_id Object to be assigned
    def entity_id=(new_value : String?)
      unless new_value.nil?
      end

      @entity_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @website, @detected_accounts, @entity_id, @entity_id_present)
  end
end
