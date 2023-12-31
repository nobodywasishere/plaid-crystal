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
  # An object representing the earnings line items for the pay period.
  class PayStubEarningsBreakdown
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Commonly used term to describe the earning line item.
    @[JSON::Field(key: "canonical_description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter canonical_description : String? = nil

    # Raw amount of the earning line item.
    @[JSON::Field(key: "current_amount", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter current_amount : Float64? = nil

    # Description of the earning line item.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil

    # Number of hours applicable for this earning.
    @[JSON::Field(key: "hours", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter hours : Float64? = nil

    # The ISO-4217 currency code of the line item. Always `null` if `unofficial_currency_code` is non-null.
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter iso_currency_code : String? = nil

    # Hourly rate applicable for this earning.
    @[JSON::Field(key: "rate", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter rate : Float64? = nil

    # The unofficial currency code associated with the line item. Always `null` if `iso_currency_code` is non-`null`. Unofficial currency codes are used for currencies that do not have official ISO currency codes, such as cryptocurrencies and the currencies of certain countries.  See the [currency code schema](https://plaid.com/docs/api/accounts#currency-code-schema) for a full listing of supported `iso_currency_code`s.
    @[JSON::Field(key: "unofficial_currency_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter unofficial_currency_code : String? = nil

    # The year-to-date amount of the deduction.
    @[JSON::Field(key: "ytd_amount", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter ytd_amount : Float64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @canonical_description : String? = nil,
      @current_amount : Float64? = nil,
      @description : String? = nil,
      @hours : Float64? = nil,
      @iso_currency_code : String? = nil,
      @rate : Float64? = nil,
      @unofficial_currency_code : String? = nil,
      @ytd_amount : Float64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_canonical_description = @canonical_description).nil?
      end
      unless (_current_amount = @current_amount).nil?
      end
      unless (_description = @description).nil?
      end
      unless (_hours = @hours).nil?
      end
      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_rate = @rate).nil?
      end
      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end
      unless (_ytd_amount = @ytd_amount).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_canonical_description = @canonical_description).nil?
      end

      unless (_current_amount = @current_amount).nil?
      end

      unless (_description = @description).nil?
      end

      unless (_hours = @hours).nil?
      end

      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_rate = @rate).nil?
      end

      unless (_unofficial_currency_code = @unofficial_currency_code).nil?
      end

      unless (_ytd_amount = @ytd_amount).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canonical_description Object to be assigned
    def canonical_description=(new_value : String?)
      unless new_value.nil?
      end

      @canonical_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] current_amount Object to be assigned
    def current_amount=(new_value : Float64?)
      unless new_value.nil?
      end

      @current_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hours Object to be assigned
    def hours=(new_value : Float64?)
      unless new_value.nil?
      end

      @hours = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rate Object to be assigned
    def rate=(new_value : Float64?)
      unless new_value.nil?
      end

      @rate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unofficial_currency_code Object to be assigned
    def unofficial_currency_code=(new_value : String?)
      unless new_value.nil?
      end

      @unofficial_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ytd_amount Object to be assigned
    def ytd_amount=(new_value : Float64?)
      unless new_value.nil?
      end

      @ytd_amount = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@canonical_description, @current_amount, @description, @hours, @iso_currency_code, @rate, @unofficial_currency_code, @ytd_amount)
  end
end
