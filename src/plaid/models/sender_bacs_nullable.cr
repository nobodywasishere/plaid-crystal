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
  # An object containing a BACS account number and sort code. If an IBAN is not provided or if this recipient needs to accept domestic GBP-denominated payments, BACS data is required.
  class SenderBACSNullable
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The account number of the account. Maximum of 10 characters.
    @[JSON::Field(key: "account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account : String? = nil
    MAX_LENGTH_FOR_ACCOUNT = 10
    MIN_LENGTH_FOR_ACCOUNT =  1

    # The 6-character sort code of the account.
    @[JSON::Field(key: "sort_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sort_code : String? = nil
    MAX_LENGTH_FOR_SORT_CODE = 6
    MIN_LENGTH_FOR_SORT_CODE = 6

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account : String? = nil,
      @sort_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account = @account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("account", _account.to_s.size, MIN_LENGTH_FOR_ACCOUNT)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_sort_code = @sort_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("sort_code", _sort_code.to_s.size, MAX_LENGTH_FOR_SORT_CODE)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("sort_code", _sort_code.to_s.size, MIN_LENGTH_FOR_SORT_CODE)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account = @account).nil?
        return false if _account.to_s.size > MAX_LENGTH_FOR_ACCOUNT
        return false if _account.to_s.size < MIN_LENGTH_FOR_ACCOUNT
      end

      unless (_sort_code = @sort_code).nil?
        return false if _sort_code.to_s.size > MAX_LENGTH_FOR_SORT_CODE
        return false if _sort_code.to_s.size < MIN_LENGTH_FOR_SORT_CODE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
        OpenApi::PrimitiveValidator.validate_min_length("account", new_value.to_s.size, MIN_LENGTH_FOR_ACCOUNT)
      end

      @account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_code Object to be assigned
    def sort_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("sort_code", new_value.to_s.size, MAX_LENGTH_FOR_SORT_CODE)
        OpenApi::PrimitiveValidator.validate_min_length("sort_code", new_value.to_s.size, MIN_LENGTH_FOR_SORT_CODE)
      end

      @sort_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account, @sort_code)
  end
end
