#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./risk_check_stolen_identity"
require "./risk_check_synthetic_identity"

module Plaid
  # Result summary object capturing abuse signals related to `identity abuse`, e.g. stolen and synthetic identity fraud.
  class RiskCheckIdentityAbuseSignals
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "synthetic_identity", type: RiskCheckSyntheticIdentity?, default: nil, required: true, nullable: true, emit_null: true)]
    getter synthetic_identity : RiskCheckSyntheticIdentity? = nil

    @[JSON::Field(key: "stolen_identity", type: RiskCheckStolenIdentity?, default: nil, required: true, nullable: true, emit_null: true)]
    getter stolen_identity : RiskCheckStolenIdentity? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @synthetic_identity : RiskCheckSyntheticIdentity? = nil,
      @stolen_identity : RiskCheckStolenIdentity? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_synthetic_identity = @synthetic_identity).nil?
      end
      unless (_stolen_identity = @stolen_identity).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_synthetic_identity = @synthetic_identity).nil?
      end

      unless (_stolen_identity = @stolen_identity).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] synthetic_identity Object to be assigned
    def synthetic_identity=(new_value : RiskCheckSyntheticIdentity?)
      unless new_value.nil?
      end

      @synthetic_identity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stolen_identity Object to be assigned
    def stolen_identity=(new_value : RiskCheckStolenIdentity?)
      unless new_value.nil?
      end

      @stolen_identity = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@synthetic_identity, @stolen_identity)
  end
end
