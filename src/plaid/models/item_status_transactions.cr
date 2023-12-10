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
  # Information about the last successful and failed transactions update for the Item.
  class ItemStatusTransactions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # [ISO 8601](https://wikipedia.org/wiki/ISO_8601) timestamp of the last successful transactions update for the Item. The status will update each time Plaid successfully connects with the institution, regardless of whether any new data is available in the update.
    @[JSON::Field(key: "last_successful_update", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_successful_update.nil? && !last_successful_update_present?, converter: Time::RFC3339Converter)]
    getter last_successful_update : Time? = nil

    @[JSON::Field(ignore: true)]
    property? last_successful_update_present : Bool = false

    # [ISO 8601](https://wikipedia.org/wiki/ISO_8601) timestamp of the last failed transactions update for the Item. The status will update each time Plaid fails an attempt to connect with the institution, regardless of whether any new data is available in the update.
    @[JSON::Field(key: "last_failed_update", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last_failed_update.nil? && !last_failed_update_present?, converter: Time::RFC3339Converter)]
    getter last_failed_update : Time? = nil

    @[JSON::Field(ignore: true)]
    property? last_failed_update_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @last_successful_update : Time? = nil,
      @last_failed_update : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_last_successful_update = @last_successful_update).nil?
      end
      unless (_last_failed_update = @last_failed_update).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_last_successful_update = @last_successful_update).nil?
      end

      unless (_last_failed_update = @last_failed_update).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_successful_update Object to be assigned
    def last_successful_update=(new_value : Time?)
      unless new_value.nil?
      end

      @last_successful_update = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_failed_update Object to be assigned
    def last_failed_update=(new_value : Time?)
      unless new_value.nil?
      end

      @last_failed_update = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@last_successful_update, @last_successful_update_present, @last_failed_update, @last_failed_update_present)
  end
end