#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transactions_rule_details"

module Plaid
  # TransactionsRulesCreateRequest defines the request schema for `beta/transactions/rules/v1/create`
  class TransactionsRulesCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The access token associated with the Item data is being requested for.
    @[JSON::Field(key: "access_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter access_token : String? = nil

    # Personal finance detailed category.  All implementations are encouraged to use this field instead of `category`, as it provides more meaningful and accurate categorization.  See the [`taxonomy csv file`](https://plaid.com/documents/transactions-personal-finance-category-taxonomy.csv) for a full list of personal finance categories.
    @[JSON::Field(key: "personal_finance_category", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter personal_finance_category : String? = nil

    @[JSON::Field(key: "rule_details", type: Plaid::TransactionsRuleDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter rule_details : Plaid::TransactionsRuleDetails? = nil

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
      @personal_finance_category : String? = nil,
      @rule_details : Plaid::TransactionsRuleDetails? = nil,
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
      invalid_properties.push("\"personal_finance_category\" is required and cannot be null") if @personal_finance_category.nil?

      unless (_personal_finance_category = @personal_finance_category).nil?
      end
      invalid_properties.push("\"rule_details\" is required and cannot be null") if @rule_details.nil?

      unless (_rule_details = @rule_details).nil?
        invalid_properties.concat(_rule_details.list_invalid_properties_for("rule_details")) if _rule_details.is_a?(OpenApi::Validatable)
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

      return false if @personal_finance_category.nil?
      unless (_personal_finance_category = @personal_finance_category).nil?
      end

      return false if @rule_details.nil?
      unless (_rule_details = @rule_details).nil?
        return false if _rule_details.is_a?(OpenApi::Validatable) && !_rule_details.valid?
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
    # @param [Object] personal_finance_category Object to be assigned
    def personal_finance_category=(new_value : String?)
      raise ArgumentError.new("\"personal_finance_category\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @personal_finance_category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rule_details Object to be assigned
    def rule_details=(new_value : Plaid::TransactionsRuleDetails?)
      raise ArgumentError.new("\"rule_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @rule_details = new_value
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
    def_equals_and_hash(@access_token, @personal_finance_category, @rule_details, @client_id, @secret)
  end
end