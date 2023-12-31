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
  # An object representing a filer used by 1099-K tax documents.
  class Credit1099Filer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: CreditPayStubAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : CreditPayStubAddress? = nil

    # Name of filer.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String? = nil

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Tax identification number of filer.
    @[JSON::Field(key: "tin", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tin.nil? && !tin_present?)]
    getter tin : String? = nil

    @[JSON::Field(ignore: true)]
    property? tin_present : Bool = false

    # One of the following values will be provided: Payment Settlement Entity (PSE), Electronic Payment Facilitator (EPF), Other Third Party
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : CreditPayStubAddress? = nil,
      @name : String? = nil,
      @tin : String? = nil,
      @_type : String? = nil
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
      unless (__type = @_type).nil?
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

      unless (__type = @_type).nil?
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
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
      end

      @_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @name, @name_present, @tin, @tin_present, @_type, @_type_present)
  end
end
