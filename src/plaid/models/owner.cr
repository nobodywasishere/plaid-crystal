#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./address"
require "./email"
require "./phone_number"

module Plaid
  # Data returned from the financial institution about the owner or owners of an account. Only the `names` array must be non-empty.
  class Owner
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A list of names associated with the account by the financial institution. In the case of a joint account, Plaid will make a best effort to report the names of all account holders.  If an Item contains multiple accounts with different owner names, some institutions will report all names associated with the Item in each account's `names` array.
    @[JSON::Field(key: "names", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter names : Array(String)? = nil

    # A list of phone numbers associated with the account by the financial institution. May be an empty array if no relevant information is returned from the financial institution.
    @[JSON::Field(key: "phone_numbers", type: Array(PhoneNumber)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter phone_numbers : Array(PhoneNumber)? = nil

    # A list of email addresses associated with the account by the financial institution. May be an empty array if no relevant information is returned from the financial institution.
    @[JSON::Field(key: "emails", type: Array(Email)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter emails : Array(Email)? = nil

    # Data about the various addresses associated with the account by the financial institution. May be an empty array if no relevant information is returned from the financial institution.
    @[JSON::Field(key: "addresses", type: Array(Address)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter addresses : Array(Address)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @names : Array(String)? = nil,
      @phone_numbers : Array(PhoneNumber)? = nil,
      @emails : Array(Email)? = nil,
      @addresses : Array(Address)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"names\" is required and cannot be null") if @names.nil?

      unless (_names = @names).nil?
      end
      invalid_properties.push("\"phone_numbers\" is required and cannot be null") if @phone_numbers.nil?

      unless (_phone_numbers = @phone_numbers).nil?
      end
      invalid_properties.push("\"emails\" is required and cannot be null") if @emails.nil?

      unless (_emails = @emails).nil?
      end
      invalid_properties.push("\"addresses\" is required and cannot be null") if @addresses.nil?

      unless (_addresses = @addresses).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @names.nil?
      unless (_names = @names).nil?
      end

      return false if @phone_numbers.nil?
      unless (_phone_numbers = @phone_numbers).nil?
      end

      return false if @emails.nil?
      unless (_emails = @emails).nil?
      end

      return false if @addresses.nil?
      unless (_addresses = @addresses).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] names Object to be assigned
    def names=(new_value : Array(String)?)
      raise ArgumentError.new("\"names\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @names = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_numbers Object to be assigned
    def phone_numbers=(new_value : Array(PhoneNumber)?)
      raise ArgumentError.new("\"phone_numbers\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @phone_numbers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] emails Object to be assigned
    def emails=(new_value : Array(Email)?)
      raise ArgumentError.new("\"emails\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @emails = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] addresses Object to be assigned
    def addresses=(new_value : Array(Address)?)
      raise ArgumentError.new("\"addresses\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @addresses = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@names, @phone_numbers, @emails, @addresses)
  end
end
