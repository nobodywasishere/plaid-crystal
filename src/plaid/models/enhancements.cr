#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./counterparty"
require "./location"
require "./payment_channel"
require "./personal_finance_category"

module Plaid
  # A grouping of the Plaid produced transaction enhancement fields.
  class Enhancements
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "payment_channel", type: Plaid::PaymentChannel?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_channel : Plaid::PaymentChannel? = nil

    # The ID of the category to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).
    @[JSON::Field(key: "category_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter category_id : String? = nil

    # A hierarchical array of the categories to which this transaction belongs. For a full list of categories, see [`/categories/get`](https://plaid.com/docs/api/products/transactions/#categoriesget).
    @[JSON::Field(key: "category", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter category : Array(String)? = nil

    @[JSON::Field(key: "location", type: Location?, default: nil, required: true, nullable: false, emit_null: false)]
    getter location : Location? = nil

    # End of Required Properties

    # Optional Properties

    # The name of the primary counterparty, such as the merchant or the financial institution, as extracted by Plaid from the raw description.
    @[JSON::Field(key: "merchant_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: merchant_name.nil? && !merchant_name_present?)]
    getter merchant_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? merchant_name_present : Bool = false

    # The website associated with this transaction, if available.
    @[JSON::Field(key: "website", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: website.nil? && !website_present?)]
    getter website : String? = nil

    @[JSON::Field(ignore: true)]
    property? website_present : Bool = false

    # The URL of a logo associated with this transaction, if available. The logo will always be 100×100 pixel PNG file.
    @[JSON::Field(key: "logo_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: logo_url.nil? && !logo_url_present?)]
    getter logo_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? logo_url_present : Bool = false

    # The check number of the transaction. This field is only populated for check transactions.
    @[JSON::Field(key: "check_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: check_number.nil? && !check_number_present?)]
    getter check_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? check_number_present : Bool = false

    @[JSON::Field(key: "personal_finance_category", type: PersonalFinanceCategory?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: personal_finance_category.nil? && !personal_finance_category_present?)]
    getter personal_finance_category : PersonalFinanceCategory? = nil

    @[JSON::Field(ignore: true)]
    property? personal_finance_category_present : Bool = false

    # The URL of an icon associated with the primary personal finance category. The icon will always be 100×100 pixel PNG file.
    @[JSON::Field(key: "personal_finance_category_icon_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter personal_finance_category_icon_url : String? = nil

    # The counterparties present in the transaction. Counterparties, such as the merchant or the financial institution, are extracted by Plaid from the raw description.
    @[JSON::Field(key: "counterparties", type: Array(Counterparty)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter counterparties : Array(Counterparty)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_channel : Plaid::PaymentChannel? = nil,
      @category_id : String? = nil,
      @category : Array(String)? = nil,
      @location : Location? = nil,
      # Optional properties
      @merchant_name : String? = nil,
      @website : String? = nil,
      @logo_url : String? = nil,
      @check_number : String? = nil,
      @personal_finance_category : PersonalFinanceCategory? = nil,
      @personal_finance_category_icon_url : String? = nil,
      @counterparties : Array(Counterparty)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"payment_channel\" is required and cannot be null") if @payment_channel.nil?

      unless (_payment_channel = @payment_channel).nil?
        invalid_properties.push(_payment_channel.error_message) if !_payment_channel.valid?
      end
      unless (_category_id = @category_id).nil?
      end
      invalid_properties.push("\"category\" is required and cannot be null") if @category.nil?

      unless (_category = @category).nil?
      end
      invalid_properties.push("\"location\" is required and cannot be null") if @location.nil?

      unless (_location = @location).nil?
      end
      unless (_merchant_name = @merchant_name).nil?
      end
      unless (_website = @website).nil?
      end
      unless (_logo_url = @logo_url).nil?
      end
      unless (_check_number = @check_number).nil?
      end
      unless (_personal_finance_category = @personal_finance_category).nil?
      end
      unless (_personal_finance_category_icon_url = @personal_finance_category_icon_url).nil?
      end
      unless (_counterparties = @counterparties).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @payment_channel.nil?
      unless (_payment_channel = @payment_channel).nil?
        return false if !_payment_channel.valid?
      end

      unless (_category_id = @category_id).nil?
      end

      return false if @category.nil?
      unless (_category = @category).nil?
      end

      return false if @location.nil?
      unless (_location = @location).nil?
      end

      unless (_merchant_name = @merchant_name).nil?
      end

      unless (_website = @website).nil?
      end

      unless (_logo_url = @logo_url).nil?
      end

      unless (_check_number = @check_number).nil?
      end

      unless (_personal_finance_category = @personal_finance_category).nil?
      end

      unless (_personal_finance_category_icon_url = @personal_finance_category_icon_url).nil?
      end

      unless (_counterparties = @counterparties).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_channel Object to be assigned
    def payment_channel=(new_value : Plaid::PaymentChannel?)
      raise ArgumentError.new("\"payment_channel\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @payment_channel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category_id Object to be assigned
    def category_id=(new_value : String?)
      unless new_value.nil?
      end

      @category_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category Object to be assigned
    def category=(new_value : Array(String)?)
      raise ArgumentError.new("\"category\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @category = new_value
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
    # @param [Object] merchant_name Object to be assigned
    def merchant_name=(new_value : String?)
      unless new_value.nil?
      end

      @merchant_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] website Object to be assigned
    def website=(new_value : String?)
      unless new_value.nil?
      end

      @website = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logo_url Object to be assigned
    def logo_url=(new_value : String?)
      unless new_value.nil?
      end

      @logo_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] check_number Object to be assigned
    def check_number=(new_value : String?)
      unless new_value.nil?
      end

      @check_number = new_value
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
    def counterparties=(new_value : Array(Counterparty)?)
      unless new_value.nil?
      end

      @counterparties = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_channel, @category_id, @category, @location, @merchant_name, @merchant_name_present, @website, @website_present, @logo_url, @logo_url_present, @check_number, @check_number_present, @personal_finance_category, @personal_finance_category_present, @personal_finance_category_icon_url, @counterparties)
  end
end
