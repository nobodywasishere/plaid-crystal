#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./source"

module Plaid
  # Information about the last change made to the parent object specifying what caused the change as well as when it occurred.
  class WatchlistScreeningAuditTrail
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "source", type: Plaid::Source?, default: nil, required: true, nullable: false, emit_null: false)]
    getter source : Plaid::Source? = nil

    # ID of the associated user.
    @[JSON::Field(key: "dashboard_user_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter dashboard_user_id : String? = nil

    # An ISO8601 formatted timestamp.
    @[JSON::Field(key: "timestamp", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter timestamp : Time? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @source : Plaid::Source? = nil,
      @dashboard_user_id : String? = nil,
      @timestamp : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"source\" is required and cannot be null") if @source.nil?

      unless (_source = @source).nil?
        invalid_properties.push(_source.error_message) if !_source.valid?
      end
      unless (_dashboard_user_id = @dashboard_user_id).nil?
      end
      invalid_properties.push("\"timestamp\" is required and cannot be null") if @timestamp.nil?

      unless (_timestamp = @timestamp).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @source.nil?
      unless (_source = @source).nil?
        return false if !_source.valid?
      end

      unless (_dashboard_user_id = @dashboard_user_id).nil?
      end

      return false if @timestamp.nil?
      unless (_timestamp = @timestamp).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(new_value : Plaid::Source?)
      raise ArgumentError.new("\"source\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @source = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dashboard_user_id Object to be assigned
    def dashboard_user_id=(new_value : String?)
      unless new_value.nil?
      end

      @dashboard_user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] timestamp Object to be assigned
    def timestamp=(new_value : Time?)
      raise ArgumentError.new("\"timestamp\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @timestamp = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@source, @dashboard_user_id, @timestamp)
  end
end
