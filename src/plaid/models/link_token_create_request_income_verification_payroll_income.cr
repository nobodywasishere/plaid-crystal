#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./income_verification_doc_parsing_config"
require "./income_verification_payroll_flow_type"

module Plaid
  # Specifies options for initializing Link for use with Payroll Income (including Document Income). Further customization options for Document Income, such as customizing which document types may be uploaded, are also available via the [Link Customization pane](https://dashboard.plaid.com/link) in the Dashboard. (Requires Production enablement.)
  class LinkTokenCreateRequestIncomeVerificationPayrollIncome
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The types of payroll income verification to enable for the Link session. If none are specified, then users will see both document and digital payroll income.
    @[JSON::Field(key: "flow_types", type: Array(IncomeVerificationPayrollFlowType)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: flow_types.nil? && !flow_types_present?)]
    getter flow_types : Array(IncomeVerificationPayrollFlowType)? = nil

    @[JSON::Field(ignore: true)]
    property? flow_types_present : Bool = false

    # An identifier to indicate whether the income verification Link token will be used for update mode. This field is only relevant for participants in the Payroll Income Refresh beta.
    @[JSON::Field(key: "is_update_mode", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter is_update_mode : Bool? = false

    # Uniquely identify a payroll income Item to update with.  This field is only relevant for participants in the Payroll Income Refresh beta.
    @[JSON::Field(key: "item_id_to_update", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: item_id_to_update.nil? && !item_id_to_update_present?)]
    getter item_id_to_update : String? = nil

    @[JSON::Field(ignore: true)]
    property? item_id_to_update_present : Bool = false

    # The types of analysis to enable for document uploads. If this field is not provided, then docs will undergo OCR parsing only.
    @[JSON::Field(key: "parsing_config", type: Array(IncomeVerificationDocParsingConfig)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: parsing_config.nil? && !parsing_config_present?)]
    getter parsing_config : Array(IncomeVerificationDocParsingConfig)? = nil

    @[JSON::Field(ignore: true)]
    property? parsing_config_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @flow_types : Array(IncomeVerificationPayrollFlowType)? = nil,
      @is_update_mode : Bool? = false,
      @item_id_to_update : String? = nil,
      @parsing_config : Array(IncomeVerificationDocParsingConfig)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_flow_types = @flow_types).nil?
      end
      unless (_is_update_mode = @is_update_mode).nil?
      end
      unless (_item_id_to_update = @item_id_to_update).nil?
      end
      unless (_parsing_config = @parsing_config).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_flow_types = @flow_types).nil?
      end

      unless (_is_update_mode = @is_update_mode).nil?
      end

      unless (_item_id_to_update = @item_id_to_update).nil?
      end

      unless (_parsing_config = @parsing_config).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow_types Object to be assigned
    def flow_types=(new_value : Array(IncomeVerificationPayrollFlowType)?)
      unless new_value.nil?
      end

      @flow_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_update_mode Object to be assigned
    def is_update_mode=(new_value : Bool?)
      unless new_value.nil?
      end

      @is_update_mode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_id_to_update Object to be assigned
    def item_id_to_update=(new_value : String?)
      unless new_value.nil?
      end

      @item_id_to_update = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] parsing_config Object to be assigned
    def parsing_config=(new_value : Array(IncomeVerificationDocParsingConfig)?)
      unless new_value.nil?
      end

      @parsing_config = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@flow_types, @flow_types_present, @is_update_mode, @item_id_to_update, @item_id_to_update_present, @parsing_config, @parsing_config_present)
  end
end
