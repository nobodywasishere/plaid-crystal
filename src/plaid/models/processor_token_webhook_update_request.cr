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
  # ProcessorTokenWebhookUpdateRequest defines the request schema for `/processor/token/webhook/update`
  class ProcessorTokenWebhookUpdateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
    @[JSON::Field(key: "processor_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter processor_token : String? = nil

    # The new webhook URL to associate with the processor token. To remove a webhook from a processor token, set to `null`.
    @[JSON::Field(key: "webhook", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter webhook : String? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @processor_token : String? = nil,
      @webhook : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"processor_token\" is required and cannot be null") if @processor_token.nil?

      unless (_processor_token = @processor_token).nil?
      end
      unless (_webhook = @webhook).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @processor_token.nil?
      unless (_processor_token = @processor_token).nil?
      end

      unless (_webhook = @webhook).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] processor_token Object to be assigned
    def processor_token=(new_value : String?)
      raise ArgumentError.new("\"processor_token\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @processor_token = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] webhook Object to be assigned
    def webhook=(new_value : String?)
      unless new_value.nil?
      end

      @webhook = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_id Object to be assigned
    def client_id=(new_value : String?)
      unless new_value.nil?
      end

      @client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secret Object to be assigned
    def secret=(new_value : String?)
      unless new_value.nil?
      end

      @secret = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@processor_token, @webhook, @client_id, @secret)
  end
end
