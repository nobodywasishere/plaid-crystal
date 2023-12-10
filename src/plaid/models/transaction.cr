#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./location"
require "./payment_meta"
require "./personal_finance_category"
require "./transaction_code"
require "./transaction_counterparty"

module Plaid
  # A representation of a transaction
  class Transaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the account in which this transaction occurred.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    # The settled value of the transaction, denominated in the transactions's currency, as stated in `iso_currency_code` or `unofficial_currency_code`. Positive values when money moves out of the account; negative values when money moves in. For example, debit card purchases are positive; credit card payments, direct deposits, and refunds are negative.
    @[JSON::Field(key: "amount", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Float64? = nil

    # The ISO-4217 currency code of the transaction. Always `null` if `unofficial_currency_code` is non-null.
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter iso_currency_code : String? = nil

    # The unofficial currency code associated with the transaction. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
    @[JSON::Field(key: "unofficial_currency_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter unofficial_currency_code : String? = nil

    # A hierarchical array of the categories to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  All Transactions implementations are recommended to use the new `personal_finance_category` instead of `category`, as it provides greater accuracy and more meaningful categorization.  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
    @[JSON::Field(key: "category", type: Array(String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter category : Array(String)? = nil

    # The ID of the category to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).  All Transactions implementations are recommended to use the new `personal_finance_category` instead of `category`, as it provides greater accuracy and more meaningful categorization.  If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
    @[JSON::Field(key: "category_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter category_id : String? = nil

    # For pending transactions, the date that the transaction occurred; for posted transactions, the date that the transaction posted. Both dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ). To receive information about the date that a posted transaction was initiated, see the `authorized_date` field.
    @[JSON::Field(key: "date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter date : Time? = nil

    @[JSON::Field(key: "location", type: Location?, default: nil, required: true, nullable: false, emit_null: false)]
    getter location : Location? = nil

    # The merchant name or transaction description.  If the `transactions` object was returned by a Transactions endpoint such as `/transactions/sync` or `/transactions/get`, this field will always appear. If the `transactions` object was returned by an Assets endpoint such as `/asset_report/get/` or `/asset_report/pdf/get`, this field will only appear in an Asset Report with Insights.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    @[JSON::Field(key: "payment_meta", type: PaymentMeta?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_meta : PaymentMeta? = nil

    # When `true`, identifies the transaction as pending or unsettled. Pending transaction details (name, type, amount, category ID) may change before they are settled.
    @[JSON::Field(key: "pending", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter pending : Bool? = nil

    # The ID of a posted transaction's associated pending transaction, where applicable.
    @[JSON::Field(key: "pending_transaction_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter pending_transaction_id : String? = nil

    # The name of the account owner. This field is not typically populated and only relevant when dealing with sub-accounts.
    @[JSON::Field(key: "account_owner", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter account_owner : String? = nil

    # The unique ID of the transaction. Like all Plaid identifiers, the `transaction_id` is case sensitive.
    @[JSON::Field(key: "transaction_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction_id : String? = nil

    # The date that the transaction was authorized. For posted transactions, the `date` field will indicate the posted date, but `authorized_date` will indicate the day the transaction was authorized by the financial institution. If presenting transactions to the user in a UI, the `authorized_date`, when available, is generally preferable to use over the `date` field for posted transactions, as it will generally represent the date the user actually made the transaction. Dates are returned in an [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DD` ).
    @[JSON::Field(key: "authorized_date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter authorized_date : Time? = nil

    # Date and time when a transaction was authorized in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ). For posted transactions, the `datetime` field will indicate the posted date, but `authorized_datetime` will indicate the day the transaction was authorized by the financial institution. If presenting transactions to the user in a UI, the `authorized_datetime`, when available, is generally preferable to use over the `datetime` field for posted transactions, as it will generally represent the date the user actually made the transaction.  This field is returned for select financial institutions and comes as provided by the institution. It may contain default time values (such as 00:00:00). This field is only populated in API version 2019-05-29 and later.
    @[JSON::Field(key: "authorized_datetime", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter authorized_datetime : Time? = nil

    # Date and time when a transaction was posted in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format ( `YYYY-MM-DDTHH:mm:ssZ` ). For the date that the transaction was initiated, rather than posted, see the `authorized_datetime` field.  This field is returned for select financial institutions and comes as provided by the institution. It may contain default time values (such as 00:00:00). This field is only populated in API version 2019-05-29 and later.
    @[JSON::Field(key: "datetime", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter datetime : Time? = nil

    # The channel used to make a payment. `online:` transactions that took place online.  `in store:` transactions that were made at a physical location.  `other:` transactions that relate to banks, e.g. fees or deposits.  This field replaces the `transaction_type` field.
    @[JSON::Field(key: "payment_channel", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_channel : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_CHANNEL = "invalid value for \"payment_channel\", must be one of [online, in store, other]."
    VALID_VALUES_FOR_PAYMENT_CHANNEL  = String.static_array("online", "in store", "other")

    @[JSON::Field(key: "transaction_code", type: Plaid::TransactionCode?, default: nil, required: true, nullable: true, emit_null: true)]
    getter transaction_code : Plaid::TransactionCode? = nil

    # End of Required Properties

    # Optional Properties

    # The check number of the transaction. This field is only populated for check transactions.
    @[JSON::Field(key: "check_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: check_number.nil? && !check_number_present?)]
    getter check_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? check_number_present : Bool = false

    # The merchant name, as enriched by Plaid from the `name` field. This is typically a more human-readable version of the merchant counterparty in the transaction. For some bank transactions (such as checks or account transfers) where there is no meaningful merchant name, this value will be `null`.
    @[JSON::Field(key: "merchant_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: merchant_name.nil? && !merchant_name_present?)]
    getter merchant_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? merchant_name_present : Bool = false

    # The string returned by the financial institution to describe the transaction. For transactions returned by `/transactions/sync` or `/transactions/get`, this field is in beta and will be omitted unless the client is both enrolled in the closed beta program and has set `options.include_original_description` to `true`.
    @[JSON::Field(key: "original_description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: original_description.nil? && !original_description_present?)]
    getter original_description : String? = nil

    @[JSON::Field(ignore: true)]
    property? original_description_present : Bool = false

    # Please use the `payment_channel` field, `transaction_type` will be deprecated in the future.  `digital:` transactions that took place online.  `place:` transactions that were made at a physical location.  `special:` transactions that relate to banks, e.g. fees or deposits.  `unresolved:` transactions that do not fit into the other three types.
    @[JSON::Field(key: "transaction_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_type : String? = nil
    ERROR_MESSAGE_FOR_TRANSACTION_TYPE = "invalid value for \"transaction_type\", must be one of [digital, place, special, unresolved]."
    VALID_VALUES_FOR_TRANSACTION_TYPE  = String.static_array("digital", "place", "special", "unresolved")

    # The URL of a logo associated with this transaction, if available. The logo will always be 100×100 pixel PNG file.
    @[JSON::Field(key: "logo_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: logo_url.nil? && !logo_url_present?)]
    getter logo_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? logo_url_present : Bool = false

    # The website associated with this transaction, if available.
    @[JSON::Field(key: "website", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: website.nil? && !website_present?)]
    getter website : String? = nil

    @[JSON::Field(ignore: true)]
    property? website_present : Bool = false

    @[JSON::Field(key: "personal_finance_category", type: PersonalFinanceCategory?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: personal_finance_category.nil? && !personal_finance_category_present?)]
    getter personal_finance_category : PersonalFinanceCategory? = nil

    @[JSON::Field(ignore: true)]
    property? personal_finance_category_present : Bool = false

    # The URL of an icon associated with the primary personal finance category. The icon will always be 100×100 pixel PNG file.
    @[JSON::Field(key: "personal_finance_category_icon_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter personal_finance_category_icon_url : String? = nil

    # The counterparties present in the transaction. Counterparties, such as the merchant or the financial institution, are extracted by Plaid from the raw description.
    @[JSON::Field(key: "counterparties", type: Array(TransactionCounterparty)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter counterparties : Array(TransactionCounterparty)? = nil

    # A unique, stable, Plaid-generated ID that maps to the merchant.
    @[JSON::Field(key: "merchant_entity_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: merchant_entity_id.nil? && !merchant_entity_id_present?)]
    getter merchant_entity_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? merchant_entity_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_id : String? = nil,
      @amount : Float64? = nil,
      @iso_currency_code : String? = nil,
      @unofficial_currency_code : String? = nil,
      @category : Array(String)? = nil,
      @category_id : String? = nil,
      @date : Time? = nil,
      @location : Location? = nil,
      @name : String? = nil,
      @payment_meta : PaymentMeta? = nil,
      @pending : Bool? = nil,
      @pending_transaction_id : String? = nil,
      @account_owner : String? = nil,
      @transaction_id : String? = nil,
      @authorized_date : Time? = nil,
      @authorized_datetime : Time? = nil,
      @datetime : Time? = nil,
      @payment_channel : String? = nil,
      @transaction_code : Plaid::TransactionCode? = nil,
      # Optional properties
      @check_number : String? = nil,
      @merchant_name : String? = nil,
      @original_description : String? = nil,
      @transaction_type : String? = nil,
      @logo_url : String? = nil,
      @website : String? = nil,
      @personal_finance_category : PersonalFinanceCategory? = nil,
      @personal_finance_category_icon_url : String? = nil,
      @counterparties : Array(TransactionCounterparty)? = nil,
      @merchant_entity_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_id\" is required and cannot be null") if @account_id.nil?

      unless (_account_id = @account_id).nil?
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
      end
      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end
      unless (_category = @category).nil?
      end
      unless (_category_id = @category_id).nil?
      end
      invalid_properties.push("\"date\" is required and cannot be null") if @date.nil?

      unless (_date = @date).nil?
      end
      invalid_properties.push("\"location\" is required and cannot be null") if @location.nil?

      unless (_location = @location).nil?
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
      end
      invalid_properties.push("\"payment_meta\" is required and cannot be null") if @payment_meta.nil?

      unless (_payment_meta = @payment_meta).nil?
      end
      invalid_properties.push("\"pending\" is required and cannot be null") if @pending.nil?

      unless (_pending = @pending).nil?
      end
      unless (_pending_transaction_id = @pending_transaction_id).nil?
      end
      unless (_account_owner = @account_owner).nil?
      end
      invalid_properties.push("\"transaction_id\" is required and cannot be null") if @transaction_id.nil?

      unless (_transaction_id = @transaction_id).nil?
      end
      unless (_authorized_date = @authorized_date).nil?
      end
      unless (_authorized_datetime = @authorized_datetime).nil?
      end
      unless (_datetime = @datetime).nil?
      end
      invalid_properties.push("\"payment_channel\" is required and cannot be null") if @payment_channel.nil?

      unless (_payment_channel = @payment_channel).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_CHANNEL) unless OpenApi::EnumValidator.valid?(_payment_channel, VALID_VALUES_FOR_PAYMENT_CHANNEL)
      end
      unless (_transaction_code = @transaction_code).nil?
        invalid_properties.push(_transaction_code.error_message) if !_transaction_code.valid?
      end
      unless (_check_number = @check_number).nil?
      end
      unless (_merchant_name = @merchant_name).nil?
      end
      unless (_original_description = @original_description).nil?
      end
      unless (_transaction_type = @transaction_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSACTION_TYPE) unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end
      unless (_logo_url = @logo_url).nil?
      end
      unless (_website = @website).nil?
      end
      unless (_personal_finance_category = @personal_finance_category).nil?
      end
      unless (_personal_finance_category_icon_url = @personal_finance_category_icon_url).nil?
      end
      unless (_counterparties = @counterparties).nil?
      end
      unless (_merchant_entity_id = @merchant_entity_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_id.nil?
      unless (_account_id = @account_id).nil?
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
      end

      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end

      unless (_category = @category).nil?
      end

      unless (_category_id = @category_id).nil?
      end

      return false if @date.nil?
      unless (_date = @date).nil?
      end

      return false if @location.nil?
      unless (_location = @location).nil?
      end

      return false if @name.nil?
      unless (_name = @name).nil?
      end

      return false if @payment_meta.nil?
      unless (_payment_meta = @payment_meta).nil?
      end

      return false if @pending.nil?
      unless (_pending = @pending).nil?
      end

      unless (_pending_transaction_id = @pending_transaction_id).nil?
      end

      unless (_account_owner = @account_owner).nil?
      end

      return false if @transaction_id.nil?
      unless (_transaction_id = @transaction_id).nil?
      end

      unless (_authorized_date = @authorized_date).nil?
      end

      unless (_authorized_datetime = @authorized_datetime).nil?
      end

      unless (_datetime = @datetime).nil?
      end

      return false if @payment_channel.nil?
      unless (_payment_channel = @payment_channel).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_channel, VALID_VALUES_FOR_PAYMENT_CHANNEL)
      end

      unless (_transaction_code = @transaction_code).nil?
        return false if !_transaction_code.valid?
      end

      unless (_check_number = @check_number).nil?
      end

      unless (_merchant_name = @merchant_name).nil?
      end

      unless (_original_description = @original_description).nil?
      end

      unless (_transaction_type = @transaction_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      unless (_logo_url = @logo_url).nil?
      end

      unless (_website = @website).nil?
      end

      unless (_personal_finance_category = @personal_finance_category).nil?
      end

      unless (_personal_finance_category_icon_url = @personal_finance_category_icon_url).nil?
      end

      unless (_counterparties = @counterparties).nil?
      end

      unless (_merchant_entity_id = @merchant_entity_id).nil?
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
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Float64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @amount = new_value
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
    # @param [Object] category Object to be assigned
    def category=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category_id Object to be assigned
    def category_id=(new_value : String?)
      unless new_value.nil?
      end

      @category_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(new_value : Time?)
      raise ArgumentError.new("\"date\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(new_value : Location?)
      raise ArgumentError.new("\"location\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @location = new_value
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
    # @param [Object] payment_meta Object to be assigned
    def payment_meta=(new_value : PaymentMeta?)
      raise ArgumentError.new("\"payment_meta\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @payment_meta = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending Object to be assigned
    def pending=(new_value : Bool?)
      raise ArgumentError.new("\"pending\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @pending = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_transaction_id Object to be assigned
    def pending_transaction_id=(new_value : String?)
      unless new_value.nil?
      end

      @pending_transaction_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_owner Object to be assigned
    def account_owner=(new_value : String?)
      unless new_value.nil?
      end

      @account_owner = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_id Object to be assigned
    def transaction_id=(new_value : String?)
      raise ArgumentError.new("\"transaction_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @transaction_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorized_date Object to be assigned
    def authorized_date=(new_value : Time?)
      unless new_value.nil?
      end

      @authorized_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorized_datetime Object to be assigned
    def authorized_datetime=(new_value : Time?)
      unless new_value.nil?
      end

      @authorized_datetime = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] datetime Object to be assigned
    def datetime=(new_value : Time?)
      unless new_value.nil?
      end

      @datetime = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_channel Object to be assigned
    def payment_channel=(new_value : String?)
      raise ArgumentError.new("\"payment_channel\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("payment_channel", new_value, VALID_VALUES_FOR_PAYMENT_CHANNEL)
      end

      @payment_channel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_code Object to be assigned
    def transaction_code=(new_value : Plaid::TransactionCode?)
      unless new_value.nil?
        new_value.validate
      end

      @transaction_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] check_number Object to be assigned
    def check_number=(new_value : String?)
      unless new_value.nil?
      end

      @check_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchant_name Object to be assigned
    def merchant_name=(new_value : String?)
      unless new_value.nil?
      end

      @merchant_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_description Object to be assigned
    def original_description=(new_value : String?)
      unless new_value.nil?
      end

      @original_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("transaction_type", new_value, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      @transaction_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logo_url Object to be assigned
    def logo_url=(new_value : String?)
      unless new_value.nil?
      end

      @logo_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] website Object to be assigned
    def website=(new_value : String?)
      unless new_value.nil?
      end

      @website = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] personal_finance_category Object to be assigned
    def personal_finance_category=(new_value : PersonalFinanceCategory?)
      unless new_value.nil?
      end

      @personal_finance_category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] personal_finance_category_icon_url Object to be assigned
    def personal_finance_category_icon_url=(new_value : String?)
      unless new_value.nil?
      end

      @personal_finance_category_icon_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] counterparties Object to be assigned
    def counterparties=(new_value : Array(TransactionCounterparty)?)
      unless new_value.nil?
      end

      @counterparties = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchant_entity_id Object to be assigned
    def merchant_entity_id=(new_value : String?)
      unless new_value.nil?
      end

      @merchant_entity_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_id, @amount, @iso_currency_code, @unofficial_currency_code, @category, @category_id, @date, @location, @name, @payment_meta, @pending, @pending_transaction_id, @account_owner, @transaction_id, @authorized_date, @authorized_datetime, @datetime, @payment_channel, @transaction_code, @check_number, @check_number_present, @merchant_name, @merchant_name_present, @original_description, @original_description_present, @transaction_type, @logo_url, @logo_url_present, @website, @website_present, @personal_finance_category, @personal_finance_category_present, @personal_finance_category_icon_url, @counterparties, @merchant_entity_id, @merchant_entity_id_present)
  end
end
