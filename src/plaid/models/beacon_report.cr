#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./beacon_audit_trail"
require "./beacon_report_type"
require "./fraud_amount"

module Plaid
  # A Beacon Report describes the type of fraud committed by a user as well as the date the fraud was committed and the total amount of money lost due to the fraud incident.  This information is used to block similar fraud attempts on your platform as well as alert other companies who screen a user with matching identity information. Other companies will not receive any new identity information, just what matched, plus information such as industry, type of fraud, and date of fraud.  You can manage your fraud reports by adding, deleting, or editing reports as you get additional information on fraudulent users.
  class BeaconReport
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated Beacon Report.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # ID of the associated Beacon User.
    @[JSON::Field(key: "beacon_user_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter beacon_user_id : String? = nil

    # An ISO8601 formatted timestamp.
    @[JSON::Field(key: "created_at", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created_at : Time? = nil

    @[JSON::Field(key: "type", type: Plaid::BeaconReportType?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : Plaid::BeaconReportType? = nil

    # A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
    @[JSON::Field(key: "fraud_date", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter fraud_date : Time? = nil

    @[JSON::Field(key: "fraud_amount", type: FraudAmount?, default: nil, required: true, nullable: true, emit_null: true)]
    getter fraud_amount : FraudAmount? = nil

    @[JSON::Field(key: "audit_trail", type: BeaconAuditTrail?, default: nil, required: true, nullable: false, emit_null: false)]
    getter audit_trail : BeaconAuditTrail? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @beacon_user_id : String? = nil,
      @created_at : Time? = nil,
      @_type : Plaid::BeaconReportType? = nil,
      @fraud_date : Time? = nil,
      @fraud_amount : FraudAmount? = nil,
      @audit_trail : BeaconAuditTrail? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"beacon_user_id\" is required and cannot be null") if @beacon_user_id.nil?

      unless (_beacon_user_id = @beacon_user_id).nil?
      end
      invalid_properties.push("\"created_at\" is required and cannot be null") if @created_at.nil?

      unless (_created_at = @created_at).nil?
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(__type.error_message) if !__type.valid?
      end
      invalid_properties.push("\"fraud_date\" is required and cannot be null") if @fraud_date.nil?

      unless (_fraud_date = @fraud_date).nil?
      end
      unless (_fraud_amount = @fraud_amount).nil?
      end
      invalid_properties.push("\"audit_trail\" is required and cannot be null") if @audit_trail.nil?

      unless (_audit_trail = @audit_trail).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @beacon_user_id.nil?
      unless (_beacon_user_id = @beacon_user_id).nil?
      end

      return false if @created_at.nil?
      unless (_created_at = @created_at).nil?
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false if !__type.valid?
      end

      return false if @fraud_date.nil?
      unless (_fraud_date = @fraud_date).nil?
      end

      unless (_fraud_amount = @fraud_amount).nil?
      end

      return false if @audit_trail.nil?
      unless (_audit_trail = @audit_trail).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] beacon_user_id Object to be assigned
    def beacon_user_id=(new_value : String?)
      raise ArgumentError.new("\"beacon_user_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @beacon_user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created_at Object to be assigned
    def created_at=(new_value : Time?)
      raise ArgumentError.new("\"created_at\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : Plaid::BeaconReportType?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraud_date Object to be assigned
    def fraud_date=(new_value : Time?)
      raise ArgumentError.new("\"fraud_date\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @fraud_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraud_amount Object to be assigned
    def fraud_amount=(new_value : FraudAmount?)
      unless new_value.nil?
      end

      @fraud_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] audit_trail Object to be assigned
    def audit_trail=(new_value : BeaconAuditTrail?)
      raise ArgumentError.new("\"audit_trail\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @audit_trail = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @beacon_user_id, @created_at, @_type, @fraud_date, @fraud_amount, @audit_trail)
  end
end
