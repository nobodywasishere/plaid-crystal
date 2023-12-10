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
  # Contains the state of a completed link session, along with the public token if available.
  class LinkSessionFinishedWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `LINK`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `SESSION_FINISHED`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # The final status of the link session. Will always be \"SUCCESS\" or \"EXITED\".
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # The identifier for the link session.
    @[JSON::Field(key: "link_session_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter link_session_id : String? = nil

    # The link token used to create the link session.
    @[JSON::Field(key: "link_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter link_token : String? = nil

    # End of Required Properties

    # Optional Properties

    # The public token generated by the link session.
    @[JSON::Field(key: "public_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter public_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @webhook_type : String? = nil,
      @webhook_code : String? = nil,
      @status : String? = nil,
      @link_session_id : String? = nil,
      @link_token : String? = nil,
      # Optional properties
      @public_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"webhook_type\" is required and cannot be null") if @webhook_type.nil?

      unless (_webhook_type = @webhook_type).nil?
      end
      invalid_properties.push("\"webhook_code\" is required and cannot be null") if @webhook_code.nil?

      unless (_webhook_code = @webhook_code).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
      end
      invalid_properties.push("\"link_session_id\" is required and cannot be null") if @link_session_id.nil?

      unless (_link_session_id = @link_session_id).nil?
      end
      invalid_properties.push("\"link_token\" is required and cannot be null") if @link_token.nil?

      unless (_link_token = @link_token).nil?
      end
      unless (_public_token = @public_token).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @webhook_type.nil?
      unless (_webhook_type = @webhook_type).nil?
      end

      return false if @webhook_code.nil?
      unless (_webhook_code = @webhook_code).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
      end

      return false if @link_session_id.nil?
      unless (_link_session_id = @link_session_id).nil?
      end

      return false if @link_token.nil?
      unless (_link_token = @link_token).nil?
      end

      unless (_public_token = @public_token).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_type Object to be assigned
    def webhook_type=(new_value : String?)
      raise ArgumentError.new("\"webhook_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @webhook_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook_code Object to be assigned
    def webhook_code=(new_value : String?)
      raise ArgumentError.new("\"webhook_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @webhook_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_session_id Object to be assigned
    def link_session_id=(new_value : String?)
      raise ArgumentError.new("\"link_session_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @link_session_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_token Object to be assigned
    def link_token=(new_value : String?)
      raise ArgumentError.new("\"link_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @link_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] public_token Object to be assigned
    def public_token=(new_value : String?)
      unless new_value.nil?
      end

      @public_token = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@webhook_type, @webhook_code, @status, @link_session_id, @link_token, @public_token)
  end
end
