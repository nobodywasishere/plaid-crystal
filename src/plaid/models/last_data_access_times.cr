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
  # Describes the last time each datatype was accessed by an application.
  class LastDataAccessTimes
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the application accessing data.
    @[JSON::Field(key: "application_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter application_id : String? = nil

    # The last time account_balance_info was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "account_balance_info", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter account_balance_info : Time? = nil

    # The last time account_routing_number was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "account_routing_number", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter account_routing_number : Time? = nil

    # The last time contact_details was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "contact_details", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter contact_details : Time? = nil

    # The last time transactions was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "transactions", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter transactions : Time? = nil

    # The last time credit_and_loans was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "credit_and_loans", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter credit_and_loans : Time? = nil

    # The last time investments was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "investments", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter investments : Time? = nil

    # The last time payroll_info was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "payroll_info", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter payroll_info : Time? = nil

    # The last time transaction_risk_info was accessed by this application in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) format in UTC. null if never accessed.
    @[JSON::Field(key: "transaction_risk_info", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::RFC3339Converter)]
    getter transaction_risk_info : Time? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @application_id : String? = nil,
      @account_balance_info : Time? = nil,
      @account_routing_number : Time? = nil,
      @contact_details : Time? = nil,
      @transactions : Time? = nil,
      @credit_and_loans : Time? = nil,
      @investments : Time? = nil,
      @payroll_info : Time? = nil,
      @transaction_risk_info : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"application_id\" is required and cannot be null") if @application_id.nil?

      unless (_application_id = @application_id).nil?
      end
      unless (_account_balance_info = @account_balance_info).nil?
      end
      unless (_account_routing_number = @account_routing_number).nil?
      end
      unless (_contact_details = @contact_details).nil?
      end
      unless (_transactions = @transactions).nil?
      end
      unless (_credit_and_loans = @credit_and_loans).nil?
      end
      unless (_investments = @investments).nil?
      end
      unless (_payroll_info = @payroll_info).nil?
      end
      unless (_transaction_risk_info = @transaction_risk_info).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @application_id.nil?
      unless (_application_id = @application_id).nil?
      end

      unless (_account_balance_info = @account_balance_info).nil?
      end

      unless (_account_routing_number = @account_routing_number).nil?
      end

      unless (_contact_details = @contact_details).nil?
      end

      unless (_transactions = @transactions).nil?
      end

      unless (_credit_and_loans = @credit_and_loans).nil?
      end

      unless (_investments = @investments).nil?
      end

      unless (_payroll_info = @payroll_info).nil?
      end

      unless (_transaction_risk_info = @transaction_risk_info).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_id Object to be assigned
    def application_id=(new_value : String?)
      raise ArgumentError.new("\"application_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @application_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_balance_info Object to be assigned
    def account_balance_info=(new_value : Time?)
      unless new_value.nil?
      end

      @account_balance_info = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_routing_number Object to be assigned
    def account_routing_number=(new_value : Time?)
      unless new_value.nil?
      end

      @account_routing_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] contact_details Object to be assigned
    def contact_details=(new_value : Time?)
      unless new_value.nil?
      end

      @contact_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transactions Object to be assigned
    def transactions=(new_value : Time?)
      unless new_value.nil?
      end

      @transactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_and_loans Object to be assigned
    def credit_and_loans=(new_value : Time?)
      unless new_value.nil?
      end

      @credit_and_loans = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] investments Object to be assigned
    def investments=(new_value : Time?)
      unless new_value.nil?
      end

      @investments = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payroll_info Object to be assigned
    def payroll_info=(new_value : Time?)
      unless new_value.nil?
      end

      @payroll_info = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_risk_info Object to be assigned
    def transaction_risk_info=(new_value : Time?)
      unless new_value.nil?
      end

      @transaction_risk_info = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application_id, @account_balance_info, @account_routing_number, @contact_details, @transactions, @credit_and_loans, @investments, @payroll_info, @transaction_risk_info)
  end
end
