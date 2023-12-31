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
  # Data to populate as test transaction data. If not specified, random transactions will be generated instead.
  class TransactionOverride
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The date of the transaction, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format. Transactions in Sandbox will move from pending to posted once their transaction date has been reached. If a `date_transacted` is not provided by the institution, a transaction date may be available in the [`authorized_date`](https://plaid.com/docs/api/products/transactions/#transactions-get-response-transactions-authorized-date) field.
    @[JSON::Field(key: "date_transacted", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter date_transacted : Time? = nil

    # The date the transaction posted, in [ISO 8601](https://wikipedia.org/wiki/ISO_8601) (YYYY-MM-DD) format. Posted dates in the past or present will result in posted transactions; posted dates in the future will result in pending transactions.
    @[JSON::Field(key: "date_posted", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter date_posted : Time? = nil

    # The transaction amount. Can be negative.
    @[JSON::Field(key: "amount", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Float64? = nil

    # The transaction description.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter description : String? = nil

    # End of Required Properties

    # Optional Properties

    # The ISO-4217 format currency code for the transaction.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @date_transacted : Time? = nil,
      @date_posted : Time? = nil,
      @amount : Float64? = nil,
      @description : String? = nil,
      # Optional properties
      @currency : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"date_transacted\" is required and cannot be null") if @date_transacted.nil?

      unless (_date_transacted = @date_transacted).nil?
      end
      invalid_properties.push("\"date_posted\" is required and cannot be null") if @date_posted.nil?

      unless (_date_posted = @date_posted).nil?
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
      end
      invalid_properties.push("\"description\" is required and cannot be null") if @description.nil?

      unless (_description = @description).nil?
      end
      unless (_currency = @currency).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @date_transacted.nil?
      unless (_date_transacted = @date_transacted).nil?
      end

      return false if @date_posted.nil?
      unless (_date_posted = @date_posted).nil?
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
      end

      return false if @description.nil?
      unless (_description = @description).nil?
      end

      unless (_currency = @currency).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_transacted Object to be assigned
    def date_transacted=(new_value : Time?)
      raise ArgumentError.new("\"date_transacted\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @date_transacted = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_posted Object to be assigned
    def date_posted=(new_value : Time?)
      raise ArgumentError.new("\"date_posted\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @date_posted = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Float64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      raise ArgumentError.new("\"description\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      unless new_value.nil?
      end

      @currency = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@date_transacted, @date_posted, @amount, @description, @currency)
  end
end
