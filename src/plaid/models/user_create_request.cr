#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./consumer_report_user_identity"

module Plaid
  # UserCreateRequest defines the request schema for `/user/create`
  class UserCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique ID representing the end user. Maximum of 128 characters. Typically this will be a user ID number from your application. Personally identifiable information, such as an email address or phone number, should not be used in the `client_user_id`.
    @[JSON::Field(key: "client_user_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter client_user_id : String? = nil
    MAX_LENGTH_FOR_CLIENT_USER_ID = 128
    MIN_LENGTH_FOR_CLIENT_USER_ID =   1

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "consumer_report_user_identity", type: ConsumerReportUserIdentity?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: consumer_report_user_identity.nil? && !consumer_report_user_identity_present?)]
    getter consumer_report_user_identity : ConsumerReportUserIdentity? = nil

    @[JSON::Field(ignore: true)]
    property? consumer_report_user_identity_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @client_user_id : String? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @consumer_report_user_identity : ConsumerReportUserIdentity? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"client_user_id\" is required and cannot be null") if @client_user_id.nil?

      unless (_client_user_id = @client_user_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("client_user_id", _client_user_id.to_s.size, MAX_LENGTH_FOR_CLIENT_USER_ID)
          invalid_properties.push(max_length_error)
        end

        if min_length_error = OpenApi::PrimitiveValidator.min_length_error("client_user_id", _client_user_id.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
          invalid_properties.push(min_length_error)
        end
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_consumer_report_user_identity = @consumer_report_user_identity).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @client_user_id.nil?
      unless (_client_user_id = @client_user_id).nil?
        return false if _client_user_id.to_s.size > MAX_LENGTH_FOR_CLIENT_USER_ID
        return false if _client_user_id.to_s.size < MIN_LENGTH_FOR_CLIENT_USER_ID
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_consumer_report_user_identity = @consumer_report_user_identity).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_user_id Object to be assigned
    def client_user_id=(new_value : String?)
      raise ArgumentError.new("\"client_user_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("client_user_id", new_value.to_s.size, MAX_LENGTH_FOR_CLIENT_USER_ID)
        OpenApi::PrimitiveValidator.validate_min_length("client_user_id", new_value.to_s.size, MIN_LENGTH_FOR_CLIENT_USER_ID)
      end

      @client_user_id = new_value
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
    # @param [Object] consumer_report_user_identity Object to be assigned
    def consumer_report_user_identity=(new_value : ConsumerReportUserIdentity?)
      unless new_value.nil?
      end

      @consumer_report_user_identity = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_user_id, @client_id, @secret, @consumer_report_user_identity, @consumer_report_user_identity_present)
  end
end
