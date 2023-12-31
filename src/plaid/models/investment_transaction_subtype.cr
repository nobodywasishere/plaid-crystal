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
  class InvestmentTransactionSubtype
    include OpenApi::Validatable
    include OpenApi::Json

    property data : String

    ERROR_MESSAGE = %{invalid value for "InvestmentTransactionSubtype", must be one of ["account fee", "adjustment", "assignment", "buy", "buy to cover", "contribution", "deposit", "distribution", "dividend", "dividend reinvestment", "exercise", "expire", "fund fee", "interest", "interest receivable", "interest reinvestment", "legal fee", "loan payment", "long-term capital gain", "long-term capital gain reinvestment", "management fee", "margin expense", "merger", "miscellaneous fee", "non-qualified dividend", "non-resident tax", "pending credit", "pending debit", "qualified dividend", "rebalance", "return of principal", "request", "sell", "sell short", "send", "short-term capital gain", "short-term capital gain reinvestment", "spin off", "split", "stock distribution", "tax", "tax withheld", "trade", "transfer", "transfer fee", "trust fee", "unqualified gain", "withdrawal"].}

    VALID_VALUES = String.static_array("account fee", "adjustment", "assignment", "buy", "buy to cover", "contribution", "deposit", "distribution", "dividend", "dividend reinvestment", "exercise", "expire", "fund fee", "interest", "interest receivable", "interest reinvestment", "legal fee", "loan payment", "long-term capital gain", "long-term capital gain reinvestment", "management fee", "margin expense", "merger", "miscellaneous fee", "non-qualified dividend", "non-resident tax", "pending credit", "pending debit", "qualified dividend", "rebalance", "return of principal", "request", "sell", "sell short", "send", "short-term capital gain", "short-term capital gain reinvestment", "spin off", "split", "stock distribution", "tax", "tax withheld", "trade", "transfer", "transfer fee", "trust fee", "unqualified gain", "withdrawal")

    delegate to_json_object_key, to: @data

    def self.from_json(value : JSON::PullParser) : InvestmentTransactionSubtype
      new(value)
    end

    def self.to_json(value : InvestmentTransactionSubtype, json : JSON::Builder) : Nil
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
      OpenApi::EnumValidator.validate("InvestmentTransactionSubtype", data, VALID_VALUES, false)
    end

    def to_json(json : JSON::Builder) : Nil
      @data.to_json(json)
    end

    def_equals_and_hash(@data)
  end
end
