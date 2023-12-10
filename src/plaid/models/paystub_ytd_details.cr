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
  # The amount of income earned year to date, as based on paystub data.
  class PaystubYTDDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Year-to-date gross earnings.
    @[JSON::Field(key: "gross_earnings", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: gross_earnings.nil? && !gross_earnings_present?)]
    getter gross_earnings : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? gross_earnings_present : Bool = false

    # Year-to-date net (take home) earnings.
    @[JSON::Field(key: "net_earnings", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: net_earnings.nil? && !net_earnings_present?)]
    getter net_earnings : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? net_earnings_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @gross_earnings : Float64? = nil,
      @net_earnings : Float64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_gross_earnings = @gross_earnings).nil?
      end
      unless (_net_earnings = @net_earnings).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_gross_earnings = @gross_earnings).nil?
      end

      unless (_net_earnings = @net_earnings).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gross_earnings Object to be assigned
    def gross_earnings=(new_value : Float64?)
      unless new_value.nil?
      end

      @gross_earnings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] net_earnings Object to be assigned
    def net_earnings=(new_value : Float64?)
      unless new_value.nil?
      end

      @net_earnings = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@gross_earnings, @gross_earnings_present, @net_earnings, @net_earnings_present)
  end
end
