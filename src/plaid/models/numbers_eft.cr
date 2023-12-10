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
  # Identifying information for transferring money to or from a Canadian bank account via EFT.
  class NumbersEFT
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Plaid account ID associated with the account numbers
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    # The EFT account number for the account
    @[JSON::Field(key: "account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : String? = nil

    # The EFT institution number for the account
    @[JSON::Field(key: "institution", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter institution : String? = nil

    # The EFT branch number for the account
    @[JSON::Field(key: "branch", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter branch : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_id : String? = nil,
      @account : String? = nil,
      @institution : String? = nil,
      @branch : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_id\" is required and cannot be null") if @account_id.nil?

      unless (_account_id = @account_id).nil?
      end
      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?

      unless (_account = @account).nil?
      end
      invalid_properties.push("\"institution\" is required and cannot be null") if @institution.nil?

      unless (_institution = @institution).nil?
      end
      invalid_properties.push("\"branch\" is required and cannot be null") if @branch.nil?

      unless (_branch = @branch).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_id.nil?
      unless (_account_id = @account_id).nil?
      end

      return false if @account.nil?
      unless (_account = @account).nil?
      end

      return false if @institution.nil?
      unless (_institution = @institution).nil?
      end

      return false if @branch.nil?
      unless (_branch = @branch).nil?
      end

      true
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
    # @param [Object] account Object to be assigned
    def account=(new_value : String?)
      raise ArgumentError.new("\"account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution Object to be assigned
    def institution=(new_value : String?)
      raise ArgumentError.new("\"institution\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @institution = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] branch Object to be assigned
    def branch=(new_value : String?)
      raise ArgumentError.new("\"branch\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @branch = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_id, @account, @institution, @branch)
  end
end
