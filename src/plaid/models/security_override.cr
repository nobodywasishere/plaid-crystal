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
  # Specify the security associated with the holding or investment transaction. When inputting custom security data to the Sandbox, Plaid will perform post-data-retrieval normalization and enrichment. These processes may cause the data returned by the Sandbox to be slightly different from the data you input. An ISO-4217 currency code and a security identifier (`ticker_symbol`, `cusip`, `isin`, or `sedol`) are required.
  class SecurityOverride
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # 12-character ISIN, a globally unique securities identifier. A verified CUSIP Global Services license is required to receive this data. This field will be null by default for new customers, and null for existing customers starting March 12, 2024. If you would like access to this field, please start the verification process [here](https://docs.google.com/forms/d/e/1FAIpQLSd9asHEYEfmf8fxJTHZTAfAzW4dugsnSu-HS2J51f1mxwd6Sw/viewform).
    @[JSON::Field(key: "isin", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter isin : String? = nil

    # 9-character CUSIP, an identifier assigned to North American securities. A verified CUSIP Global Services license is required to receive this data. This field will be null by default for new customers, and null for existing customers starting March 12, 2024. If you would like access to this field, please start the verification process [here](https://docs.google.com/forms/d/e/1FAIpQLSd9asHEYEfmf8fxJTHZTAfAzW4dugsnSu-HS2J51f1mxwd6Sw/viewform).
    @[JSON::Field(key: "cusip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cusip : String? = nil

    # 7-character SEDOL, an identifier assigned to securities in the UK.
    @[JSON::Field(key: "sedol", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sedol : String? = nil

    # A descriptive name for the security, suitable for display.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The security’s trading symbol for publicly traded securities, and otherwise a short identifier if available.
    @[JSON::Field(key: "ticker_symbol", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ticker_symbol : String? = nil

    # Either a valid `iso_currency_code` or `unofficial_currency_code`
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @isin : String? = nil,
      @cusip : String? = nil,
      @sedol : String? = nil,
      @name : String? = nil,
      @ticker_symbol : String? = nil,
      @currency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_isin = @isin).nil?
      end
      unless (_cusip = @cusip).nil?
      end
      unless (_sedol = @sedol).nil?
      end
      unless (_name = @name).nil?
      end
      unless (_ticker_symbol = @ticker_symbol).nil?
      end
      unless (_currency = @currency).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_isin = @isin).nil?
      end

      unless (_cusip = @cusip).nil?
      end

      unless (_sedol = @sedol).nil?
      end

      unless (_name = @name).nil?
      end

      unless (_ticker_symbol = @ticker_symbol).nil?
      end

      unless (_currency = @currency).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] isin Object to be assigned
    def isin=(new_value : String?)
      unless new_value.nil?
      end

      @isin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cusip Object to be assigned
    def cusip=(new_value : String?)
      unless new_value.nil?
      end

      @cusip = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sedol Object to be assigned
    def sedol=(new_value : String?)
      unless new_value.nil?
      end

      @sedol = new_value
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
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      unless new_value.nil?
      end

      @currency = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@isin, @cusip, @sedol, @name, @ticker_symbol, @currency)
  end
end