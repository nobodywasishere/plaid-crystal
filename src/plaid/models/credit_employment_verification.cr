#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_employer_verification"
require "./credit_platform_ids"

module Plaid
  # The object containing proof of employment data for an individual.
  class CreditEmploymentVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the payroll provider account.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter account_id : String? = nil

    # Current employment status.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter status : String? = nil

    # Start of employment in ISO 8601 format (YYYY-MM-DD).
    @[JSON::Field(key: "start_date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter start_date : Time? = nil

    # End of employment, if applicable. Provided in ISO 8601 format (YYY-MM-DD).
    @[JSON::Field(key: "end_date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter end_date : Time? = nil

    @[JSON::Field(key: "employer", type: CreditEmployerVerification?, default: nil, required: true, nullable: false, emit_null: false)]
    getter employer : CreditEmployerVerification? = nil

    # Current title of employee.
    @[JSON::Field(key: "title", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter title : String? = nil

    @[JSON::Field(key: "platform_ids", type: CreditPlatformIds?, default: nil, required: true, nullable: false, emit_null: false)]
    getter platform_ids : CreditPlatformIds? = nil

    # The type of employment for the individual. `\"FULL_TIME\"`: A full-time employee. `\"PART_TIME\"`: A part-time employee. `\"CONTRACTOR\"`: An employee typically hired externally through a contracting group. `\"TEMPORARY\"`: A temporary employee. `\"OTHER\"`: The employee type is not one of the above defined types.
    @[JSON::Field(key: "employee_type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter employee_type : String? = nil

    # The date of the employee's most recent paystub in ISO 8601 format (YYYY-MM-DD).
    @[JSON::Field(key: "last_paystub_date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter last_paystub_date : Time? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account_id : String? = nil,
      @status : String? = nil,
      @start_date : Time? = nil,
      @end_date : Time? = nil,
      @employer : CreditEmployerVerification? = nil,
      @title : String? = nil,
      @platform_ids : CreditPlatformIds? = nil,
      @employee_type : String? = nil,
      @last_paystub_date : Time? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_id = @account_id).nil?
      end
      unless (_status = @status).nil?
      end
      unless (_start_date = @start_date).nil?
      end
      unless (_end_date = @end_date).nil?
      end
      invalid_properties.push("\"employer\" is required and cannot be null") if @employer.nil?

      unless (_employer = @employer).nil?
      end
      unless (_title = @title).nil?
      end
      invalid_properties.push("\"platform_ids\" is required and cannot be null") if @platform_ids.nil?

      unless (_platform_ids = @platform_ids).nil?
      end
      unless (_employee_type = @employee_type).nil?
      end
      unless (_last_paystub_date = @last_paystub_date).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_id = @account_id).nil?
      end

      unless (_status = @status).nil?
      end

      unless (_start_date = @start_date).nil?
      end

      unless (_end_date = @end_date).nil?
      end

      return false if @employer.nil?
      unless (_employer = @employer).nil?
      end

      unless (_title = @title).nil?
      end

      return false if @platform_ids.nil?
      unless (_platform_ids = @platform_ids).nil?
      end

      unless (_employee_type = @employee_type).nil?
      end

      unless (_last_paystub_date = @last_paystub_date).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      unless new_value.nil?
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Time?)
      unless new_value.nil?
      end

      @start_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(new_value : Time?)
      unless new_value.nil?
      end

      @end_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employer Object to be assigned
    def employer=(new_value : CreditEmployerVerification?)
      raise ArgumentError.new("\"employer\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @employer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(new_value : String?)
      unless new_value.nil?
      end

      @title = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] platform_ids Object to be assigned
    def platform_ids=(new_value : CreditPlatformIds?)
      raise ArgumentError.new("\"platform_ids\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @platform_ids = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employee_type Object to be assigned
    def employee_type=(new_value : String?)
      unless new_value.nil?
      end

      @employee_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last_paystub_date Object to be assigned
    def last_paystub_date=(new_value : Time?)
      unless new_value.nil?
      end

      @last_paystub_date = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_id, @status, @start_date, @end_date, @employer, @title, @platform_ids, @employee_type, @last_paystub_date)
  end
end