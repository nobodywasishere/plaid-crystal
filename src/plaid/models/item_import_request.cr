#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./item_import_request_options"
require "./item_import_request_user_auth"
require "./products"

module Plaid
  # ItemImportRequest defines the request schema for `/item/import`
  class ItemImportRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Array of product strings
    @[JSON::Field(key: "products", type: Array(Products)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter products : Array(Products)? = nil
    MIN_ITEMS_FOR_PRODUCTS = 1

    @[JSON::Field(key: "user_auth", type: Plaid::ItemImportRequestUserAuth?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user_auth : Plaid::ItemImportRequestUserAuth? = nil

    # End of Required Properties

    # Optional Properties

    # Your Plaid API `client_id`. The `client_id` is required and may be provided either in the `PLAID-CLIENT-ID` header or as part of a request body.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # Your Plaid API `secret`. The `secret` is required and may be provided either in the `PLAID-SECRET` header or as part of a request body.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secret : String? = nil

    @[JSON::Field(key: "options", type: Plaid::ItemImportRequestOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter options : Plaid::ItemImportRequestOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @products : Array(Products)? = nil,
      @user_auth : Plaid::ItemImportRequestUserAuth? = nil,
      # Optional properties
      @client_id : String? = nil,
      @secret : String? = nil,
      @options : Plaid::ItemImportRequestOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"products\" is required and cannot be null") if @products.nil?

      unless (_products = @products).nil?
        if min_items_error = OpenApi::PrimitiveValidator.min_items_error("products", _products.size, MIN_ITEMS_FOR_PRODUCTS)
          invalid_properties.push(min_items_error)
        end
      end
      invalid_properties.push("\"user_auth\" is required and cannot be null") if @user_auth.nil?

      unless (_user_auth = @user_auth).nil?
        invalid_properties.concat(_user_auth.list_invalid_properties_for("user_auth")) if _user_auth.is_a?(OpenApi::Validatable)
      end
      unless (_client_id = @client_id).nil?
      end
      unless (_secret = @secret).nil?
      end
      unless (_options = @options).nil?
        invalid_properties.concat(_options.list_invalid_properties_for("options")) if _options.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @products.nil?
      unless (_products = @products).nil?
        return false if _products.size < MIN_ITEMS_FOR_PRODUCTS
      end

      return false if @user_auth.nil?
      unless (_user_auth = @user_auth).nil?
        return false if _user_auth.is_a?(OpenApi::Validatable) && !_user_auth.valid?
      end

      unless (_client_id = @client_id).nil?
      end

      unless (_secret = @secret).nil?
      end

      unless (_options = @options).nil?
        return false if _options.is_a?(OpenApi::Validatable) && !_options.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] products Object to be assigned
    def products=(new_value : Array(Products)?)
      raise ArgumentError.new("\"products\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_min_items("products", new_value.size, MIN_ITEMS_FOR_PRODUCTS)
      end

      @products = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_auth Object to be assigned
    def user_auth=(new_value : Plaid::ItemImportRequestUserAuth?)
      raise ArgumentError.new("\"user_auth\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @user_auth = new_value
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
    def options=(new_value : Plaid::ItemImportRequestOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @options = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@products, @user_auth, @client_id, @secret, @options)
  end
end
