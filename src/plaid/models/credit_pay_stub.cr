#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_document_metadata"
require "./credit_pay_stub_deductions"
require "./credit_pay_stub_earnings"
require "./credit_pay_stub_employee"
require "./credit_pay_stub_employer"
require "./credit_pay_stub_net_pay"
require "./pay_stub_pay_period_details"

module Plaid
  # An object representing an end user's pay stub.
  class CreditPayStub
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "deductions", type: CreditPayStubDeductions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter deductions : CreditPayStubDeductions? = nil

    # An identifier of the document referenced by the document metadata.
    @[JSON::Field(key: "document_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter document_id : String? = nil

    @[JSON::Field(key: "document_metadata", type: CreditDocumentMetadata?, default: nil, required: true, nullable: false, emit_null: false)]
    getter document_metadata : CreditDocumentMetadata? = nil

    @[JSON::Field(key: "earnings", type: CreditPayStubEarnings?, default: nil, required: true, nullable: false, emit_null: false)]
    getter earnings : CreditPayStubEarnings? = nil

    @[JSON::Field(key: "employee", type: CreditPayStubEmployee?, default: nil, required: true, nullable: false, emit_null: false)]
    getter employee : CreditPayStubEmployee? = nil

    @[JSON::Field(key: "employer", type: CreditPayStubEmployer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter employer : CreditPayStubEmployer? = nil

    @[JSON::Field(key: "net_pay", type: CreditPayStubNetPay?, default: nil, required: true, nullable: false, emit_null: false)]
    getter net_pay : CreditPayStubNetPay? = nil

    @[JSON::Field(key: "pay_period_details", type: PayStubPayPeriodDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter pay_period_details : PayStubPayPeriodDetails? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @deductions : CreditPayStubDeductions? = nil,
      @document_id : String? = nil,
      @document_metadata : CreditDocumentMetadata? = nil,
      @earnings : CreditPayStubEarnings? = nil,
      @employee : CreditPayStubEmployee? = nil,
      @employer : CreditPayStubEmployer? = nil,
      @net_pay : CreditPayStubNetPay? = nil,
      @pay_period_details : PayStubPayPeriodDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"deductions\" is required and cannot be null") if @deductions.nil?

      unless (_deductions = @deductions).nil?
      end
      unless (_document_id = @document_id).nil?
      end
      invalid_properties.push("\"document_metadata\" is required and cannot be null") if @document_metadata.nil?

      unless (_document_metadata = @document_metadata).nil?
      end
      invalid_properties.push("\"earnings\" is required and cannot be null") if @earnings.nil?

      unless (_earnings = @earnings).nil?
      end
      invalid_properties.push("\"employee\" is required and cannot be null") if @employee.nil?

      unless (_employee = @employee).nil?
      end
      invalid_properties.push("\"employer\" is required and cannot be null") if @employer.nil?

      unless (_employer = @employer).nil?
      end
      invalid_properties.push("\"net_pay\" is required and cannot be null") if @net_pay.nil?

      unless (_net_pay = @net_pay).nil?
      end
      invalid_properties.push("\"pay_period_details\" is required and cannot be null") if @pay_period_details.nil?

      unless (_pay_period_details = @pay_period_details).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @deductions.nil?
      unless (_deductions = @deductions).nil?
      end

      unless (_document_id = @document_id).nil?
      end

      return false if @document_metadata.nil?
      unless (_document_metadata = @document_metadata).nil?
      end

      return false if @earnings.nil?
      unless (_earnings = @earnings).nil?
      end

      return false if @employee.nil?
      unless (_employee = @employee).nil?
      end

      return false if @employer.nil?
      unless (_employer = @employer).nil?
      end

      return false if @net_pay.nil?
      unless (_net_pay = @net_pay).nil?
      end

      return false if @pay_period_details.nil?
      unless (_pay_period_details = @pay_period_details).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deductions Object to be assigned
    def deductions=(new_value : CreditPayStubDeductions?)
      raise ArgumentError.new("\"deductions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @deductions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_id Object to be assigned
    def document_id=(new_value : String?)
      unless new_value.nil?
      end

      @document_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_metadata Object to be assigned
    def document_metadata=(new_value : CreditDocumentMetadata?)
      raise ArgumentError.new("\"document_metadata\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @document_metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] earnings Object to be assigned
    def earnings=(new_value : CreditPayStubEarnings?)
      raise ArgumentError.new("\"earnings\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @earnings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employee Object to be assigned
    def employee=(new_value : CreditPayStubEmployee?)
      raise ArgumentError.new("\"employee\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @employee = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employer Object to be assigned
    def employer=(new_value : CreditPayStubEmployer?)
      raise ArgumentError.new("\"employer\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @employer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] net_pay Object to be assigned
    def net_pay=(new_value : CreditPayStubNetPay?)
      raise ArgumentError.new("\"net_pay\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @net_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pay_period_details Object to be assigned
    def pay_period_details=(new_value : PayStubPayPeriodDetails?)
      raise ArgumentError.new("\"pay_period_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @pay_period_details = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@deductions, @document_id, @document_metadata, @earnings, @employee, @employer, @net_pay, @pay_period_details)
  end
end
