#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./products"
require "./sandbox_public_token_create_request_options"

module Plaid
  # SandboxPublicTokenCreateRequest defines the request schema for `/sandbox/public_token/create`
  class SandboxPublicTokenCreateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the institution the Item will be associated with
    @[JSON::Field(key: "institution_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter institution_id : String? = nil

    # The products to initially pull for the Item. May be any products that the specified `institution_id`  supports. This array may not be empty.
    @[JSON::Field(key: "initial_products", type: Array(Products)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter initial_products : Array(Products)? = nil
    MIN_ITEMS_FOR_INITIAL_PRODUCTS = 1

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "options", type: Plaid::SandboxPublicTokenCreateRequestOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter options : Plaid::SandboxPublicTokenCreateRequestOptions? = nil

    # The user token associated with the User data is being requested for.
    @[JSON::Field(key: "user_token", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_token : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @institution_id : String? = nil,
      @initial_products : Array(Products)? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @options : Plaid::SandboxPublicTokenCreateRequestOptions? = nil,
      @user_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"institution_id\" is required and cannot be null") if @institution_id.nil?

      unless (_institution_id = @institution_id).nil?
      end
      invalid_properties.push("\"initial_products\" is required and cannot be null") if @initial_products.nil?

      unless (_initial_products = @initial_products).nil?
        if min_items_error = OpenApi::PrimitiveValidator.min_items_error("initial_products", _initial_products.size, MIN_ITEMS_FOR_INITIAL_PRODUCTS)
          invalid_properties.push(min_items_error)
        end
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      unless (_user_token = @user_token).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @institution_id.nil?
      unless (_institution_id = @institution_id).nil?
      end

      return false if @initial_products.nil?
      unless (_initial_products = @initial_products).nil?
        return false if _initial_products.size < MIN_ITEMS_FOR_INITIAL_PRODUCTS
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      unless (_user_token = @user_token).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_id Object to be assigned
    def institution_id=(new_value : String?)
      raise ArgumentError.new("\"institution_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @institution_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] initial_products Object to be assigned
    def initial_products=(new_value : Array(Products)?)
      raise ArgumentError.new("\"initial_products\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_items("initial_products", new_value.size, MIN_ITEMS_FOR_INITIAL_PRODUCTS)
      end

      @initial_products = new_value
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
    # @param [Object] options Object to be assigned
    def options=(new_value : Plaid::SandboxPublicTokenCreateRequestOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_token Object to be assigned
    def user_token=(new_value : String?)
      unless new_value.nil?
      end

      @user_token = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@institution_id, @initial_products, @client_id, @secret, @options, @user_token)
  end
end
