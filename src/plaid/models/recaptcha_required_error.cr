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
  # The request was flagged by Plaid's fraud system, and requires additional verification to ensure they are not a bot.
  class RecaptchaRequiredError
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # RECAPTCHA_ERROR
    @[JSON::Field(key: "error_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter error_type : String? = nil

    # RECAPTCHA_REQUIRED
    @[JSON::Field(key: "error_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter error_code : String? = nil

    @[JSON::Field(key: "display_message", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_message : String? = nil

    # 400
    @[JSON::Field(key: "http_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter http_code : String? = nil

    # Your user will be prompted to solve a Google reCAPTCHA challenge in the Link Recaptcha pane. If they solve the challenge successfully, the user's request is resubmitted and they are directed to the next Item creation step.
    @[JSON::Field(key: "link_user_experience", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter link_user_experience : String? = nil

    # Plaid's fraud system detects abusive traffic and considers a variety of parameters throughout Item creation requests. When a request is considered risky or possibly fraudulent, Link presents a reCAPTCHA for the user to solve.
    @[JSON::Field(key: "common_causes", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter common_causes : String? = nil

    # Link will automatically guide your user through reCAPTCHA verification. As a general rule, we recommend instrumenting basic fraud monitoring to detect and protect your website from spam and abuse.  If your user cannot verify their session, please submit a Support ticket with the following identifiers: `link_session_id` or `request_id`
    @[JSON::Field(key: "troubleshooting_steps", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter troubleshooting_steps : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @error_type : String? = nil,
      @error_code : String? = nil,
      @display_message : String? = nil,
      @http_code : String? = nil,
      @link_user_experience : String? = nil,
      @common_causes : String? = nil,
      @troubleshooting_steps : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"error_type\" is required and cannot be null") if @error_type.nil?

      unless (_error_type = @error_type).nil?
      end
      invalid_properties.push("\"error_code\" is required and cannot be null") if @error_code.nil?

      unless (_error_code = @error_code).nil?
      end
      invalid_properties.push("\"display_message\" is required and cannot be null") if @display_message.nil?

      unless (_display_message = @display_message).nil?
      end
      invalid_properties.push("\"http_code\" is required and cannot be null") if @http_code.nil?

      unless (_http_code = @http_code).nil?
      end
      invalid_properties.push("\"link_user_experience\" is required and cannot be null") if @link_user_experience.nil?

      unless (_link_user_experience = @link_user_experience).nil?
      end
      invalid_properties.push("\"common_causes\" is required and cannot be null") if @common_causes.nil?

      unless (_common_causes = @common_causes).nil?
      end
      invalid_properties.push("\"troubleshooting_steps\" is required and cannot be null") if @troubleshooting_steps.nil?

      unless (_troubleshooting_steps = @troubleshooting_steps).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @error_type.nil?
      unless (_error_type = @error_type).nil?
      end

      return false if @error_code.nil?
      unless (_error_code = @error_code).nil?
      end

      return false if @display_message.nil?
      unless (_display_message = @display_message).nil?
      end

      return false if @http_code.nil?
      unless (_http_code = @http_code).nil?
      end

      return false if @link_user_experience.nil?
      unless (_link_user_experience = @link_user_experience).nil?
      end

      return false if @common_causes.nil?
      unless (_common_causes = @common_causes).nil?
      end

      return false if @troubleshooting_steps.nil?
      unless (_troubleshooting_steps = @troubleshooting_steps).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_type Object to be assigned
    def error_type=(new_value : String?)
      raise ArgumentError.new("\"error_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @error_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] error_code Object to be assigned
    def error_code=(new_value : String?)
      raise ArgumentError.new("\"error_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @error_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_message Object to be assigned
    def display_message=(new_value : String?)
      raise ArgumentError.new("\"display_message\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @display_message = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] http_code Object to be assigned
    def http_code=(new_value : String?)
      raise ArgumentError.new("\"http_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @http_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_user_experience Object to be assigned
    def link_user_experience=(new_value : String?)
      raise ArgumentError.new("\"link_user_experience\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @link_user_experience = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] common_causes Object to be assigned
    def common_causes=(new_value : String?)
      raise ArgumentError.new("\"common_causes\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @common_causes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] troubleshooting_steps Object to be assigned
    def troubleshooting_steps=(new_value : String?)
      raise ArgumentError.new("\"troubleshooting_steps\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @troubleshooting_steps = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@error_type, @error_code, @display_message, @http_code, @link_user_experience, @common_causes, @troubleshooting_steps)
  end
end
