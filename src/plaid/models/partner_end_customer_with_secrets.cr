#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./partner_end_customer_secrets"
require "./partner_end_customer_status"

module Plaid
  # The details for the newly created end customer, including secrets for non-Production environments.
  class PartnerEndCustomerWithSecrets
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The `client_id` of the end customer.
    @[JSON::Field(key: "client_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter client_id : String? = nil

    # The company name associated with the end customer.
    @[JSON::Field(key: "company_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_name : String? = nil

    @[JSON::Field(key: "status", type: Plaid::PartnerEndCustomerStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Plaid::PartnerEndCustomerStatus? = nil

    @[JSON::Field(key: "secrets", type: PartnerEndCustomerSecrets?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secrets : PartnerEndCustomerSecrets? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @client_id : String? = nil,
      @company_name : String? = nil,
      @status : Plaid::PartnerEndCustomerStatus? = nil,
      @secrets : PartnerEndCustomerSecrets? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_client_id = @client_id).nil?
      end
      unless (_company_name = @company_name).nil?
      end
      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_secrets = @secrets).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_client_id = @client_id).nil?
      end

      unless (_company_name = @company_name).nil?
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_secrets = @secrets).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_id Object to be assigned
    def client_id=(new_value : String?)
      unless new_value.nil?
      end

      @client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_name Object to be assigned
    def company_name=(new_value : String?)
      unless new_value.nil?
      end

      @company_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::PartnerEndCustomerStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secrets Object to be assigned
    def secrets=(new_value : PartnerEndCustomerSecrets?)
      unless new_value.nil?
      end

      @secrets = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@client_id, @company_name, @status, @secrets)
  end
end