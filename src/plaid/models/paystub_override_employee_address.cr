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
  # The address of the employee.
  class PaystubOverrideEmployeeAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The full city name.
    @[JSON::Field(key: "city", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter city : String? = nil

    # The region or state Example: `\"NC\"`
    @[JSON::Field(key: "region", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter region : String? = nil

    # The full street address Example: `\"564 Main Street, APT 15\"`
    @[JSON::Field(key: "street", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter street : String? = nil

    # 5 digit postal code.
    @[JSON::Field(key: "postal_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter postal_code : String? = nil

    # The country of the address.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter country : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @city : String? = nil,
      @region : String? = nil,
      @street : String? = nil,
      @postal_code : String? = nil,
      @country : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_city = @city).nil?
      end
      unless (_region = @region).nil?
      end
      unless (_street = @street).nil?
      end
      unless (_postal_code = @postal_code).nil?
      end
      unless (_country = @country).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_city = @city).nil?
      end

      unless (_region = @region).nil?
      end

      unless (_street = @street).nil?
      end

      unless (_postal_code = @postal_code).nil?
      end

      unless (_country = @country).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] city Object to be assigned
    def city=(new_value : String?)
      unless new_value.nil?
      end

      @city = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] region Object to be assigned
    def region=(new_value : String?)
      unless new_value.nil?
      end

      @region = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] street Object to be assigned
    def street=(new_value : String?)
      unless new_value.nil?
      end

      @street = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] postal_code Object to be assigned
    def postal_code=(new_value : String?)
      unless new_value.nil?
      end

      @postal_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      unless new_value.nil?
      end

      @country = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@city, @region, @street, @postal_code, @country)
  end
end
