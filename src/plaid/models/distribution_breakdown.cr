#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./pay"

module Plaid
  # Information about the accounts that the payment was distributed to.
  class DistributionBreakdown
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Name of the account for the given distribution.
    @[JSON::Field(key: "account_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_name.nil? && !account_name_present?)]
    getter account_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_name_present : Bool = false

    # The name of the bank that the payment is being deposited to.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # The amount distributed to this account.
    @[JSON::Field(key: "current_amount", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: current_amount.nil? && !current_amount_present?)]
    getter current_amount : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? current_amount_present : Bool = false

    # The ISO-4217 currency code of the net pay. Always `null` if `unofficial_currency_code` is non-null.
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iso_currency_code.nil? && !iso_currency_code_present?)]
    getter iso_currency_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? iso_currency_code_present : Bool = false

    # The last 2-4 alphanumeric characters of an account's official account number.
    @[JSON::Field(key: "mask", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mask.nil? && !mask_present?)]
    getter mask : String? = nil

    @[JSON::Field(ignore: true)]
    property? mask_present : Bool = false

    # Type of the account that the paystub was sent to (e.g. 'checking').
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # The unofficial currency code associated with the net pay. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
    @[JSON::Field(key: "unofficial_currency_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unofficial_currency_code.nil? && !unofficial_currency_code_present?)]
    getter unofficial_currency_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? unofficial_currency_code_present : Bool = false

    @[JSON::Field(key: "current_pay", type: Pay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter current_pay : Pay? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_name : String? = nil,
      @bank_name : String? = nil,
      @current_amount : Float64? = nil,
      @iso_currency_code : String? = nil,
      @mask : String? = nil,
      @_type : String? = nil,
      @unofficial_currency_code : String? = nil,
      @current_pay : Pay? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_name = @account_name).nil?
      end
      unless (_bank_name = @bank_name).nil?
      end
      unless (_current_amount = @current_amount).nil?
      end
      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_mask = @mask).nil?
      end
      unless (__type = @_type).nil?
      end
      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end
      unless (_current_pay = @current_pay).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_name = @account_name).nil?
      end

      unless (_bank_name = @bank_name).nil?
      end

      unless (_current_amount = @current_amount).nil?
      end

      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_mask = @mask).nil?
      end

      unless (__type = @_type).nil?
      end

      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end

      unless (_current_pay = @current_pay).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_name Object to be assigned
    def account_name=(new_value : String?)
      unless new_value.nil?
      end

      @account_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(new_value : String?)
      unless new_value.nil?
      end

      @bank_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_amount Object to be assigned
    def current_amount=(new_value : Float64?)
      unless new_value.nil?
      end

      @current_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mask Object to be assigned
    def mask=(new_value : String?)
      unless new_value.nil?
      end

      @mask = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unofficial_currency_code Object to be assigned
    def unofficial_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @unofficial_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_pay Object to be assigned
    def current_pay=(new_value : Pay?)
      unless new_value.nil?
      end

      @current_pay = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_name, @account_name_present, @bank_name, @bank_name_present, @current_amount, @current_amount_present, @iso_currency_code, @iso_currency_code_present, @mask, @mask_present, @_type, @_type_present, @unofficial_currency_code, @unofficial_currency_code_present, @current_pay)
  end
end
