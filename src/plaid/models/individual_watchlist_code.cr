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
  class IndividualWatchlistCode
    include OpenApi::Validatable
    include OpenApi::Json

    property data : String

    ERROR_MESSAGE = %{invalid value for "IndividualWatchlistCode", must be one of ["AU_CON", "CA_CON", "EU_CON", "IZ_CIA", "IZ_IPL", "IZ_PEP", "IZ_UNC", "IZ_WBK", "UK_HMC", "US_DPL", "US_DTC", "US_FBI", "US_FSE", "US_ISN", "US_MBS", "US_PLC", "US_SDN", "US_SSI", "SG_SOF", "TR_TWL", "TR_DFD", "TR_FOR", "TR_WMD", "TR_CMB"].}

    VALID_VALUES = String.static_array("AU_CON", "CA_CON", "EU_CON", "IZ_CIA", "IZ_IPL", "IZ_PEP", "IZ_UNC", "IZ_WBK", "UK_HMC", "US_DPL", "US_DTC", "US_FBI", "US_FSE", "US_ISN", "US_MBS", "US_PLC", "US_SDN", "US_SSI", "SG_SOF", "TR_TWL", "TR_DFD", "TR_FOR", "TR_WMD", "TR_CMB")

    delegate to_json_object_key, to: @data

    def self.from_json(value : JSON::PullParser) : IndividualWatchlistCode
      new(value)
    end

    def self.to_json(value : IndividualWatchlistCode, json : JSON::Builder) : Nil
      value.to_json(json)
    end

    def self.new(pull : JSON::PullParser)
      new(String.new(pull), false)
    end

    def self.from_json_object_key?(key : String)
      String.from_json_object_key?(key)
    end

    def initialize(@data : String, strict : Bool = true)
      validate if strict
    end

    def error_message : String
      ERROR_MESSAGE
    end

    def list_invalid_properties : Array(String)
      errors = Array(String).new
      errors.push(error_message) unless valid?
      errors
    end

    def valid? : Bool
      OpenApi::EnumValidator.valid?(data, VALID_VALUES, false)
    end

    def validate : Nil
      OpenApi::EnumValidator.validate("IndividualWatchlistCode", data, VALID_VALUES, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end