#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_session_success_metadata_account"
require "./link_session_success_metadata_institution"
require "./link_session_success_metadata_transfer_status"

module Plaid
  # Displayed once a user has successfully linked their Item.
  class LinkSessionSuccessMetadata
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "institution", type: Plaid::LinkSessionSuccessMetadataInstitution?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: institution.nil? && !institution_present?)]
    getter institution : Plaid::LinkSessionSuccessMetadataInstitution? = nil

    @[JSON::Field(ignore: true)]
    property? institution_present : Bool = false

    # A list of accounts attached to the connected Item. If Account Select is enabled via the developer dashboard, `accounts` will only include selected accounts.
    @[JSON::Field(key: "accounts", type: Array(Plaid::LinkSessionSuccessMetadataAccount)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter accounts : Array(Plaid::LinkSessionSuccessMetadataAccount)? = nil

    # A unique identifier associated with a user's actions and events through the Link flow. Include this identifier when opening a support ticket for faster turnaround.
    @[JSON::Field(key: "link_session_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link_session_id : String? = nil

    @[JSON::Field(key: "transfer_status", type: Plaid::LinkSessionSuccessMetadataTransferStatus?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_status.nil? && !transfer_status_present?)]
    getter transfer_status : Plaid::LinkSessionSuccessMetadataTransferStatus? = nil

    @[JSON::Field(ignore: true)]
    property? transfer_status_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @institution : Plaid::LinkSessionSuccessMetadataInstitution? = nil,
      @accounts : Array(Plaid::LinkSessionSuccessMetadataAccount)? = nil,
      @link_session_id : String? = nil,
      @transfer_status : Plaid::LinkSessionSuccessMetadataTransferStatus? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_institution = @institution).nil?
        invalid_properties.concat(_institution.list_invalid_properties_for("institution")) if _institution.is_a?(OpenApi::Validatable)
      end
      unless (_accounts = @accounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "accounts", container: _accounts)) if _accounts.is_a?(Array)
      end
      unless (_link_session_id = @link_session_id).nil?
      end
      unless (_transfer_status = @transfer_status).nil?
        invalid_properties.push(_transfer_status.error_message) if !_transfer_status.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_institution = @institution).nil?
        return false if _institution.is_a?(OpenApi::Validatable) && !_institution.valid?
      end

      unless (_accounts = @accounts).nil?
        return false if _accounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _accounts)
      end

      unless (_link_session_id = @link_session_id).nil?
      end

      unless (_transfer_status = @transfer_status).nil?
        return false if !_transfer_status.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution Object to be assigned
    def institution=(new_value : Plaid::LinkSessionSuccessMetadataInstitution?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @institution = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] accounts Object to be assigned
    def accounts=(new_value : Array(Plaid::LinkSessionSuccessMetadataAccount)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @accounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_session_id Object to be assigned
    def link_session_id=(new_value : String?)
      unless new_value.nil?
      end

      @link_session_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_status Object to be assigned
    def transfer_status=(new_value : Plaid::LinkSessionSuccessMetadataTransferStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @transfer_status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@institution, @institution_present, @accounts, @link_session_id, @transfer_status, @transfer_status_present)
  end
end