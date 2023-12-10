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
  # Insights object for categories.
  class CategoryInsightDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Category name.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The number of transactions associated with this category.
    @[JSON::Field(key: "transaction_count", type: Int32?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction_count : Int32? = nil

    # Sum of outflow amounts.
    @[JSON::Field(key: "total_outflows", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_outflows : Float64? = nil

    # Sum of inflow amounts.
    @[JSON::Field(key: "total_inflows", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_inflows : Float64? = nil

    # End of Required Properties

    # Optional Properties

    # The most common counterparties associated with this category sorted by outflow.
    @[JSON::Field(key: "top_counterparties", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter top_counterparties : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @transaction_count : Int32? = nil,
      @total_outflows : Float64? = nil,
      @total_inflows : Float64? = nil,
      # Optional properties
      @top_counterparties : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
      end
      invalid_properties.push("\"transaction_count\" is required and cannot be null") if @transaction_count.nil?

      unless (_transaction_count = @transaction_count).nil?
      end
      invalid_properties.push("\"total_outflows\" is required and cannot be null") if @total_outflows.nil?

      unless (_total_outflows = @total_outflows).nil?
      end
      invalid_properties.push("\"total_inflows\" is required and cannot be null") if @total_inflows.nil?

      unless (_total_inflows = @total_inflows).nil?
      end
      unless (_top_counterparties = @top_counterparties).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @name.nil?
      unless (_name = @name).nil?
      end

      return false if @transaction_count.nil?
      unless (_transaction_count = @transaction_count).nil?
      end

      return false if @total_outflows.nil?
      unless (_total_outflows = @total_outflows).nil?
      end

      return false if @total_inflows.nil?
      unless (_total_inflows = @total_inflows).nil?
      end

      unless (_top_counterparties = @top_counterparties).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_count Object to be assigned
    def transaction_count=(new_value : Int32?)
      raise ArgumentError.new("\"transaction_count\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @transaction_count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_outflows Object to be assigned
    def total_outflows=(new_value : Float64?)
      raise ArgumentError.new("\"total_outflows\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @total_outflows = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_inflows Object to be assigned
    def total_inflows=(new_value : Float64?)
      raise ArgumentError.new("\"total_inflows\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @total_inflows = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] top_counterparties Object to be assigned
    def top_counterparties=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @top_counterparties = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @transaction_count, @total_outflows, @total_inflows, @top_counterparties)
  end
end