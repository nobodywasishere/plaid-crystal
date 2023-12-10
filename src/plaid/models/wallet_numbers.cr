#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./numbers_international_iban"
require "./recipient_bacs"

module Plaid
  # An object representing the e-wallet account numbers
  class WalletNumbers
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bacs", type: RecipientBACS?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bacs.nil? && !bacs_present?)]
    getter bacs : RecipientBACS? = nil

    @[JSON::Field(ignore: true)]
    property? bacs_present : Bool = false

    @[JSON::Field(key: "international", type: NumbersInternationalIBAN?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: international.nil? && !international_present?)]
    getter international : NumbersInternationalIBAN? = nil

    @[JSON::Field(ignore: true)]
    property? international_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bacs : RecipientBACS? = nil,
      @international : NumbersInternationalIBAN? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_bacs = @bacs).nil?
      end
      unless (_international = @international).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bacs = @bacs).nil?
      end

      unless (_international = @international).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs Object to be assigned
    def bacs=(new_value : RecipientBACS?)
      unless new_value.nil?
      end

      @bacs = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] international Object to be assigned
    def international=(new_value : NumbersInternationalIBAN?)
      unless new_value.nil?
      end

      @international = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bacs, @bacs_present, @international, @international_present)
  end
end