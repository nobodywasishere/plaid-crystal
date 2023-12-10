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
  # EmployersSearchRequest defines the request schema for `/employers/search`.
  class EmployersSearchRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The employer name to be searched for.
    @[JSON::Field(key: "query", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter query : String? = nil

    # The Plaid products the returned employers should support. Currently, this field must be set to `\"deposit_switch\"`.
    @[JSON::Field(key: "products", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter products : Array(String)? = nil

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
      @query : String? = nil,
      @products : Array(String)? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"query\" is required and cannot be null") if @query.nil?

      unless (_query = @query).nil?
      end
      invalid_properties.push("\"products\" is required and cannot be null") if @products.nil?

      unless (_products = @products).nil?
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
      return false if @query.nil?
      unless (_query = @query).nil?
      end

      return false if @products.nil?
      unless (_products = @products).nil?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] query Object to be assigned
    def query=(new_value : String?)
      raise ArgumentError.new("\"query\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @query = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] products Object to be assigned
    def products=(new_value : Array(String)?)
      raise ArgumentError.new("\"products\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @products = new_value
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
    def_equals_and_hash(@query, @products, @client_id, @secret)
  end
end
