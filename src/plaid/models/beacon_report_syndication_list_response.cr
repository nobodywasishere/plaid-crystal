#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./beacon_report_syndication"

module Plaid
  # The response schema for `/beacon/report_syndication/list`
  class BeaconReportSyndicationListResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "beacon_report_syndications", type: Array(BeaconReportSyndication)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter beacon_report_syndications : Array(BeaconReportSyndication)? = nil

    # An identifier that determines which page of results you receive.
    @[JSON::Field(key: "next_cursor", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter next_cursor : String? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @beacon_report_syndications : Array(BeaconReportSyndication)? = nil,
      @next_cursor : String? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"beacon_report_syndications\" is required and cannot be null") if @beacon_report_syndications.nil?

      unless (_beacon_report_syndications = @beacon_report_syndications).nil?
      end
      unless (_next_cursor = @next_cursor).nil?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @beacon_report_syndications.nil?
      unless (_beacon_report_syndications = @beacon_report_syndications).nil?
      end

      unless (_next_cursor = @next_cursor).nil?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] beacon_report_syndications Object to be assigned
    def beacon_report_syndications=(new_value : Array(BeaconReportSyndication)?)
      raise ArgumentError.new("\"beacon_report_syndications\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @beacon_report_syndications = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] next_cursor Object to be assigned
    def next_cursor=(new_value : String?)
      unless new_value.nil?
      end

      @next_cursor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@beacon_report_syndications, @next_cursor, @request_id)
  end
end
