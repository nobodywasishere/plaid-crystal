#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_assets"

module Plaid
  # A representation of an Item within an Asset Report.
  class AssetReportItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The `item_id` of the Item associated with this webhook, warning, or error
    @[JSON::Field(key: "item_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item_id : String? = nil

    # The full financial institution name associated with the Item.
    @[JSON::Field(key: "institution_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter institution_name : String? = nil

    # The id of the financial institution associated with the Item.
    @[JSON::Field(key: "institution_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter institution_id : String? = nil

    # The date and time when this Item’s data was last retrieved from the financial institution, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format.
    @[JSON::Field(key: "date_last_updated", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter date_last_updated : Time? = nil

    # Data about each of the accounts open on the Item.
    @[JSON::Field(key: "accounts", type: Array(Plaid::AccountAssets)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter accounts : Array(Plaid::AccountAssets)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @item_id : String? = nil,
      @institution_name : String? = nil,
      @institution_id : String? = nil,
      @date_last_updated : Time? = nil,
      @accounts : Array(Plaid::AccountAssets)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"item_id\" is required and cannot be null") if @item_id.nil?

      unless (_item_id = @item_id).nil?
      end
      invalid_properties.push("\"institution_name\" is required and cannot be null") if @institution_name.nil?

      unless (_institution_name = @institution_name).nil?
      end
      invalid_properties.push("\"institution_id\" is required and cannot be null") if @institution_id.nil?

      unless (_institution_id = @institution_id).nil?
      end
      invalid_properties.push("\"date_last_updated\" is required and cannot be null") if @date_last_updated.nil?

      unless (_date_last_updated = @date_last_updated).nil?
      end
      invalid_properties.push("\"accounts\" is required and cannot be null") if @accounts.nil?

      unless (_accounts = @accounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "accounts", container: _accounts)) if _accounts.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @item_id.nil?
      unless (_item_id = @item_id).nil?
      end

      return false if @institution_name.nil?
      unless (_institution_name = @institution_name).nil?
      end

      return false if @institution_id.nil?
      unless (_institution_id = @institution_id).nil?
      end

      return false if @date_last_updated.nil?
      unless (_date_last_updated = @date_last_updated).nil?
      end

      return false if @accounts.nil?
      unless (_accounts = @accounts).nil?
        return false if _accounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _accounts)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_id Object to be assigned
    def item_id=(new_value : String?)
      raise ArgumentError.new("\"item_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @item_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_name Object to be assigned
    def institution_name=(new_value : String?)
      raise ArgumentError.new("\"institution_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @institution_name = new_value
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
    # @param [Object] date_last_updated Object to be assigned
    def date_last_updated=(new_value : Time?)
      raise ArgumentError.new("\"date_last_updated\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @date_last_updated = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accounts Object to be assigned
    def accounts=(new_value : Array(Plaid::AccountAssets)?)
      raise ArgumentError.new("\"accounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @accounts = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@item_id, @institution_name, @institution_id, @date_last_updated, @accounts)
  end
end