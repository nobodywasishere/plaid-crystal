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
  # Investment security associated with the account.
  class AssetReportInvestmentSecurity
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique, Plaid-specific identifier for the security, used to associate securities with holdings. Like all Plaid identifiers, the `security_id` is case sensitive. The `security_id` may change if inherent details of the security change due to a corporate action, for example, in the event of a ticker symbol change or CUSIP change.
    @[JSON::Field(key: "security_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter security_id : String? = nil

    # A descriptive name for the security, suitable for display.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter name : String? = nil

    # The security’s trading symbol for publicly traded securities, and otherwise a short identifier if available.
    @[JSON::Field(key: "ticker_symbol", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter ticker_symbol : String? = nil

    # The security type of the holding. Valid security types are:  `cash`: Cash, currency, and money market funds  `cryptocurrency`: Digital or virtual currencies  `derivative`: Options, warrants, and other derivative instruments  `equity`: Domestic and foreign equities  `etf`: Multi-asset exchange-traded investment funds  `fixed income`: Bonds and certificates of deposit (CDs)  `loan`: Loans and loan receivables  `mutual fund`: Open- and closed-end vehicles pooling funds of multiple investors  `other`: Unknown or other investment types
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter _type : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @security_id : String? = nil,
      @name : String? = nil,
      @ticker_symbol : String? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"security_id\" is required and cannot be null") if @security_id.nil?

      unless (_security_id = @security_id).nil?
      end
      unless (_name = @name).nil?
      end
      unless (_ticker_symbol = @ticker_symbol).nil?
      end
      unless (__type = @_type).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @security_id.nil?
      unless (_security_id = @security_id).nil?
      end

      unless (_name = @name).nil?
      end

      unless (_ticker_symbol = @ticker_symbol).nil?
      end

      unless (__type = @_type).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] security_id Object to be assigned
    def security_id=(new_value : String?)
      raise ArgumentError.new("\"security_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @security_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ticker_symbol Object to be assigned
    def ticker_symbol=(new_value : String?)
      unless new_value.nil?
      end

      @ticker_symbol = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
      end

      @_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@security_id, @name, @ticker_symbol, @_type)
  end
end
