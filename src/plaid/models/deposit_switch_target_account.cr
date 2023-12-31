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
  # The deposit switch destination account
  class DepositSwitchTargetAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Account number for deposit switch destination
    @[JSON::Field(key: "account_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_number : String? = nil

    # Routing number for deposit switch destination
    @[JSON::Field(key: "routing_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter routing_number : String? = nil

    # The name of the deposit switch destination account, as it will be displayed to the end user in the Deposit Switch interface. It is not required to match the name used in online banking.
    @[JSON::Field(key: "account_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_name : String? = nil

    # The account subtype of the account, either `checking` or `savings`.
    @[JSON::Field(key: "account_subtype", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account_subtype : String? = nil
    ERROR_MESSAGE_FOR_ACCOUNT_SUBTYPE = "invalid value for \"account_subtype\", must be one of [checking, savings]."
    VALID_VALUES_FOR_ACCOUNT_SUBTYPE  = String.static_array("checking", "savings")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_number : String? = nil,
      @routing_number : String? = nil,
      @account_name : String? = nil,
      @account_subtype : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"account_number\" is required and cannot be null") if @account_number.nil?

      unless (_account_number = @account_number).nil?
      end
      invalid_properties.push("\"routing_number\" is required and cannot be null") if @routing_number.nil?

      unless (_routing_number = @routing_number).nil?
      end
      invalid_properties.push("\"account_name\" is required and cannot be null") if @account_name.nil?

      unless (_account_name = @account_name).nil?
      end
      invalid_properties.push("\"account_subtype\" is required and cannot be null") if @account_subtype.nil?

      unless (_account_subtype = @account_subtype).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACCOUNT_SUBTYPE) unless OpenApi::EnumValidator.valid?(_account_subtype, VALID_VALUES_FOR_ACCOUNT_SUBTYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account_number.nil?
      unless (_account_number = @account_number).nil?
      end

      return false if @routing_number.nil?
      unless (_routing_number = @routing_number).nil?
      end

      return false if @account_name.nil?
      unless (_account_name = @account_name).nil?
      end

      return false if @account_subtype.nil?
      unless (_account_subtype = @account_subtype).nil?
        return false unless OpenApi::EnumValidator.valid?(_account_subtype, VALID_VALUES_FOR_ACCOUNT_SUBTYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(new_value : String?)
      raise ArgumentError.new("\"account_number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_number Object to be assigned
    def routing_number=(new_value : String?)
      raise ArgumentError.new("\"routing_number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @routing_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_name Object to be assigned
    def account_name=(new_value : String?)
      raise ArgumentError.new("\"account_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @account_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_subtype Object to be assigned
    def account_subtype=(new_value : String?)
      raise ArgumentError.new("\"account_subtype\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("account_subtype", new_value, VALID_VALUES_FOR_ACCOUNT_SUBTYPE)
      end

      @account_subtype = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_number, @routing_number, @account_name, @account_subtype)
  end
end
