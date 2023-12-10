#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_filter"
require "./depository_filter"
require "./investment_filter"
require "./loan_filter"

module Plaid
  # The `account_filters` specified in the original call to `/link/token/create`.
  class AccountFiltersResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "depository", type: DepositoryFilter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter depository : DepositoryFilter? = nil

    @[JSON::Field(key: "credit", type: CreditFilter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter credit : CreditFilter? = nil

    @[JSON::Field(key: "loan", type: LoanFilter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter loan : LoanFilter? = nil

    @[JSON::Field(key: "investment", type: InvestmentFilter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter investment : InvestmentFilter? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @depository : DepositoryFilter? = nil,
      @credit : CreditFilter? = nil,
      @loan : LoanFilter? = nil,
      @investment : InvestmentFilter? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_depository = @depository).nil?
      end
      unless (_credit = @credit).nil?
      end
      unless (_loan = @loan).nil?
      end
      unless (_investment = @investment).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_depository = @depository).nil?
      end

      unless (_credit = @credit).nil?
      end

      unless (_loan = @loan).nil?
      end

      unless (_investment = @investment).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] depository Object to be assigned
    def depository=(new_value : DepositoryFilter?)
      unless new_value.nil?
      end

      @depository = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit Object to be assigned
    def credit=(new_value : CreditFilter?)
      unless new_value.nil?
      end

      @credit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] loan Object to be assigned
    def loan=(new_value : LoanFilter?)
      unless new_value.nil?
      end

      @loan = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] investment Object to be assigned
    def investment=(new_value : InvestmentFilter?)
      unless new_value.nil?
      end

      @investment = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@depository, @credit, @loan, @investment)
  end
end
