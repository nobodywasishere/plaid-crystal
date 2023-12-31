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
  # An object representing a payer used by 1099-MISC tax documents.
  class Credit1099Payer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: CreditPayStubAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : CreditPayStubAddress? = nil

    # Name of payer.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Tax identification number of payer.
    @[JSON::Field(key: "tin", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tin.nil? && !tin_present?)]
    getter tin : String? = nil

    @[JSON::Field(ignore: true)]
    property? tin_present : Bool = false

    # Telephone number of payer.
    @[JSON::Field(key: "telephone_number", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: telephone_number.nil? && !telephone_number_present?)]
    getter telephone_number : String? = nil

    @[JSON::Field(ignore: true)]
    property? telephone_number_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : CreditPayStubAddress? = nil,
      @name : String? = nil,
      @tin : String? = nil,
      @telephone_number : String? = nil
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
      unless (_telephone_number = @telephone_number).nil?
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

      unless (_telephone_number = @telephone_number).nil?
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
    # @param [Object] telephone_number Object to be assigned
    def telephone_number=(new_value : String?)
      unless new_value.nil?
      end

      @telephone_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @name_present, @tin, @tin_present, @telephone_number, @telephone_number_present)
  end
end
