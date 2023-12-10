#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_profile_status"

module Plaid
  # PaymentProfileGetResponse defines the response schema for `/payment_profile/get`
  class PaymentProfileGetResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the last time the given Payment Profile was updated at
    @[JSON::Field(key: "updated_at", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter updated_at : Time? = nil

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the time the given Payment Profile was created at
    @[JSON::Field(key: "created_at", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created_at : Time? = nil

    # Timestamp in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format (`YYYY-MM-DDTHH:mm:ssZ`) indicating the time the given Payment Profile was deleted at. Always `null` if the Payment Profile has not been deleted
    @[JSON::Field(key: "deleted_at", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter deleted_at : Time? = nil

    @[JSON::Field(key: "status", type: Plaid::PaymentProfileStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::PaymentProfileStatus? = nil

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @updated_at : Time? = nil,
      @created_at : Time? = nil,
      @deleted_at : Time? = nil,
      @status : Plaid::PaymentProfileStatus? = nil,
      @request_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"updated_at\" is required and cannot be null") if @updated_at.nil?

      unless (_updated_at = @updated_at).nil?
      end
      invalid_properties.push("\"created_at\" is required and cannot be null") if @created_at.nil?

      unless (_created_at = @created_at).nil?
      end
      unless (_deleted_at = @deleted_at).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @updated_at.nil?
      unless (_updated_at = @updated_at).nil?
      end

      return false if @created_at.nil?
      unless (_created_at = @created_at).nil?
      end

      unless (_deleted_at = @deleted_at).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] updated_at Object to be assigned
    def updated_at=(new_value : Time?)
      raise ArgumentError.new("\"updated_at\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @updated_at = new_value
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
    # @param [Object] deleted_at Object to be assigned
    def deleted_at=(new_value : Time?)
      unless new_value.nil?
      end

      @deleted_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::PaymentProfileStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
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
    def_equals_and_hash(@updated_at, @created_at, @deleted_at, @status, @request_id)
  end
end
