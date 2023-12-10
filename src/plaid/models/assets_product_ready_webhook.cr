#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./webhook_environment_values"

module Plaid
  # Fired when the Asset Report has been generated and `/asset_report/get` is ready to be called.  If you attempt to retrieve an Asset Report before this webhook has fired, you’ll receive a response with the HTTP status code 400 and a Plaid error code of `PRODUCT_NOT_READY`.
  class AssetsProductReadyWebhook
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # `ASSETS`
    @[JSON::Field(key: "webhook_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_type : String? = nil

    # `PRODUCT_READY`
    @[JSON::Field(key: "webhook_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter webhook_code : String? = nil

    # The `asset_report_id` corresponding to the Asset Report the webhook has fired for.
    @[JSON::Field(key: "asset_report_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter asset_report_id : String? = nil

    @[JSON::Field(key: "environment", type: Plaid::WebhookEnvironmentValues?, default: nil, required: true, nullable: false, emit_null: false)]
    getter environment : Plaid::WebhookEnvironmentValues? = nil

    # End of Required Properties

    # Optional Properties

    # The `user_id` corresponding to the User ID the webhook has fired for.
    @[JSON::Field(key: "user_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_id : String? = nil

    # The report type, indicating whether the Asset Report is a `full` or `fast` report.
    @[JSON::Field(key: "report_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter report_type : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @webhook_type : String? = nil,
      @webhook_code : String? = nil,
      @asset_report_id : String? = nil,
      @environment : Plaid::WebhookEnvironmentValues? = nil,
      # Optional properties
      @user_id : String? = nil,
      @report_type : String? = nil
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
      invalid_properties.push("\"asset_report_id\" is required and cannot be null") if @asset_report_id.nil?

      unless (_asset_report_id = @asset_report_id).nil?
      end
      invalid_properties.push("\"environment\" is required and cannot be null") if @environment.nil?

      unless (_environment = @environment).nil?
        invalid_properties.push(_environment.error_message) if !_environment.valid?
      end
      unless (_user_id = @user_id).nil?
      end
      unless (_report_type = @report_type).nil?
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

      return false if @asset_report_id.nil?
      unless (_asset_report_id = @asset_report_id).nil?
      end

      return false if @environment.nil?
      unless (_environment = @environment).nil?
        return false if !_environment.valid?
      end

      unless (_user_id = @user_id).nil?
      end

      unless (_report_type = @report_type).nil?
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
    # @param [Object] asset_report_id Object to be assigned
    def asset_report_id=(new_value : String?)
      raise ArgumentError.new("\"asset_report_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @asset_report_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] environment Object to be assigned
    def environment=(new_value : Plaid::WebhookEnvironmentValues?)
      raise ArgumentError.new("\"environment\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @environment = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_id Object to be assigned
    def user_id=(new_value : String?)
      unless new_value.nil?
      end

      @user_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] report_type Object to be assigned
    def report_type=(new_value : String?)
      unless new_value.nil?
      end

      @report_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@webhook_type, @webhook_code, @asset_report_id, @environment, @user_id, @report_type)
  end
end
