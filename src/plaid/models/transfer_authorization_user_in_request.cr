#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_user_address_in_request"

module Plaid
  # The legal name and other information for the account holder. The `user.legal_name` field is required. Other fields are not currently used and are present to support planned future functionality.
  class TransferAuthorizationUserInRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The user's legal name. If the user is a business, provide the business name.
    @[JSON::Field(key: "legal_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter legal_name : String? = nil

    # End of Required Properties

    # Optional Properties

    # The user's phone number.
    @[JSON::Field(key: "phone_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone_number : String? = nil

    # The user's email address.
    @[JSON::Field(key: "email_address", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email_address : String? = nil

    @[JSON::Field(key: "address", type: Plaid::TransferUserAddressInRequest?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Plaid::TransferUserAddressInRequest? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @legal_name : String? = nil,
      # Optional properties
      @phone_number : String? = nil,
      @email_address : String? = nil,
      @address : Plaid::TransferUserAddressInRequest? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"legal_name\" is required and cannot be null") if @legal_name.nil?

      unless (_legal_name = @legal_name).nil?
      end
      unless (_phone_number = @phone_number).nil?
      end
      unless (_email_address = @email_address).nil?
      end
      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @legal_name.nil?
      unless (_legal_name = @legal_name).nil?
      end

      unless (_phone_number = @phone_number).nil?
      end

      unless (_email_address = @email_address).nil?
      end

      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] legal_name Object to be assigned
    def legal_name=(new_value : String?)
      raise ArgumentError.new("\"legal_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @legal_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(new_value : String?)
      unless new_value.nil?
      end

      @phone_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_address Object to be assigned
    def email_address=(new_value : String?)
      unless new_value.nil?
      end

      @email_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Plaid::TransferUserAddressInRequest?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@legal_name, @phone_number, @email_address, @address)
  end
end
