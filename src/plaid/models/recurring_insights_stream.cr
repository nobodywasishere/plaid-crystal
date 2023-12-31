#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./recurring_transaction_frequency"
require "./transaction_stream_amount"
require "./transaction_stream_status"

module Plaid
  # Insights object for recurring transactions streams.
  class RecurringInsightsStream
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unique id for the stream.
    @[JSON::Field(key: "stream_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter stream_id : String? = nil

    # The merchant or primary counterparty associated with the transaction stream.
    @[JSON::Field(key: "merchant_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter merchant_name : String? = nil

    # The average number of days between each of the recurring transactions.
    @[JSON::Field(key: "average_days_apart", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter average_days_apart : Float64? = nil

    # Indicates whether the transaction stream is still live.
    @[JSON::Field(key: "is_active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter is_active : Bool? = nil

    # End of Required Properties

    # Optional Properties

    # The client-provided raw description of the most recent transaction in the stream.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # The posted date of the earliest transaction in the stream.
    @[JSON::Field(key: "oldest_transaction_date", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter oldest_transaction_date : Time? = nil

    # The posted date of the latest transaction in the stream.
    @[JSON::Field(key: "newest_transaction_date", type: Time?, default: nil, required: false, nullable: false, emit_null: false, converter: Time::ISO8601DateConverter)]
    getter newest_transaction_date : Time? = nil

    @[JSON::Field(key: "frequency", type: Plaid::RecurringTransactionFrequency?, default: nil, required: false, nullable: false, emit_null: false)]
    getter frequency : Plaid::RecurringTransactionFrequency? = nil

    # The number of transactions in this stream.
    @[JSON::Field(key: "transaction_count", type: Int32?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_count : Int32? = nil

    # An array of Plaid transaction IDs belonging to the stream, sorted by posted date.
    @[JSON::Field(key: "transaction_ids", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_ids : Array(String)? = nil

    @[JSON::Field(key: "average_amount", type: TransactionStreamAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter average_amount : TransactionStreamAmount? = nil

    @[JSON::Field(key: "newest_transaction_amount", type: TransactionStreamAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter newest_transaction_amount : TransactionStreamAmount? = nil

    @[JSON::Field(key: "status", type: Plaid::TransactionStreamStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : Plaid::TransactionStreamStatus? = nil

    # The primary category associated with the transaction stream.
    @[JSON::Field(key: "personal_finance_category_primary", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter personal_finance_category_primary : String? = nil

    # The detailed category associated with the transaction stream.
    @[JSON::Field(key: "personal_finance_category_detailed", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter personal_finance_category_detailed : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @stream_id : String? = nil,
      @merchant_name : String? = nil,
      @average_days_apart : Float64? = nil,
      @is_active : Bool? = nil,
      # Optional properties
      @description : String? = nil,
      @oldest_transaction_date : Time? = nil,
      @newest_transaction_date : Time? = nil,
      @frequency : Plaid::RecurringTransactionFrequency? = nil,
      @transaction_count : Int32? = nil,
      @transaction_ids : Array(String)? = nil,
      @average_amount : TransactionStreamAmount? = nil,
      @newest_transaction_amount : TransactionStreamAmount? = nil,
      @status : Plaid::TransactionStreamStatus? = nil,
      @personal_finance_category_primary : String? = nil,
      @personal_finance_category_detailed : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"stream_id\" is required and cannot be null") if @stream_id.nil?

      unless (_stream_id = @stream_id).nil?
      end
      invalid_properties.push("\"merchant_name\" is required and cannot be null") if @merchant_name.nil?

      unless (_merchant_name = @merchant_name).nil?
      end
      invalid_properties.push("\"average_days_apart\" is required and cannot be null") if @average_days_apart.nil?

      unless (_average_days_apart = @average_days_apart).nil?
      end
      invalid_properties.push("\"is_active\" is required and cannot be null") if @is_active.nil?

      unless (_is_active = @is_active).nil?
      end
      unless (_description = @description).nil?
      end
      unless (_oldest_transaction_date = @oldest_transaction_date).nil?
      end
      unless (_newest_transaction_date = @newest_transaction_date).nil?
      end
      unless (_frequency = @frequency).nil?
        invalid_properties.push(_frequency.error_message) if !_frequency.valid?
      end
      unless (_transaction_count = @transaction_count).nil?
      end
      unless (_transaction_ids = @transaction_ids).nil?
      end
      unless (_average_amount = @average_amount).nil?
      end
      unless (_newest_transaction_amount = @newest_transaction_amount).nil?
      end
      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      unless (_personal_finance_category_primary = @personal_finance_category_primary).nil?
      end
      unless (_personal_finance_category_detailed = @personal_finance_category_detailed).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @stream_id.nil?
      unless (_stream_id = @stream_id).nil?
      end

      return false if @merchant_name.nil?
      unless (_merchant_name = @merchant_name).nil?
      end

      return false if @average_days_apart.nil?
      unless (_average_days_apart = @average_days_apart).nil?
      end

      return false if @is_active.nil?
      unless (_is_active = @is_active).nil?
      end

      unless (_description = @description).nil?
      end

      unless (_oldest_transaction_date = @oldest_transaction_date).nil?
      end

      unless (_newest_transaction_date = @newest_transaction_date).nil?
      end

      unless (_frequency = @frequency).nil?
        return false if !_frequency.valid?
      end

      unless (_transaction_count = @transaction_count).nil?
      end

      unless (_transaction_ids = @transaction_ids).nil?
      end

      unless (_average_amount = @average_amount).nil?
      end

      unless (_newest_transaction_amount = @newest_transaction_amount).nil?
      end

      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      unless (_personal_finance_category_primary = @personal_finance_category_primary).nil?
      end

      unless (_personal_finance_category_detailed = @personal_finance_category_detailed).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stream_id Object to be assigned
    def stream_id=(new_value : String?)
      raise ArgumentError.new("\"stream_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @stream_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchant_name Object to be assigned
    def merchant_name=(new_value : String?)
      raise ArgumentError.new("\"merchant_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @merchant_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] average_days_apart Object to be assigned
    def average_days_apart=(new_value : Float64?)
      raise ArgumentError.new("\"average_days_apart\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @average_days_apart = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_active Object to be assigned
    def is_active=(new_value : Bool?)
      raise ArgumentError.new("\"is_active\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @is_active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oldest_transaction_date Object to be assigned
    def oldest_transaction_date=(new_value : Time?)
      unless new_value.nil?
      end

      @oldest_transaction_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] newest_transaction_date Object to be assigned
    def newest_transaction_date=(new_value : Time?)
      unless new_value.nil?
      end

      @newest_transaction_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(new_value : Plaid::RecurringTransactionFrequency?)
      unless new_value.nil?
        new_value.validate
      end

      @frequency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_count Object to be assigned
    def transaction_count=(new_value : Int32?)
      unless new_value.nil?
      end

      @transaction_count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_ids Object to be assigned
    def transaction_ids=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @transaction_ids = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] average_amount Object to be assigned
    def average_amount=(new_value : TransactionStreamAmount?)
      unless new_value.nil?
      end

      @average_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] newest_transaction_amount Object to be assigned
    def newest_transaction_amount=(new_value : TransactionStreamAmount?)
      unless new_value.nil?
      end

      @newest_transaction_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::TransactionStreamStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] personal_finance_category_primary Object to be assigned
    def personal_finance_category_primary=(new_value : String?)
      unless new_value.nil?
      end

      @personal_finance_category_primary = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] personal_finance_category_detailed Object to be assigned
    def personal_finance_category_detailed=(new_value : String?)
      unless new_value.nil?
      end

      @personal_finance_category_detailed = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@stream_id, @merchant_name, @average_days_apart, @is_active, @description, @oldest_transaction_date, @newest_transaction_date, @frequency, @transaction_count, @transaction_ids, @average_amount, @newest_transaction_amount, @status, @personal_finance_category_primary, @personal_finance_category_detailed)
  end
end
