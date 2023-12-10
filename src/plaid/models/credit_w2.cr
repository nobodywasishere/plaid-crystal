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
require "./credit_pay_stub_employee"
require "./credit_pay_stub_employer"
require "./w2_box12"
require "./w2_state_and_local_wages"

module Plaid
  # W2 is an object that represents income data taken from a W2 tax document.
  class CreditW2
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "document_metadata", type: CreditDocumentMetadata?, default: nil, required: true, nullable: false, emit_null: false)]
    getter document_metadata : CreditDocumentMetadata? = nil

    # An identifier of the document referenced by the document metadata.
    @[JSON::Field(key: "document_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter document_id : String? = nil

    @[JSON::Field(key: "employer", type: CreditPayStubEmployer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter employer : CreditPayStubEmployer? = nil

    @[JSON::Field(key: "employee", type: CreditPayStubEmployee?, default: nil, required: true, nullable: false, emit_null: false)]
    getter employee : CreditPayStubEmployee? = nil

    # The tax year of the W2 document.
    @[JSON::Field(key: "tax_year", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter tax_year : String? = nil

    # An employee identification number or EIN.
    @[JSON::Field(key: "employer_id_number", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter employer_id_number : String? = nil

    # Wages from tips and other compensation.
    @[JSON::Field(key: "wages_tips_other_comp", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter wages_tips_other_comp : String? = nil

    # Federal income tax withheld for the tax year.
    @[JSON::Field(key: "federal_income_tax_withheld", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter federal_income_tax_withheld : String? = nil

    # Wages from social security.
    @[JSON::Field(key: "social_security_wages", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter social_security_wages : String? = nil

    # Social security tax withheld for the tax year.
    @[JSON::Field(key: "social_security_tax_withheld", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter social_security_tax_withheld : String? = nil

    # Wages and tips from medicare.
    @[JSON::Field(key: "medicare_wages_and_tips", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter medicare_wages_and_tips : String? = nil

    # Medicare tax withheld for the tax year.
    @[JSON::Field(key: "medicare_tax_withheld", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter medicare_tax_withheld : String? = nil

    # Tips from social security.
    @[JSON::Field(key: "social_security_tips", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter social_security_tips : String? = nil

    # Allocated tips.
    @[JSON::Field(key: "allocated_tips", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter allocated_tips : String? = nil

    # Contents from box 9 on the W2.
    @[JSON::Field(key: "box_9", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter box_9 : String? = nil

    # Dependent care benefits.
    @[JSON::Field(key: "dependent_care_benefits", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter dependent_care_benefits : String? = nil

    # Nonqualified plans.
    @[JSON::Field(key: "nonqualified_plans", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter nonqualified_plans : String? = nil

    @[JSON::Field(key: "box_12", type: Array(W2Box12)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter box_12 : Array(W2Box12)? = nil

    # Statutory employee.
    @[JSON::Field(key: "statutory_employee", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter statutory_employee : String? = nil

    # Retirement plan.
    @[JSON::Field(key: "retirement_plan", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter retirement_plan : String? = nil

    # Third party sick pay.
    @[JSON::Field(key: "third_party_sick_pay", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter third_party_sick_pay : String? = nil

    # Other.
    @[JSON::Field(key: "other", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter other : String? = nil

    @[JSON::Field(key: "state_and_local_wages", type: Array(W2StateAndLocalWages)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter state_and_local_wages : Array(W2StateAndLocalWages)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @document_metadata : CreditDocumentMetadata? = nil,
      @document_id : String? = nil,
      @employer : CreditPayStubEmployer? = nil,
      @employee : CreditPayStubEmployee? = nil,
      @tax_year : String? = nil,
      @employer_id_number : String? = nil,
      @wages_tips_other_comp : String? = nil,
      @federal_income_tax_withheld : String? = nil,
      @social_security_wages : String? = nil,
      @social_security_tax_withheld : String? = nil,
      @medicare_wages_and_tips : String? = nil,
      @medicare_tax_withheld : String? = nil,
      @social_security_tips : String? = nil,
      @allocated_tips : String? = nil,
      @box_9 : String? = nil,
      @dependent_care_benefits : String? = nil,
      @nonqualified_plans : String? = nil,
      @box_12 : Array(W2Box12)? = nil,
      @statutory_employee : String? = nil,
      @retirement_plan : String? = nil,
      @third_party_sick_pay : String? = nil,
      @other : String? = nil,
      @state_and_local_wages : Array(W2StateAndLocalWages)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"document_metadata\" is required and cannot be null") if @document_metadata.nil?

      unless (_document_metadata = @document_metadata).nil?
      end
      invalid_properties.push("\"document_id\" is required and cannot be null") if @document_id.nil?

      unless (_document_id = @document_id).nil?
      end
      invalid_properties.push("\"employer\" is required and cannot be null") if @employer.nil?

      unless (_employer = @employer).nil?
      end
      invalid_properties.push("\"employee\" is required and cannot be null") if @employee.nil?

      unless (_employee = @employee).nil?
      end
      unless (_tax_year = @tax_year).nil?
      end
      unless (_employer_id_number = @employer_id_number).nil?
      end
      unless (_wages_tips_other_comp = @wages_tips_other_comp).nil?
      end
      unless (_federal_income_tax_withheld = @federal_income_tax_withheld).nil?
      end
      unless (_social_security_wages = @social_security_wages).nil?
      end
      unless (_social_security_tax_withheld = @social_security_tax_withheld).nil?
      end
      unless (_medicare_wages_and_tips = @medicare_wages_and_tips).nil?
      end
      unless (_medicare_tax_withheld = @medicare_tax_withheld).nil?
      end
      unless (_social_security_tips = @social_security_tips).nil?
      end
      unless (_allocated_tips = @allocated_tips).nil?
      end
      unless (_box_9 = @box_9).nil?
      end
      unless (_dependent_care_benefits = @dependent_care_benefits).nil?
      end
      unless (_nonqualified_plans = @nonqualified_plans).nil?
      end
      invalid_properties.push("\"box_12\" is required and cannot be null") if @box_12.nil?

      unless (_box_12 = @box_12).nil?
      end
      unless (_statutory_employee = @statutory_employee).nil?
      end
      unless (_retirement_plan = @retirement_plan).nil?
      end
      unless (_third_party_sick_pay = @third_party_sick_pay).nil?
      end
      unless (_other = @other).nil?
      end
      invalid_properties.push("\"state_and_local_wages\" is required and cannot be null") if @state_and_local_wages.nil?

      unless (_state_and_local_wages = @state_and_local_wages).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @document_metadata.nil?
      unless (_document_metadata = @document_metadata).nil?
      end

      return false if @document_id.nil?
      unless (_document_id = @document_id).nil?
      end

      return false if @employer.nil?
      unless (_employer = @employer).nil?
      end

      return false if @employee.nil?
      unless (_employee = @employee).nil?
      end

      unless (_tax_year = @tax_year).nil?
      end

      unless (_employer_id_number = @employer_id_number).nil?
      end

      unless (_wages_tips_other_comp = @wages_tips_other_comp).nil?
      end

      unless (_federal_income_tax_withheld = @federal_income_tax_withheld).nil?
      end

      unless (_social_security_wages = @social_security_wages).nil?
      end

      unless (_social_security_tax_withheld = @social_security_tax_withheld).nil?
      end

      unless (_medicare_wages_and_tips = @medicare_wages_and_tips).nil?
      end

      unless (_medicare_tax_withheld = @medicare_tax_withheld).nil?
      end

      unless (_social_security_tips = @social_security_tips).nil?
      end

      unless (_allocated_tips = @allocated_tips).nil?
      end

      unless (_box_9 = @box_9).nil?
      end

      unless (_dependent_care_benefits = @dependent_care_benefits).nil?
      end

      unless (_nonqualified_plans = @nonqualified_plans).nil?
      end

      return false if @box_12.nil?
      unless (_box_12 = @box_12).nil?
      end

      unless (_statutory_employee = @statutory_employee).nil?
      end

      unless (_retirement_plan = @retirement_plan).nil?
      end

      unless (_third_party_sick_pay = @third_party_sick_pay).nil?
      end

      unless (_other = @other).nil?
      end

      return false if @state_and_local_wages.nil?
      unless (_state_and_local_wages = @state_and_local_wages).nil?
      end

      true
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
      raise ArgumentError.new("\"document_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @document_id = new_value
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
    # @param [Object] employee Object to be assigned
    def employee=(new_value : CreditPayStubEmployee?)
      raise ArgumentError.new("\"employee\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @employee = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_year Object to be assigned
    def tax_year=(new_value : String?)
      unless new_value.nil?
      end

      @tax_year = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] employer_id_number Object to be assigned
    def employer_id_number=(new_value : String?)
      unless new_value.nil?
      end

      @employer_id_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wages_tips_other_comp Object to be assigned
    def wages_tips_other_comp=(new_value : String?)
      unless new_value.nil?
      end

      @wages_tips_other_comp = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] federal_income_tax_withheld Object to be assigned
    def federal_income_tax_withheld=(new_value : String?)
      unless new_value.nil?
      end

      @federal_income_tax_withheld = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] social_security_wages Object to be assigned
    def social_security_wages=(new_value : String?)
      unless new_value.nil?
      end

      @social_security_wages = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] social_security_tax_withheld Object to be assigned
    def social_security_tax_withheld=(new_value : String?)
      unless new_value.nil?
      end

      @social_security_tax_withheld = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] medicare_wages_and_tips Object to be assigned
    def medicare_wages_and_tips=(new_value : String?)
      unless new_value.nil?
      end

      @medicare_wages_and_tips = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] medicare_tax_withheld Object to be assigned
    def medicare_tax_withheld=(new_value : String?)
      unless new_value.nil?
      end

      @medicare_tax_withheld = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] social_security_tips Object to be assigned
    def social_security_tips=(new_value : String?)
      unless new_value.nil?
      end

      @social_security_tips = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allocated_tips Object to be assigned
    def allocated_tips=(new_value : String?)
      unless new_value.nil?
      end

      @allocated_tips = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] box_9 Object to be assigned
    def box_9=(new_value : String?)
      unless new_value.nil?
      end

      @box_9 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dependent_care_benefits Object to be assigned
    def dependent_care_benefits=(new_value : String?)
      unless new_value.nil?
      end

      @dependent_care_benefits = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] nonqualified_plans Object to be assigned
    def nonqualified_plans=(new_value : String?)
      unless new_value.nil?
      end

      @nonqualified_plans = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] box_12 Object to be assigned
    def box_12=(new_value : Array(W2Box12)?)
      raise ArgumentError.new("\"box_12\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @box_12 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statutory_employee Object to be assigned
    def statutory_employee=(new_value : String?)
      unless new_value.nil?
      end

      @statutory_employee = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] retirement_plan Object to be assigned
    def retirement_plan=(new_value : String?)
      unless new_value.nil?
      end

      @retirement_plan = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] third_party_sick_pay Object to be assigned
    def third_party_sick_pay=(new_value : String?)
      unless new_value.nil?
      end

      @third_party_sick_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] other Object to be assigned
    def other=(new_value : String?)
      unless new_value.nil?
      end

      @other = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state_and_local_wages Object to be assigned
    def state_and_local_wages=(new_value : Array(W2StateAndLocalWages)?)
      raise ArgumentError.new("\"state_and_local_wages\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @state_and_local_wages = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@document_metadata, @document_id, @employer, @employee, @tax_year, @employer_id_number, @wages_tips_other_comp, @federal_income_tax_withheld, @social_security_wages, @social_security_tax_withheld, @medicare_wages_and_tips, @medicare_tax_withheld, @social_security_tips, @allocated_tips, @box_9, @dependent_care_benefits, @nonqualified_plans, @box_12, @statutory_employee, @retirement_plan, @third_party_sick_pay, @other, @state_and_local_wages)
  end
end
