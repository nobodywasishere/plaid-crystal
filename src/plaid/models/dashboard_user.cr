#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./dashboard_user_status"

module Plaid
  # Account information associated with a team member with access to the Plaid dashboard.
  class DashboardUser
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated user.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # An ISO8601 formatted timestamp.
    @[JSON::Field(key: "created_at", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created_at : Time? = nil

    # A valid email address.
    @[JSON::Field(key: "email_address", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter email_address : String? = nil

    @[JSON::Field(key: "status", type: Plaid::DashboardUserStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::DashboardUserStatus? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @created_at : Time? = nil,
      @email_address : String? = nil,
      @status : Plaid::DashboardUserStatus? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"created_at\" is required and cannot be null") if @created_at.nil?

      unless (_created_at = @created_at).nil?
      end
      invalid_properties.push("\"email_address\" is required and cannot be null") if @email_address.nil?

      unless (_email_address = @email_address).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @created_at.nil?
      unless (_created_at = @created_at).nil?
      end

      return false if @email_address.nil?
      unless (_email_address = @email_address).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
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
    # @param [Object] created_at Object to be assigned
    def created_at=(new_value : Time?)
      raise ArgumentError.new("\"created_at\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_address Object to be assigned
    def email_address=(new_value : String?)
      raise ArgumentError.new("\"email_address\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @email_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::DashboardUserStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @created_at, @email_address, @status)
  end
end
