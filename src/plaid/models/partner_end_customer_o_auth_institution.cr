#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./partner_end_customer_o_auth_institution_environments"

module Plaid
  # The OAuth registration information for an institution.
  class PartnerEndCustomerOAuthInstitution
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    @[JSON::Field(key: "institution_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter institution_id : String? = nil

    @[JSON::Field(key: "environments", type: PartnerEndCustomerOAuthInstitutionEnvironments?, default: nil, required: false, nullable: false, emit_null: false)]
    getter environments : PartnerEndCustomerOAuthInstitutionEnvironments? = nil

    # The date on which the end customer's application was approved by the institution, or an empty string if their application has not yet been approved.
    @[JSON::Field(key: "production_enablement_date", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: production_enablement_date.nil? && !production_enablement_date_present?)]
    getter production_enablement_date : String? = nil

    @[JSON::Field(ignore: true)]
    property? production_enablement_date_present : Bool = false

    # The date on which non-OAuth Item adds will no longer be supported for this institution, or an empty string if no such date has been set by the institution.
    @[JSON::Field(key: "classic_disablement_date", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: classic_disablement_date.nil? && !classic_disablement_date_present?)]
    getter classic_disablement_date : String? = nil

    @[JSON::Field(ignore: true)]
    property? classic_disablement_date_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @name : String? = nil,
      @institution_id : String? = nil,
      @environments : PartnerEndCustomerOAuthInstitutionEnvironments? = nil,
      @production_enablement_date : String? = nil,
      @classic_disablement_date : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_name = @name).nil?
      end
      unless (_institution_id = @institution_id).nil?
      end
      unless (_environments = @environments).nil?
      end
      unless (_production_enablement_date = @production_enablement_date).nil?
      end
      unless (_classic_disablement_date = @classic_disablement_date).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_name = @name).nil?
      end

      unless (_institution_id = @institution_id).nil?
      end

      unless (_environments = @environments).nil?
      end

      unless (_production_enablement_date = @production_enablement_date).nil?
      end

      unless (_classic_disablement_date = @classic_disablement_date).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_id Object to be assigned
    def institution_id=(new_value : String?)
      unless new_value.nil?
      end

      @institution_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] environments Object to be assigned
    def environments=(new_value : PartnerEndCustomerOAuthInstitutionEnvironments?)
      unless new_value.nil?
      end

      @environments = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] production_enablement_date Object to be assigned
    def production_enablement_date=(new_value : String?)
      unless new_value.nil?
      end

      @production_enablement_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] classic_disablement_date Object to be assigned
    def classic_disablement_date=(new_value : String?)
      unless new_value.nil?
      end

      @classic_disablement_date = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @institution_id, @environments, @production_enablement_date, @production_enablement_date_present, @classic_disablement_date, @classic_disablement_date_present)
  end
end
