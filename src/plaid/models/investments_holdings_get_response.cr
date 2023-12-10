#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_base"
require "./holding"
require "./item"
require "./security"

module Plaid
  # InvestmentsHoldingsGetResponse defines the response schema for `/investments/holdings/get`
  class InvestmentsHoldingsGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The accounts associated with the Item
    @[JSON::Field(key: "accounts", type: Array(AccountBase)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter accounts : Array(AccountBase)? = nil

    # The holdings belonging to investment accounts associated with the Item. Details of the securities in the holdings are provided in the `securities` field.
    @[JSON::Field(key: "holdings", type: Array(Holding)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter holdings : Array(Holding)? = nil

    # Objects describing the securities held in the accounts associated with the Item.
    @[JSON::Field(key: "securities", type: Array(Security)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter securities : Array(Security)? = nil

    @[JSON::Field(key: "item", type: Item?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item : Item? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # When true, this field indicates that the Item's portfolio was manually created with the Investments Fallback flow.
    @[JSON::Field(key: "is_investments_fallback_item", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter is_investments_fallback_item : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @accounts : Array(AccountBase)? = nil,
      @holdings : Array(Holding)? = nil,
      @securities : Array(Security)? = nil,
      @item : Item? = nil,
      @request_id : String? = nil,
      # Optional properties
      @is_investments_fallback_item : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"accounts\" is required and cannot be null") if @accounts.nil?

      unless (_accounts = @accounts).nil?
      end
      invalid_properties.push("\"holdings\" is required and cannot be null") if @holdings.nil?

      unless (_holdings = @holdings).nil?
      end
      invalid_properties.push("\"securities\" is required and cannot be null") if @securities.nil?

      unless (_securities = @securities).nil?
      end
      invalid_properties.push("\"item\" is required and cannot be null") if @item.nil?

      unless (_item = @item).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      unless (_is_investments_fallback_item = @is_investments_fallback_item).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @accounts.nil?
      unless (_accounts = @accounts).nil?
      end

      return false if @holdings.nil?
      unless (_holdings = @holdings).nil?
      end

      return false if @securities.nil?
      unless (_securities = @securities).nil?
      end

      return false if @item.nil?
      unless (_item = @item).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      unless (_is_investments_fallback_item = @is_investments_fallback_item).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accounts Object to be assigned
    def accounts=(new_value : Array(AccountBase)?)
      raise ArgumentError.new("\"accounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @accounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] holdings Object to be assigned
    def holdings=(new_value : Array(Holding)?)
      raise ArgumentError.new("\"holdings\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @holdings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] securities Object to be assigned
    def securities=(new_value : Array(Security)?)
      raise ArgumentError.new("\"securities\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @securities = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item Object to be assigned
    def item=(new_value : Item?)
      raise ArgumentError.new("\"item\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @item = new_value
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
    # @param [Object] is_investments_fallback_item Object to be assigned
    def is_investments_fallback_item=(new_value : Bool?)
      unless new_value.nil?
      end

      @is_investments_fallback_item = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@accounts, @holdings, @securities, @item, @request_id, @is_investments_fallback_item)
  end
end