#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_pay_stub_address"

module Plaid
  # An object representing a recipient used in both 1099-K and 1099-MISC tax documents.
  class Credit1099Recipient
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: CreditPayStubAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : CreditPayStubAddress? = nil

    # Name of recipient.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Tax identification number of recipient.
    @[JSON::Field(key: "tin", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tin.nil? && !tin_present?)]
    getter tin : String? = nil

    @[JSON::Field(ignore: true)]
    property? tin_present : Bool = false

    # Account number number of recipient.
    @[JSON::Field(key: "account_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: account_number.nil? && !account_number_present?)]
    getter account_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? account_number_present : Bool = false

    # Checked if FACTA is a filing requirement.
    @[JSON::Field(key: "facta_filing_requirement", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: facta_filing_requirement.nil? && !facta_filing_requirement_present?)]
    getter facta_filing_requirement : String? = nil

    @[JSON::Field(ignore: true)]
    property? facta_filing_requirement_present : Bool = false

    # Checked if 2nd TIN exists.
    @[JSON::Field(key: "second_tin_exists", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: second_tin_exists.nil? && !second_tin_exists_present?)]
    getter second_tin_exists : String? = nil

    @[JSON::Field(ignore: true)]
    property? second_tin_exists_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : CreditPayStubAddress? = nil,
      @name : String? = nil,
      @tin : String? = nil,
      @account_number : String? = nil,
      @facta_filing_requirement : String? = nil,
      @second_tin_exists : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
      end
      unless (_name = @name).nil?
      end
      unless (_tin = @tin).nil?
      end
      unless (_account_number = @account_number).nil?
      end
      unless (_facta_filing_requirement = @facta_filing_requirement).nil?
      end
      unless (_second_tin_exists = @second_tin_exists).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
      end

      unless (_name = @name).nil?
      end

      unless (_tin = @tin).nil?
      end

      unless (_account_number = @account_number).nil?
      end

      unless (_facta_filing_requirement = @facta_filing_requirement).nil?
      end

      unless (_second_tin_exists = @second_tin_exists).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : CreditPayStubAddress?)
      unless new_value.nil?
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tin Object to be assigned
    def tin=(new_value : String?)
      unless new_value.nil?
      end

      @tin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_number Object to be assigned
    def account_number=(new_value : String?)
      unless new_value.nil?
      end

      @account_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] facta_filing_requirement Object to be assigned
    def facta_filing_requirement=(new_value : String?)
      unless new_value.nil?
      end

      @facta_filing_requirement = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] second_tin_exists Object to be assigned
    def second_tin_exists=(new_value : String?)
      unless new_value.nil?
      end

      @second_tin_exists = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @name_present, @tin, @tin_present, @account_number, @account_number_present, @facta_filing_requirement, @facta_filing_requirement_present, @second_tin_exists, @second_tin_exists_present)
  end
end