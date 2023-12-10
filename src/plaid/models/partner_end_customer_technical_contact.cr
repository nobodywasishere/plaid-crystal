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
  # The technical contact for the end customer. Defaults to partner's technical contact if omitted.
  class PartnerEndCustomerTechnicalContact
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "given_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter given_name : String? = nil

    @[JSON::Field(key: "family_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter family_name : String? = nil

    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @given_name : String? = nil,
      @family_name : String? = nil,
      @email : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_given_name = @given_name).nil?
      end
      unless (_family_name = @family_name).nil?
      end
      unless (_email = @email).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_given_name = @given_name).nil?
      end

      unless (_family_name = @family_name).nil?
      end

      unless (_email = @email).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] given_name Object to be assigned
    def given_name=(new_value : String?)
      unless new_value.nil?
      end

      @given_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] family_name Object to be assigned
    def family_name=(new_value : String?)
      unless new_value.nil?
      end

      @family_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(new_value : String?)
      unless new_value.nil?
      end

      @email = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@given_name, @family_name, @email)
  end
end