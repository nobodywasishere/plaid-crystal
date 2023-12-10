#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./signal_evaluate_core_attributes"
require "./signal_scores"
require "./signal_warning"

module Plaid
  # ProcessorSignalEvaluateResponse defines the response schema for `/processor/signal/evaluate`
  class ProcessorSignalEvaluateResponse
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique identifier for the request, which can be used for troubleshooting. This identifier, like all Plaid identifiers, is case sensitive.
    @[JSON::Field(key: "request_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter request_id : String? = nil

    @[JSON::Field(key: "scores", type: SignalScores?, default: nil, required: true, nullable: false, emit_null: false)]
    getter scores : SignalScores? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "core_attributes", type: Plaid::SignalEvaluateCoreAttributes?, default: nil, required: false, nullable: false, emit_null: false)]
    getter core_attributes : Plaid::SignalEvaluateCoreAttributes? = nil

    # If bank information was not available to be used in the Signal model, this array contains warnings describing why bank data is missing. If you want to receive an API error instead of Signal scores in the case of missing bank data, file a support ticket or contact your Plaid account manager.
    @[JSON::Field(key: "warnings", type: Array(Plaid::SignalWarning)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter warnings : Array(Plaid::SignalWarning)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @request_id : String? = nil,
      @scores : SignalScores? = nil,
      # Optional properties
      @core_attributes : Plaid::SignalEvaluateCoreAttributes? = nil,
      @warnings : Array(Plaid::SignalWarning)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"request_id\" is required and cannot be null") if @request_id.nil?

      unless (_request_id = @request_id).nil?
      end
      invalid_properties.push("\"scores\" is required and cannot be null") if @scores.nil?

      unless (_scores = @scores).nil?
      end
      unless (_core_attributes = @core_attributes).nil?
        invalid_properties.concat(_core_attributes.list_invalid_properties_for("core_attributes")) if _core_attributes.is_a?(OpenApi::Validatable)
      end
      unless (_warnings = @warnings).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "warnings", container: _warnings)) if _warnings.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @request_id.nil?
      unless (_request_id = @request_id).nil?
      end

      return false if @scores.nil?
      unless (_scores = @scores).nil?
      end

      unless (_core_attributes = @core_attributes).nil?
        return false if _core_attributes.is_a?(OpenApi::Validatable) && !_core_attributes.valid?
      end

      unless (_warnings = @warnings).nil?
        return false if _warnings.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _warnings)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_id Object to be assigned
    def request_id=(new_value : String?)
      raise ArgumentError.new("\"request_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @request_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scores Object to be assigned
    def scores=(new_value : SignalScores?)
      raise ArgumentError.new("\"scores\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @scores = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] core_attributes Object to be assigned
    def core_attributes=(new_value : Plaid::SignalEvaluateCoreAttributes?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @core_attributes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] warnings Object to be assigned
    def warnings=(new_value : Array(Plaid::SignalWarning)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @warnings = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@request_id, @scores, @core_attributes, @warnings)
  end
end
