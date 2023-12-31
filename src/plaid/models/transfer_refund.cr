#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_refund_failure"
require "./transfer_refund_status"

module Plaid
  # Represents a refund within the Transfers API.
  class TransferRefund
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Plaid’s unique identifier for a refund.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The ID of the transfer to refund.
    @[JSON::Field(key: "transfer_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transfer_id : String? = nil

    # The amount of the refund (decimal string with two digits of precision e.g. \"10.00\").
    @[JSON::Field(key: "amount", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : String? = nil

    @[JSON::Field(key: "status", type: Plaid::TransferRefundStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::TransferRefundStatus? = nil

    @[JSON::Field(key: "failure_reason", type: TransferRefundFailure?, default: nil, required: true, nullable: true, emit_null: true)]
    getter failure_reason : TransferRefundFailure? = nil

    # The datetime when this refund was created. This will be of the form `2006-01-02T15:04:05Z`
    @[JSON::Field(key: "created", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created : Time? = nil

    # End of Required Properties

    # Optional Properties

    # The trace identifier for the transfer based on its network. This will only be set after the transfer has posted.  For `ach` or `same-day-ach` transfers, this is the ACH trace number. Currently, the field will remain null for transfers on other rails.
    @[JSON::Field(key: "network_trace_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network_trace_id.nil? && !network_trace_id_present?)]
    getter network_trace_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? network_trace_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @transfer_id : String? = nil,
      @amount : String? = nil,
      @status : Plaid::TransferRefundStatus? = nil,
      @failure_reason : TransferRefundFailure? = nil,
      @created : Time? = nil,
      # Optional properties
      @network_trace_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"transfer_id\" is required and cannot be null") if @transfer_id.nil?

      unless (_transfer_id = @transfer_id).nil?
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_failure_reason = @failure_reason).nil?
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_created = @created).nil?
      end
      unless (_network_trace_id = @network_trace_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @transfer_id.nil?
      unless (_transfer_id = @transfer_id).nil?
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_failure_reason = @failure_reason).nil?
      end

      return false if @created.nil?
      unless (_created = @created).nil?
      end

      unless (_network_trace_id = @network_trace_id).nil?
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
    # @param [Object] transfer_id Object to be assigned
    def transfer_id=(new_value : String?)
      raise ArgumentError.new("\"transfer_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @transfer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : String?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::TransferRefundStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_reason Object to be assigned
    def failure_reason=(new_value : TransferRefundFailure?)
      unless new_value.nil?
      end

      @failure_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Time?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_trace_id Object to be assigned
    def network_trace_id=(new_value : String?)
      unless new_value.nil?
      end

      @network_trace_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @transfer_id, @amount, @status, @failure_reason, @created, @network_trace_id, @network_trace_id_present)
  end
end
