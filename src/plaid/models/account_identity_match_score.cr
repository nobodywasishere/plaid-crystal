#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_balance"
require "./account_subtype"
require "./account_type"
require "./address_match_score"
require "./email_address_match_score"
require "./name_match_score"
require "./phone_number_match_score"

module Plaid
  # Identity match scores for an account
  class AccountIdentityMatchScore
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Plaid’s unique identifier for the account. This value will not change unless Plaid can't reconcile the account with the data returned by the financial institution. This may occur, for example, when the name of the account changes. If this happens a new `account_id` will be assigned to the account.  The `account_id` can also change if the `access_token` is deleted and the same credentials that were used to generate that `access_token` are used to generate a new `access_token` on a later date. In that case, the new `account_id` will be different from the old `account_id`.  If an account with a specific `account_id` disappears instead of changing, the account is likely closed. Closed accounts are not returned by the Plaid API.  Like all Plaid identifiers, the `account_id` is case sensitive.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    @[JSON::Field(key: "balances", type: AccountBalance?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balances : AccountBalance? = nil

    # The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts, and it may also not match the mask that the bank displays to the user.
    @[JSON::Field(key: "mask", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter mask : String? = nil

    # The name of the account, either assigned by the user or by the financial institution itself
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The official name of the account as given by the financial institution
    @[JSON::Field(key: "official_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter official_name : String? = nil

    @[JSON::Field(key: "type", type: Plaid::AccountType?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : Plaid::AccountType? = nil

    @[JSON::Field(key: "subtype", type: Plaid::AccountSubtype?, default: nil, required: true, nullable: true, emit_null: true)]
    getter subtype : Plaid::AccountSubtype? = nil

    # End of Required Properties

    # Optional Properties

    # The current verification status of an Auth Item initiated through Automated or Manual micro-deposits.  Returned for Auth Items only.  `pending_automatic_verification`: The Item is pending automatic verification  `pending_manual_verification`: The Item is pending manual micro-deposit verification. Items remain in this state until the user successfully verifies the micro-deposit.  `automatically_verified`: The Item has successfully been automatically verified   `manually_verified`: The Item has successfully been manually verified  `verification_expired`: Plaid was unable to automatically verify the deposit within 7 calendar days and will no longer attempt to validate the Item. Users may retry by submitting their information again through Link.  `verification_failed`: The Item failed manual micro-deposit verification because the user exhausted all 3 verification attempts. Users may retry by submitting their information again through Link.  `database_matched`: The Item has successfully been verified using Plaid's data sources. Note: Database Match is currently a beta feature, please contact your account manager for more information.
    @[JSON::Field(key: "verification_status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_status : String? = nil
    ERROR_MESSAGE_FOR_VERIFICATION_STATUS = "invalid value for \"verification_status\", must be one of [automatically_verified, pending_automatic_verification, pending_manual_verification, manually_verified, verification_expired, verification_failed, database_matched]."
    VALID_VALUES_FOR_VERIFICATION_STATUS  = String.static_array("automatically_verified", "pending_automatic_verification", "pending_manual_verification", "manually_verified", "verification_expired", "verification_failed", "database_matched")

    # A unique and persistent identifier for accounts that can be used to trace multiple instances of the same account across different Items for depository accounts. This is currently an opt-in field and only supported for Chase Items.
    @[JSON::Field(key: "persistent_account_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter persistent_account_id : String? = nil

    @[JSON::Field(key: "legal_name", type: NameMatchScore?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: legal_name.nil? && !legal_name_present?)]
    getter legal_name : NameMatchScore? = nil

    @[JSON::Field(ignore: true)]
    property? legal_name_present : Bool = false

    @[JSON::Field(key: "phone_number", type: PhoneNumberMatchScore?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone_number.nil? && !phone_number_present?)]
    getter phone_number : PhoneNumberMatchScore? = nil

    @[JSON::Field(ignore: true)]
    property? phone_number_present : Bool = false

    @[JSON::Field(key: "email_address", type: EmailAddressMatchScore?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email_address.nil? && !email_address_present?)]
    getter email_address : EmailAddressMatchScore? = nil

    @[JSON::Field(ignore: true)]
    property? email_address_present : Bool = false

    @[JSON::Field(key: "address", type: AddressMatchScore?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address.nil? && !address_present?)]
    getter address : AddressMatchScore? = nil

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_id : String? = nil,
      @balances : AccountBalance? = nil,
      @mask : String? = nil,
      @name : String? = nil,
      @official_name : String? = nil,
      @_type : Plaid::AccountType? = nil,
      @subtype : Plaid::AccountSubtype? = nil,
      # Optional properties
      @verification_status : String? = nil,
      @persistent_account_id : String? = nil,
      @legal_name : NameMatchScore? = nil,
      @phone_number : PhoneNumberMatchScore? = nil,
      @email_address : EmailAddressMatchScore? = nil,
      @address : AddressMatchScore? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_id\" is required and cannot be null") if @account_id.nil?

      unless (_account_id = @account_id).nil?
      end
      invalid_properties.push("\"balances\" is required and cannot be null") if @balances.nil?

      unless (_balances = @balances).nil?
      end
      unless (_mask = @mask).nil?
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
      end
      unless (_official_name = @official_name).nil?
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(__type.error_message) if !__type.valid?
      end
      unless (_subtype = @subtype).nil?
        invalid_properties.push(_subtype.error_message) if !_subtype.valid?
      end
      unless (_verification_status = @verification_status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_VERIFICATION_STATUS) unless OpenApi::EnumValidator.valid?(_verification_status, VALID_VALUES_FOR_VERIFICATION_STATUS)
      end
      unless (_persistent_account_id = @persistent_account_id).nil?
      end
      unless (_legal_name = @legal_name).nil?
      end
      unless (_phone_number = @phone_number).nil?
      end
      unless (_email_address = @email_address).nil?
      end
      unless (_address = @address).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_id.nil?
      unless (_account_id = @account_id).nil?
      end

      return false if @balances.nil?
      unless (_balances = @balances).nil?
      end

      unless (_mask = @mask).nil?
      end

      return false if @name.nil?
      unless (_name = @name).nil?
      end

      unless (_official_name = @official_name).nil?
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false if !__type.valid?
      end

      unless (_subtype = @subtype).nil?
        return false if !_subtype.valid?
      end

      unless (_verification_status = @verification_status).nil?
        return false unless OpenApi::EnumValidator.valid?(_verification_status, VALID_VALUES_FOR_VERIFICATION_STATUS)
      end

      unless (_persistent_account_id = @persistent_account_id).nil?
      end

      unless (_legal_name = @legal_name).nil?
      end

      unless (_phone_number = @phone_number).nil?
      end

      unless (_email_address = @email_address).nil?
      end

      unless (_address = @address).nil?
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
    # @param [Object] balances Object to be assigned
    def balances=(new_value : AccountBalance?)
      raise ArgumentError.new("\"balances\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @balances = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mask Object to be assigned
    def mask=(new_value : String?)
      unless new_value.nil?
      end

      @mask = new_value
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
    # @param [Object] official_name Object to be assigned
    def official_name=(new_value : String?)
      unless new_value.nil?
      end

      @official_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : Plaid::AccountType?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtype Object to be assigned
    def subtype=(new_value : Plaid::AccountSubtype?)
      unless new_value.nil?
        new_value.validate
      end

      @subtype = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_status Object to be assigned
    def verification_status=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("verification_status", new_value, VALID_VALUES_FOR_VERIFICATION_STATUS)
      end

      @verification_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] persistent_account_id Object to be assigned
    def persistent_account_id=(new_value : String?)
      unless new_value.nil?
      end

      @persistent_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] legal_name Object to be assigned
    def legal_name=(new_value : NameMatchScore?)
      unless new_value.nil?
      end

      @legal_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(new_value : PhoneNumberMatchScore?)
      unless new_value.nil?
      end

      @phone_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_address Object to be assigned
    def email_address=(new_value : EmailAddressMatchScore?)
      unless new_value.nil?
      end

      @email_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : AddressMatchScore?)
      unless new_value.nil?
      end

      @address = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_id, @balances, @mask, @name, @official_name, @_type, @subtype, @verification_status, @persistent_account_id, @legal_name, @legal_name_present, @phone_number, @phone_number_present, @email_address, @email_address_present, @address, @address_present)
  end
end
