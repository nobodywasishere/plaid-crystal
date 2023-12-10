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
  # ProcessorSignalReturnReportRequest defines the request schema for `/processor/signal/return/report`
  class ProcessorSignalReturnReportRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The processor token obtained from the Plaid integration partner. Processor tokens are in the format: `processor-<environment>-<identifier>`
    @[JSON::Field(key: "processor_token", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter processor_token : String? = nil

    # Must be the same as the `client_transaction_id` supplied when calling `/processor/signal/evaluate`
    @[JSON::Field(key: "client_transaction_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter client_transaction_id : String? = nil
    MAX_LENGTH_FOR_CLIENT_TRANSACTION_ID = 36
    MIN_LENGTH_FOR_CLIENT_TRANSACTION_ID =  1

    # Must be a valid ACH return code (e.g. \"R01\")  If formatted incorrectly, this will result in an [`INVALID_FIELD`](/docs/errors/invalid-request/#invalid_field) error.
    @[JSON::Field(key: "return_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter return_code : String? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Date and time when you receive the returns from your payment processors, in ISO 8601 format (`YYYY-MM-DDTHH:mm:ssZ`).
    @[JSON::Field(key: "returned_at", type: Time?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: returned_at.nil? && !returned_at_present?, converter: Time::RFC3339Converter)]
    getter returned_at : Time? = nil

    @[JSON::Field(ignore: true)]
    property? returned_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @processor_token : String? = nil,
      @client_transaction_id : String? = nil,
      @return_code : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @returned_at : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"processor_token\" is required and cannot be null") if @processor_token.nil?

      unless (_processor_token = @processor_token).nil?
      end
      invalid_properties.push("\"client_transaction_id\" is required and cannot be null") if @client_transaction_id.nil?

      unless (_client_transaction_id = @client_transaction_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_transaction_id", _client_transaction_id.to_s.size, MAX_LENGTH_FOR_CLIENT_TRANSACTION_ID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("client_transaction_id", _client_transaction_id.to_s.size, MIN_LENGTH_FOR_CLIENT_TRANSACTION_ID)
          invalid_properties.push(min_length_error)
        end
      end
      invalid_properties.push("\"return_code\" is required and cannot be null") if @return_code.nil?

      unless (_return_code = @return_code).nil?
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_returned_at = @returned_at).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @processor_token.nil?
      unless (_processor_token = @processor_token).nil?
      end

      return false if @client_transaction_id.nil?
      unless (_client_transaction_id = @client_transaction_id).nil?
        return false if _client_transaction_id.to_s.size > MAX_LENGTH_FOR_CLIENT_TRANSACTION_ID
        return false if _client_transaction_id.to_s.size < MIN_LENGTH_FOR_CLIENT_TRANSACTION_ID
      end

      return false if @return_code.nil?
      unless (_return_code = @return_code).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_returned_at = @returned_at).nil?
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
    # @param [Object] client_transaction_id Object to be assigned
    def client_transaction_id=(new_value : String?)
      raise ArgumentError.new("\"client_transaction_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("client_transaction_id", new_value.to_s.size, MAX_LENGTH_FOR_CLIENT_TRANSACTION_ID)
        OpenApi::PrimitiveValidator.validate_min_length("client_transaction_id", new_value.to_s.size, MIN_LENGTH_FOR_CLIENT_TRANSACTION_ID)
      end

      @client_transaction_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_code Object to be assigned
    def return_code=(new_value : String?)
      raise ArgumentError.new("\"return_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @return_code = new_value
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned_at Object to be assigned
    def returned_at=(new_value : Time?)
      unless new_value.nil?
      end

      @returned_at = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@processor_token, @client_transaction_id, @return_code, @client_id, @secret, @returned_at, @returned_at_present)
  end
end
