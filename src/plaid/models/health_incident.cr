#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./incident_update"

module Plaid
  # A status health incident
  class HealthIncident
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The start date of the incident, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format, e.g. `\"2020-10-30T15:26:48Z\"`.
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter start_date : Time? = nil

    # The title of the incident
    @[JSON::Field(key: "title", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter title : String? = nil

    # Updates on the health incident.
    @[JSON::Field(key: "incident_updates", type: Array(IncidentUpdate)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter incident_updates : Array(IncidentUpdate)? = nil

    # End of Required Properties

    # Optional Properties

    # The end date of the incident, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format, e.g. `\"2020-10-30T15:26:48Z\"`.
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?, converter: Time::RFC3339Converter)]
    getter end_date : Time? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @start_date : Time? = nil,
      @title : String? = nil,
      @incident_updates : Array(IncidentUpdate)? = nil,
      # Optional properties
      @end_date : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"start_date\" is required and cannot be null") if @start_date.nil?

      unless (_start_date = @start_date).nil?
      end
      invalid_properties.push("\"title\" is required and cannot be null") if @title.nil?

      unless (_title = @title).nil?
      end
      invalid_properties.push("\"incident_updates\" is required and cannot be null") if @incident_updates.nil?

      unless (_incident_updates = @incident_updates).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @start_date.nil?
      unless (_start_date = @start_date).nil?
      end

      return false if @title.nil?
      unless (_title = @title).nil?
      end

      return false if @incident_updates.nil?
      unless (_incident_updates = @incident_updates).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Time?)
      raise ArgumentError.new("\"start_date\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @start_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(new_value : String?)
      raise ArgumentError.new("\"title\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @title = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] incident_updates Object to be assigned
    def incident_updates=(new_value : Array(IncidentUpdate)?)
      raise ArgumentError.new("\"incident_updates\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @incident_updates = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(new_value : Time?)
      unless new_value.nil?
      end

      @end_date = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@start_date, @title, @incident_updates, @end_date, @end_date_present)
  end
end