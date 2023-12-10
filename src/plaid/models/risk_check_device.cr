#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./proxy_type"

module Plaid
  # Result summary object specifying values for `device` attributes of risk check.
  class RiskCheckDevice
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "ip_proxy_type", type: Plaid::ProxyType?, default: nil, required: true, nullable: true, emit_null: true)]
    getter ip_proxy_type : Plaid::ProxyType? = nil

    # Count of spam lists the IP address is associated with if known.
    @[JSON::Field(key: "ip_spam_list_count", type: Int32?, default: nil, required: true, nullable: true, emit_null: true)]
    getter ip_spam_list_count : Int32? = nil

    # UTC offset of the timezone associated with the IP address.
    @[JSON::Field(key: "ip_timezone_offset", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter ip_timezone_offset : String? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @ip_proxy_type : Plaid::ProxyType? = nil,
      @ip_spam_list_count : Int32? = nil,
      @ip_timezone_offset : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_ip_proxy_type = @ip_proxy_type).nil?
        invalid_properties.push(_ip_proxy_type.error_message) if !_ip_proxy_type.valid?
      end
      unless (_ip_spam_list_count = @ip_spam_list_count).nil?
      end
      unless (_ip_timezone_offset = @ip_timezone_offset).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_ip_proxy_type = @ip_proxy_type).nil?
        return false if !_ip_proxy_type.valid?
      end

      unless (_ip_spam_list_count = @ip_spam_list_count).nil?
      end

      unless (_ip_timezone_offset = @ip_timezone_offset).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_proxy_type Object to be assigned
    def ip_proxy_type=(new_value : Plaid::ProxyType?)
      unless new_value.nil?
        new_value.validate
      end

      @ip_proxy_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_spam_list_count Object to be assigned
    def ip_spam_list_count=(new_value : Int32?)
      unless new_value.nil?
      end

      @ip_spam_list_count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_timezone_offset Object to be assigned
    def ip_timezone_offset=(new_value : String?)
      unless new_value.nil?
      end

      @ip_timezone_offset = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@ip_proxy_type, @ip_spam_list_count, @ip_timezone_offset)
  end
end
