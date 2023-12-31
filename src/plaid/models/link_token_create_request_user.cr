#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_token_create_request_user_address"
require "./link_token_create_request_user_id_number"
require "./link_token_create_request_user_name"

module Plaid
  # An object specifying information about the end user who will be linking their account.
  class LinkTokenCreateRequestUser
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique ID representing the end user. Typically this will be a user ID number from your application. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`. It is currently used as a means of searching logs for the given user in the Plaid Dashboard.
    @[JSON::Field(key: "client_user_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter client_user_id : String? = nil
    MIN_LENGTH_FOR_CLIENT_USER_ID = 1

    # End of Required Properties

    # Optional Properties

    # The user's full legal name, used for [micro-deposit based verification flows](https://plaid.com/docs/auth/coverage/). For a small number of customers on legacy flows, providing this field is required to enable micro-deposit-based flows. For all other customers, this field is optional, but providing the user's name in this field when using micro-deposit-based verification will enable certain risk checks and can reduce micro-deposit fraud.
    @[JSON::Field(key: "legal_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter legal_name : String? = nil

    @[JSON::Field(key: "name", type: Plaid::LinkTokenCreateRequestUserName?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : Plaid::LinkTokenCreateRequestUserName? = nil

    # The user's phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. This field is optional, but required to enable the [returning user experience](https://plaid.com/docs/link/returning-user). Can also be used to prefill Link fields when used with Identity Verification.
    @[JSON::Field(key: "phone_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone_number : String? = nil

    # The date and time the phone number was verified in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDThh:mm:ssZ`). This was previously an optional field used in the [returning user experience](https://plaid.com/docs/link/returning-user). This field is no longer required to enable the returning user experience.   Only pass a verification time for a phone number that you have verified. If you have performed verification but don’t have the time, you may supply a signal value of the start of the UNIX epoch.   Example: `2020-01-01T00:00:00Z`
    @[JSON::Field(key: "phone_number_verified_time", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: phone_number_verified_time.nil? && !phone_number_verified_time_present?, converter: Time::RFC3339Converter)]
    getter phone_number_verified_time : Time? = nil

    @[JSON::Field(ignore: true)]
    property? phone_number_verified_time_present : Bool = false

    # The user's email address. This field is optional, but required to enable the [pre-authenticated returning user flow](https://plaid.com/docs/link/returning-user/#pre-authenticated-rux). Can also be used to prefill Link fields when used with Identity Verification.
    @[JSON::Field(key: "email_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email_address : String? = nil

    # The date and time the email address was verified in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDThh:mm:ssZ`). This was previously an optional field used in the [returning user experience](https://plaid.com/docs/link/returning-user). This field is no longer required to enable the returning user experience.   Only pass a verification time for an email address that you have verified. If you have performed verification but don’t have the time, you may supply a signal value of the start of the UNIX epoch.   Example: `2020-01-01T00:00:00Z`
    @[JSON::Field(key: "email_address_verified_time", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: email_address_verified_time.nil? && !email_address_verified_time_present?, converter: Time::RFC3339Converter)]
    getter email_address_verified_time : Time? = nil

    @[JSON::Field(ignore: true)]
    property? email_address_verified_time_present : Bool = false

    # Deprecated and not currently used, use the `id_number` field instead.
    @[JSON::Field(key: "ssn", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ssn : String? = nil

    # To be provided in the format \"yyyy-mm-dd\". Can be used to prefill Link fields when used with Identity Verification.
    @[JSON::Field(key: "date_of_birth", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date_of_birth.nil? && !date_of_birth_present?, converter: Time::ISO8601DateConverter)]
    getter date_of_birth : Time? = nil

    @[JSON::Field(ignore: true)]
    property? date_of_birth_present : Bool = false

    @[JSON::Field(key: "address", type: Plaid::LinkTokenCreateRequestUserAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Plaid::LinkTokenCreateRequestUserAddress? = nil

    @[JSON::Field(key: "id_number", type: Plaid::LinkTokenCreateRequestUserIdNumber?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : Plaid::LinkTokenCreateRequestUserIdNumber? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @client_user_id : String? = nil,
      # Optional properties
      @legal_name : String? = nil,
      @name : Plaid::LinkTokenCreateRequestUserName? = nil,
      @phone_number : String? = nil,
      @phone_number_verified_time : Time? = nil,
      @email_address : String? = nil,
      @email_address_verified_time : Time? = nil,
      @ssn : String? = nil,
      @date_of_birth : Time? = nil,
      @address : Plaid::LinkTokenCreateRequestUserAddress? = nil,
      @id_number : Plaid::LinkTokenCreateRequestUserIdNumber? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"client_user_id\" is required and cannot be null") if @client_user_id.nil?

      unless (_client_user_id = @client_user_id).nil?
        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("client_user_id", _client_user_id.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_legal_name = @legal_name).nil?
      end
      unless (_name = @name).nil?
        invalid_properties.concat(_name.list_invalid_properties_for("name")) if _name.is_a?(OpenApi::Validatable)
      end
      unless (_phone_number = @phone_number).nil?
      end
      unless (_phone_number_verified_time = @phone_number_verified_time).nil?
      end
      unless (_email_address = @email_address).nil?
      end
      unless (_email_address_verified_time = @email_address_verified_time).nil?
      end
      unless (_ssn = @ssn).nil?
      end
      unless (_date_of_birth = @date_of_birth).nil?
      end
      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      unless (_id_number = @id_number).nil?
        invalid_properties.concat(_id_number.list_invalid_properties_for("id_number")) if _id_number.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @client_user_id.nil?
      unless (_client_user_id = @client_user_id).nil?
        return false if _client_user_id.to_s.size < MIN_LENGTH_FOR_CLIENT_USER_ID
      end

      unless (_legal_name = @legal_name).nil?
      end

      unless (_name = @name).nil?
        return false if _name.is_a?(OpenApi::Validatable) && !_name.valid?
      end

      unless (_phone_number = @phone_number).nil?
      end

      unless (_phone_number_verified_time = @phone_number_verified_time).nil?
      end

      unless (_email_address = @email_address).nil?
      end

      unless (_email_address_verified_time = @email_address_verified_time).nil?
      end

      unless (_ssn = @ssn).nil?
      end

      unless (_date_of_birth = @date_of_birth).nil?
      end

      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_id_number = @id_number).nil?
        return false if _id_number.is_a?(OpenApi::Validatable) && !_id_number.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_user_id Object to be assigned
    def client_user_id=(new_value : String?)
      raise ArgumentError.new("\"client_user_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_length("client_user_id", new_value.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
      end

      @client_user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] legal_name Object to be assigned
    def legal_name=(new_value : String?)
      unless new_value.nil?
      end

      @legal_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : Plaid::LinkTokenCreateRequestUserName?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(new_value : String?)
      unless new_value.nil?
      end

      @phone_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number_verified_time Object to be assigned
    def phone_number_verified_time=(new_value : Time?)
      unless new_value.nil?
      end

      @phone_number_verified_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_address Object to be assigned
    def email_address=(new_value : String?)
      unless new_value.nil?
      end

      @email_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_address_verified_time Object to be assigned
    def email_address_verified_time=(new_value : Time?)
      unless new_value.nil?
      end

      @email_address_verified_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ssn Object to be assigned
    def ssn=(new_value : String?)
      unless new_value.nil?
      end

      @ssn = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_of_birth Object to be assigned
    def date_of_birth=(new_value : Time?)
      unless new_value.nil?
      end

      @date_of_birth = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Plaid::LinkTokenCreateRequestUserAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(new_value : Plaid::LinkTokenCreateRequestUserIdNumber?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @id_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_user_id, @legal_name, @name, @phone_number, @phone_number_verified_time, @phone_number_verified_time_present, @email_address, @email_address_verified_time, @email_address_verified_time_present, @ssn, @date_of_birth, @date_of_birth_present, @address, @id_number)
  end
end
