#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./credit_session_error"
require "./credit_session_results"

module Plaid
  # Metadata and results for a Link session
  class CreditSession
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The unique identifier associated with the Link session. This identifier matches the `link_session_id` returned in the onSuccess/onExit callbacks.
    @[JSON::Field(key: "link_session_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link_session_id : String? = nil

    # The time when the Link session started
    @[JSON::Field(key: "session_start_time", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter session_start_time : Time? = nil

    @[JSON::Field(key: "results", type: Plaid::CreditSessionResults?, default: nil, required: false, nullable: false, emit_null: false)]
    getter results : Plaid::CreditSessionResults? = nil

    # The set of errors that occurred during the Link session.
    @[JSON::Field(key: "errors", type: Array(Plaid::CreditSessionError)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter errors : Array(Plaid::CreditSessionError)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @link_session_id : String? = nil,
      @session_start_time : Time? = nil,
      @results : Plaid::CreditSessionResults? = nil,
      @errors : Array(Plaid::CreditSessionError)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_link_session_id = @link_session_id).nil?
      end
      unless (_session_start_time = @session_start_time).nil?
      end
      unless (_results = @results).nil?
        invalid_properties.concat(_results.list_invalid_properties_for("results")) if _results.is_a?(OpenApi::Validatable)
      end
      unless (_errors = @errors).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "errors", container: _errors)) if _errors.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_link_session_id = @link_session_id).nil?
      end

      unless (_session_start_time = @session_start_time).nil?
      end

      unless (_results = @results).nil?
        return false if _results.is_a?(OpenApi::Validatable) && !_results.valid?
      end

      unless (_errors = @errors).nil?
        return false if _errors.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _errors)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link_session_id Object to be assigned
    def link_session_id=(new_value : String?)
      unless new_value.nil?
      end

      @link_session_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] session_start_time Object to be assigned
    def session_start_time=(new_value : Time?)
      unless new_value.nil?
      end

      @session_start_time = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] results Object to be assigned
    def results=(new_value : Plaid::CreditSessionResults?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @results = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] errors Object to be assigned
    def errors=(new_value : Array(Plaid::CreditSessionError)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @errors = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@link_session_id, @session_start_time, @results, @errors)
  end
end