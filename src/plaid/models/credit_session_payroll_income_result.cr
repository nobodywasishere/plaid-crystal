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
  # The details of a digital payroll income verification in Link
  class CreditSessionPayrollIncomeResult
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The number of paystubs retrieved from a payroll provider.
    @[JSON::Field(key: "num_paystubs_retrieved", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter num_paystubs_retrieved : Int32? = nil

    # The number of w2s retrieved from a payroll provider.
    @[JSON::Field(key: "num_w2s_retrieved", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter num_w2s_retrieved : Int32? = nil

    # The Plaid Institution ID associated with the Item.
    @[JSON::Field(key: "institution_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter institution_id : String? = nil

    # The Institution Name associated with the Item.
    @[JSON::Field(key: "institution_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter institution_name : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @num_paystubs_retrieved : Int32? = nil,
      @num_w2s_retrieved : Int32? = nil,
      @institution_id : String? = nil,
      @institution_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_num_paystubs_retrieved = @num_paystubs_retrieved).nil?
      end
      unless (_num_w2s_retrieved = @num_w2s_retrieved).nil?
      end
      unless (_institution_id = @institution_id).nil?
      end
      unless (_institution_name = @institution_name).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_num_paystubs_retrieved = @num_paystubs_retrieved).nil?
      end

      unless (_num_w2s_retrieved = @num_w2s_retrieved).nil?
      end

      unless (_institution_id = @institution_id).nil?
      end

      unless (_institution_name = @institution_name).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_paystubs_retrieved Object to be assigned
    def num_paystubs_retrieved=(new_value : Int32?)
      unless new_value.nil?
      end

      @num_paystubs_retrieved = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] num_w2s_retrieved Object to be assigned
    def num_w2s_retrieved=(new_value : Int32?)
      unless new_value.nil?
      end

      @num_w2s_retrieved = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_id Object to be assigned
    def institution_id=(new_value : String?)
      unless new_value.nil?
      end

      @institution_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_name Object to be assigned
    def institution_name=(new_value : String?)
      unless new_value.nil?
      end

      @institution_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@num_paystubs_retrieved, @num_w2s_retrieved, @institution_id, @institution_name)
  end
end
