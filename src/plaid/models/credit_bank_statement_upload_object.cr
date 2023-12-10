#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_bank_statement_upload_bank_account"
require "./credit_bank_statement_upload_transaction"
require "./credit_document_metadata"

module Plaid
  # An object containing data that has been parsed from a user-uploaded bank statement.
  class CreditBankStatementUploadObject
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # An array of transactions appearing on the bank statement.
    @[JSON::Field(key: "transactions", type: Array(Plaid::CreditBankStatementUploadTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transactions : Array(Plaid::CreditBankStatementUploadTransaction)? = nil

    @[JSON::Field(key: "document_metadata", type: CreditDocumentMetadata?, default: nil, required: true, nullable: false, emit_null: false)]
    getter document_metadata : CreditDocumentMetadata? = nil

    # An identifier of the document referenced by the document metadata.
    @[JSON::Field(key: "document_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter document_id : String? = nil

    # An array of bank accounts associated with the uploaded bank statement.
    @[JSON::Field(key: "bank_accounts", type: Array(CreditBankStatementUploadBankAccount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank_accounts : Array(CreditBankStatementUploadBankAccount)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @transactions : Array(Plaid::CreditBankStatementUploadTransaction)? = nil,
      @document_metadata : CreditDocumentMetadata? = nil,
      @document_id : String? = nil,
      @bank_accounts : Array(CreditBankStatementUploadBankAccount)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"transactions\" is required and cannot be null") if @transactions.nil?

      unless (_transactions = @transactions).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "transactions", container: _transactions)) if _transactions.is_a?(Array)
      end
      invalid_properties.push("\"document_metadata\" is required and cannot be null") if @document_metadata.nil?

      unless (_document_metadata = @document_metadata).nil?
      end
      unless (_document_id = @document_id).nil?
      end
      invalid_properties.push("\"bank_accounts\" is required and cannot be null") if @bank_accounts.nil?

      unless (_bank_accounts = @bank_accounts).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @transactions.nil?
      unless (_transactions = @transactions).nil?
        return false if _transactions.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _transactions)
      end

      return false if @document_metadata.nil?
      unless (_document_metadata = @document_metadata).nil?
      end

      unless (_document_id = @document_id).nil?
      end

      return false if @bank_accounts.nil?
      unless (_bank_accounts = @bank_accounts).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transactions Object to be assigned
    def transactions=(new_value : Array(Plaid::CreditBankStatementUploadTransaction)?)
      raise ArgumentError.new("\"transactions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @transactions = new_value
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
    # @param [Object] document_id Object to be assigned
    def document_id=(new_value : String?)
      unless new_value.nil?
      end

      @document_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_accounts Object to be assigned
    def bank_accounts=(new_value : Array(CreditBankStatementUploadBankAccount)?)
      raise ArgumentError.new("\"bank_accounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @bank_accounts = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@transactions, @document_metadata, @document_id, @bank_accounts)
  end
end