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
  # Specifies option for initializing Link for use with the Identity Verification product.
  class LinkTokenCreateRequestIdentityVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the associated Identity Verification template.
    @[JSON::Field(key: "template_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter template_id : String? = nil

    # End of Required Properties

    # Optional Properties

    # A flag specifying whether the end user has already agreed to a privacy policy specifying that their data will be shared with Plaid for verification purposes.  If `gave_consent` is set to `true`, the `accept_tos` step will be marked as `skipped` and the end user's session will start at the next step requirement.
    @[JSON::Field(key: "consent", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter consent : Bool? = nil

    # A flag specifying whether the end user has already agreed to a privacy policy specifying that their data will be shared with Plaid for verification purposes.  If `gave_consent` is set to `true`, the `accept_tos` step will be marked as `skipped` and the end user's session will start at the next step requirement.
    @[JSON::Field(key: "gave_consent", type: Bool?, default: false, required: false, nullable: false, emit_null: false)]
    getter gave_consent : Bool? = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @template_id : String? = nil,
      # Optional properties
      @consent : Bool? = nil,
      @gave_consent : Bool? = false
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"template_id\" is required and cannot be null") if @template_id.nil?

      unless (_template_id = @template_id).nil?
      end
      unless (_consent = @consent).nil?
      end
      unless (_gave_consent = @gave_consent).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @template_id.nil?
      unless (_template_id = @template_id).nil?
      end

      unless (_consent = @consent).nil?
      end

      unless (_gave_consent = @gave_consent).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] template_id Object to be assigned
    def template_id=(new_value : String?)
      raise ArgumentError.new("\"template_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @template_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] consent Object to be assigned
    def consent=(new_value : Bool?)
      unless new_value.nil?
      end

      @consent = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gave_consent Object to be assigned
    def gave_consent=(new_value : Bool?)
      unless new_value.nil?
      end

      @gave_consent = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@template_id, @consent, @gave_consent)
  end
end
