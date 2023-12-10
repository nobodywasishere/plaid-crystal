#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_funding_account"

module Plaid
  # Defines the request schema for `/transfer/originator/funding_account/update`
  class TransferOriginatorFundingAccountUpdateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Plaid client ID of the transfer originator.
    @[JSON::Field(key: "originator_client_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter originator_client_id : String? = nil

    @[JSON::Field(key: "funding_account", type: Plaid::TransferFundingAccount?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding_account : Plaid::TransferFundingAccount? = nil

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
      @originator_client_id : String? = nil,
      @funding_account : Plaid::TransferFundingAccount? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"originator_client_id\" is required and cannot be null") if @originator_client_id.nil?

      unless (_originator_client_id = @originator_client_id).nil?
      end
      invalid_properties.push("\"funding_account\" is required and cannot be null") if @funding_account.nil?

      unless (_funding_account = @funding_account).nil?
        invalid_properties.concat(_funding_account.list_invalid_properties_for("funding_account")) if _funding_account.is_a?(OpenApi::Validatable)
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
      return false if @originator_client_id.nil?
      unless (_originator_client_id = @originator_client_id).nil?
      end

      return false if @funding_account.nil?
      unless (_funding_account = @funding_account).nil?
        return false if _funding_account.is_a?(OpenApi::Validatable) && !_funding_account.valid?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] originator_client_id Object to be assigned
    def originator_client_id=(new_value : String?)
      raise ArgumentError.new("\"originator_client_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @originator_client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_account Object to be assigned
    def funding_account=(new_value : Plaid::TransferFundingAccount?)
      raise ArgumentError.new("\"funding_account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @funding_account = new_value
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
    def_equals_and_hash(@originator_client_id, @funding_account, @client_id, @secret)
  end
end
