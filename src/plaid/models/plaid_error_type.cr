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
  class PlaidErrorType
    include OpenApi::Validatable
    include OpenApi::Json

    property data : String

    ERROR_MESSAGE = %{invalid value for "PlaidErrorType", must be one of ["INVALID_REQUEST", "INVALID_RESULT", "INVALID_INPUT", "INSTITUTION_ERROR", "RATE_LIMIT_EXCEEDED", "API_ERROR", "ITEM_ERROR", "ASSET_REPORT_ERROR", "RECAPTCHA_ERROR", "OAUTH_ERROR", "PAYMENT_ERROR", "BANK_TRANSFER_ERROR", "INCOME_VERIFICATION_ERROR", "MICRODEPOSITS_ERROR"].}

    VALID_VALUES = String.static_array("INVALID_REQUEST", "INVALID_RESULT", "INVALID_INPUT", "INSTITUTION_ERROR", "RATE_LIMIT_EXCEEDED", "API_ERROR", "ITEM_ERROR", "ASSET_REPORT_ERROR", "RECAPTCHA_ERROR", "OAUTH_ERROR", "PAYMENT_ERROR", "BANK_TRANSFER_ERROR", "INCOME_VERIFICATION_ERROR", "MICRODEPOSITS_ERROR")

    delegate to_json_object_key, to: @data

    def self.from_json(value : JSON::PullParser) : PlaidErrorType
      new(value)
    end

    def self.to_json(value : PlaidErrorType, json : JSON::Builder) : Nil
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
      OpenApi::EnumValidator.validate("PlaidErrorType", data, VALID_VALUES, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
