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
  # A set of fields describing the balance for an account. Balance information may be cached unless the balance object was returned by `/accounts/balance/get`.
  class AccountBalance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The amount of funds available to be withdrawn from the account, as determined by the financial institution.  For `credit`-type accounts, the `available` balance typically equals the `limit` less the `current` balance, less any pending outflows plus any pending inflows.  For `depository`-type accounts, the `available` balance typically equals the `current` balance less any pending outflows plus any pending inflows. For `depository`-type accounts, the `available` balance does not include the overdraft limit.  For `investment`-type accounts (or `brokerage`-type accounts for API versions 2018-05-22 and earlier), the `available` balance is the total cash available to withdraw as presented by the institution.  Note that not all institutions calculate the `available`  balance. In the event that `available` balance is unavailable, Plaid will return an `available` balance value of `null`.  Available balance may be cached and is not guaranteed to be up-to-date in realtime unless the value was returned by `/accounts/balance/get`.  If `current` is `null` this field is guaranteed not to be `null`.
    @[JSON::Field(key: "available", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter available : Float64? = nil

    # The total amount of funds in or owed by the account.  For `credit`-type accounts, a positive balance indicates the amount owed; a negative amount indicates the lender owing the account holder.  For `loan`-type accounts, the current balance is the principal remaining on the loan, except in the case of student loan accounts at Sallie Mae (`ins_116944`). For Sallie Mae student loans, the account's balance includes both principal and any outstanding interest.  For `investment`-type accounts (or `brokerage`-type accounts for API versions 2018-05-22 and earlier), the current balance is the total value of assets as presented by the institution.  Note that balance information may be cached unless the value was returned by `/accounts/balance/get`; if the Item is enabled for Transactions, the balance will be at least as recent as the most recent Transaction update. If you require realtime balance information, use the `available` balance as provided by `/accounts/balance/get`.  When returned by `/accounts/balance/get`, this field may be `null`. When this happens, `available` is guaranteed not to be `null`.
    @[JSON::Field(key: "current", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter current : Float64? = nil

    # For `credit`-type accounts, this represents the credit limit.  For `depository`-type accounts, this represents the pre-arranged overdraft limit, which is common for current (checking) accounts in Europe.  In North America, this field is typically only available for `credit`-type accounts.
    @[JSON::Field(key: "limit", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter limit : Float64? = nil

    # The ISO-4217 currency code of the balance. Always null if `unofficial_currency_code` is non-null.
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter iso_currency_code : String? = nil

    # The unofficial currency code associated with the balance. Always null if `iso_currency_code` is non-null. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `unofficial_currency_code`s.
    @[JSON::Field(key: "unofficial_currency_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter unofficial_currency_code : String? = nil

    # End of Required Properties

    # Optional Properties

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the last time that the balance for the given account has been updated  This is currently only provided when the `min_last_updated_datetime` is passed when calling `/accounts/balance/get` for `ins_128026` (Capital One).
    @[JSON::Field(key: "last_updated_datetime", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_updated_datetime.nil? && !last_updated_datetime_present?, converter: Time::RFC3339Converter)]
    getter last_updated_datetime : Time? = nil

    @[JSON::Field(ignore: true)]
    property? last_updated_datetime_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @available : Float64? = nil,
      @current : Float64? = nil,
      @limit : Float64? = nil,
      @iso_currency_code : String? = nil,
      @unofficial_currency_code : String? = nil,
      # Optional properties
      @last_updated_datetime : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_available = @available).nil?
      end
      unless (_current = @current).nil?
      end
      unless (_limit = @limit).nil?
      end
      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end
      unless (_last_updated_datetime = @last_updated_datetime).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_available = @available).nil?
      end

      unless (_current = @current).nil?
      end

      unless (_limit = @limit).nil?
      end

      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end

      unless (_last_updated_datetime = @last_updated_datetime).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available Object to be assigned
    def available=(new_value : Float64?)
      unless new_value.nil?
      end

      @available = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current Object to be assigned
    def current=(new_value : Float64?)
      unless new_value.nil?
      end

      @current = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] limit Object to be assigned
    def limit=(new_value : Float64?)
      unless new_value.nil?
      end

      @limit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unofficial_currency_code Object to be assigned
    def unofficial_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @unofficial_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_updated_datetime Object to be assigned
    def last_updated_datetime=(new_value : Time?)
      unless new_value.nil?
      end

      @last_updated_datetime = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@available, @current, @limit, @iso_currency_code, @unofficial_currency_code, @last_updated_datetime, @last_updated_datetime_present)
  end
end
