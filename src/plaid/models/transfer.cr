#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./ach_class"
require "./transfer_authorization_guarantee_decision"
require "./transfer_authorization_guarantee_decision_rationale"
require "./transfer_credit_funds_source"
require "./transfer_expected_sweep_settlement_schedule_item"
require "./transfer_failure"
require "./transfer_network"
require "./transfer_refund"
require "./transfer_status"
require "./transfer_sweep_status"
require "./transfer_type"
require "./transfer_user_in_response"

module Plaid
  # Represents a transfer within the Transfers API.
  class Transfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Plaid’s unique identifier for a transfer.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Plaid’s unique identifier for a transfer authorization.
    @[JSON::Field(key: "authorization_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter authorization_id : String? = nil

    # The id of the associated funding account, available in the Plaid Dashboard. If present, this indicates which of your business checking accounts will be credited or debited.
    @[JSON::Field(key: "funding_account_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter funding_account_id : String? = nil

    @[JSON::Field(key: "type", type: Plaid::TransferType?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : Plaid::TransferType? = nil

    @[JSON::Field(key: "user", type: TransferUserInResponse?, default: nil, required: true, nullable: false, emit_null: false)]
    getter user : TransferUserInResponse? = nil

    # The amount of the transfer (decimal string with two digits of precision e.g. \"10.00\"). When calling `/transfer/authorization/create`, specify the maximum amount to authorize. When calling `/transfer/create`, specify the exact amount of the transfer, up to a maximum of the amount authorized. If this field is left blank when calling `/transfer/create`, the maximum amount authorized in the `authorization_id` will be sent.
    @[JSON::Field(key: "amount", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : String? = nil

    # The description of the transfer.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter description : String? = nil

    # The datetime when this transfer was created. This will be of the form `2006-01-02T15:04:05Z`
    @[JSON::Field(key: "created", type: Time?, default: nil, required: true, nullable: false, emit_null: false, converter: Time::RFC3339Converter)]
    getter created : Time? = nil

    @[JSON::Field(key: "status", type: Plaid::TransferStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : Plaid::TransferStatus? = nil

    @[JSON::Field(key: "network", type: Plaid::TransferNetwork?, default: nil, required: true, nullable: false, emit_null: false)]
    getter network : Plaid::TransferNetwork? = nil

    # When `true`, you can still cancel this transfer.
    @[JSON::Field(key: "cancellable", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cancellable : Bool? = nil

    @[JSON::Field(key: "failure_reason", type: TransferFailure?, default: nil, required: true, nullable: true, emit_null: true)]
    getter failure_reason : TransferFailure? = nil

    # The Metadata object is a mapping of client-provided string fields to any string value. The following limitations apply: The JSON values must be Strings (no nested JSON objects allowed) Only ASCII characters may be used Maximum of 50 key/value pairs Maximum key length of 40 characters Maximum value length of 500 characters
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Hash(String, String)? = nil
    MAX_ITEMS_FOR_METADATA = 50

    # Plaid’s unique identifier for the origination account that was used for this transfer.
    @[JSON::Field(key: "origination_account_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter origination_account_id : String? = nil

    @[JSON::Field(key: "guarantee_decision", type: Plaid::TransferAuthorizationGuaranteeDecision?, default: nil, required: true, nullable: true, emit_null: true)]
    getter guarantee_decision : Plaid::TransferAuthorizationGuaranteeDecision? = nil

    @[JSON::Field(key: "guarantee_decision_rationale", type: TransferAuthorizationGuaranteeDecisionRationale?, default: nil, required: true, nullable: true, emit_null: true)]
    getter guarantee_decision_rationale : TransferAuthorizationGuaranteeDecisionRationale? = nil

    # The currency of the transfer amount, e.g. \"USD\"
    @[JSON::Field(key: "iso_currency_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter iso_currency_code : String? = nil

    # The date 3 business days from settlement date indicating the following ACH returns can no longer happen: R01, R02, R03, R29. This will be of the form YYYY-MM-DD.
    @[JSON::Field(key: "standard_return_window", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter standard_return_window : Time? = nil

    # The date 61 business days from settlement date indicating the following ACH returns can no longer happen: R05, R07, R10, R11, R51, R33, R37, R38, R51, R52, R53. This will be of the form YYYY-MM-DD.
    @[JSON::Field(key: "unauthorized_return_window", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter unauthorized_return_window : Time? = nil

    # The expected date when the full amount of the transfer settles at the consumers’ account, if the transfer is credit; or at the customer's business checking account, if the transfer is debit. Only set for ACH transfers and is null for non-ACH transfers. Only set for ACH transfers. This will be of the form YYYY-MM-DD.
    @[JSON::Field(key: "expected_settlement_date", type: Time?, default: nil, required: true, nullable: true, emit_null: true, converter: Time::ISO8601DateConverter)]
    getter expected_settlement_date : Time? = nil

    # The Plaid client ID that is the originator of this transfer. Only present if created on behalf of another client as a [Platform customer](https://plaid.com/docs/transfer/application/#originators-vs-platforms).
    @[JSON::Field(key: "originator_client_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter originator_client_id : String? = nil

    # A list of refunds associated with this transfer.
    @[JSON::Field(key: "refunds", type: Array(TransferRefund)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter refunds : Array(TransferRefund)? = nil

    # The id of the recurring transfer if this transfer belongs to a recurring transfer.
    @[JSON::Field(key: "recurring_transfer_id", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter recurring_transfer_id : String? = nil

    @[JSON::Field(key: "credit_funds_source", type: Plaid::TransferCreditFundsSource?, default: nil, required: true, nullable: true, emit_null: true)]
    getter credit_funds_source : Plaid::TransferCreditFundsSource? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "ach_class", type: Plaid::ACHClass?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ach_class : Plaid::ACHClass? = nil

    # The Plaid `account_id` corresponding to the end-user account that will be debited or credited.
    @[JSON::Field(key: "account_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_id : String? = nil

    @[JSON::Field(key: "sweep_status", type: Plaid::TransferSweepStatus?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: sweep_status.nil? && !sweep_status_present?)]
    getter sweep_status : Plaid::TransferSweepStatus? = nil

    @[JSON::Field(ignore: true)]
    property? sweep_status_present : Bool = false

    # The expected sweep settlement schedule of this transfer, assuming this transfer is not `returned`. Only applies to ACH debit transfers.
    @[JSON::Field(key: "expected_sweep_settlement_schedule", type: Array(TransferExpectedSweepSettlementScheduleItem)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expected_sweep_settlement_schedule : Array(TransferExpectedSweepSettlementScheduleItem)? = nil

    # The amount to deduct from `transfer.amount` and distribute to the platform’s Ledger balance as a facilitator fee (decimal string with two digits of precision e.g. \"10.00\"). The remainder will go to the end-customer’s Ledger balance. This must be less than or equal to the `transfer.amount`.
    @[JSON::Field(key: "facilitator_fee", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter facilitator_fee : String? = nil

    # The trace identifier for the transfer based on its network. This will only be set after the transfer has posted.  For `ach` or `same-day-ach` transfers, this is the ACH trace number. Currently, the field will remain null for transfers on other rails.
    @[JSON::Field(key: "network_trace_id", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: network_trace_id.nil? && !network_trace_id_present?)]
    getter network_trace_id : String? = nil

    @[JSON::Field(ignore: true)]
    property? network_trace_id_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @authorization_id : String? = nil,
      @funding_account_id : String? = nil,
      @_type : Plaid::TransferType? = nil,
      @user : TransferUserInResponse? = nil,
      @amount : String? = nil,
      @description : String? = nil,
      @created : Time? = nil,
      @status : Plaid::TransferStatus? = nil,
      @network : Plaid::TransferNetwork? = nil,
      @cancellable : Bool? = nil,
      @failure_reason : TransferFailure? = nil,
      @metadata : Hash(String, String)? = nil,
      @origination_account_id : String? = nil,
      @guarantee_decision : Plaid::TransferAuthorizationGuaranteeDecision? = nil,
      @guarantee_decision_rationale : TransferAuthorizationGuaranteeDecisionRationale? = nil,
      @iso_currency_code : String? = nil,
      @standard_return_window : Time? = nil,
      @unauthorized_return_window : Time? = nil,
      @expected_settlement_date : Time? = nil,
      @originator_client_id : String? = nil,
      @refunds : Array(TransferRefund)? = nil,
      @recurring_transfer_id : String? = nil,
      @credit_funds_source : Plaid::TransferCreditFundsSource? = nil,
      # Optional properties
      @ach_class : Plaid::ACHClass? = nil,
      @account_id : String? = nil,
      @sweep_status : Plaid::TransferSweepStatus? = nil,
      @expected_sweep_settlement_schedule : Array(TransferExpectedSweepSettlementScheduleItem)? = nil,
      @facilitator_fee : String? = nil,
      @network_trace_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
      end
      invalid_properties.push("\"authorization_id\" is required and cannot be null") if @authorization_id.nil?

      unless (_authorization_id = @authorization_id).nil?
      end
      unless (_funding_account_id = @funding_account_id).nil?
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(__type.error_message) if !__type.valid?
      end
      invalid_properties.push("\"user\" is required and cannot be null") if @user.nil?

      unless (_user = @user).nil?
      end
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_amount = @amount).nil?
      end
      invalid_properties.push("\"description\" is required and cannot be null") if @description.nil?

      unless (_description = @description).nil?
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      unless (_created = @created).nil?
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(_status.error_message) if !_status.valid?
      end
      invalid_properties.push("\"network\" is required and cannot be null") if @network.nil?

      unless (_network = @network).nil?
        invalid_properties.push(_network.error_message) if !_network.valid?
      end
      invalid_properties.push("\"cancellable\" is required and cannot be null") if @cancellable.nil?

      unless (_cancellable = @cancellable).nil?
      end
      unless (_failure_reason = @failure_reason).nil?
      end
      unless (_metadata = @metadata).nil?
        if max_items_error = OpenApi::PrimitiveValidator.max_items_error("metadata", _metadata.size, MAX_ITEMS_FOR_METADATA)
          invalid_properties.push(max_items_error)
        end
      end
      invalid_properties.push("\"origination_account_id\" is required and cannot be null") if @origination_account_id.nil?

      unless (_origination_account_id = @origination_account_id).nil?
      end
      unless (_guarantee_decision = @guarantee_decision).nil?
        invalid_properties.push(_guarantee_decision.error_message) if !_guarantee_decision.valid?
      end
      unless (_guarantee_decision_rationale = @guarantee_decision_rationale).nil?
      end
      invalid_properties.push("\"iso_currency_code\" is required and cannot be null") if @iso_currency_code.nil?

      unless (_iso_currency_code = @iso_currency_code).nil?
      end
      unless (_standard_return_window = @standard_return_window).nil?
      end
      unless (_unauthorized_return_window = @unauthorized_return_window).nil?
      end
      unless (_expected_settlement_date = @expected_settlement_date).nil?
      end
      unless (_originator_client_id = @originator_client_id).nil?
      end
      invalid_properties.push("\"refunds\" is required and cannot be null") if @refunds.nil?

      unless (_refunds = @refunds).nil?
      end
      unless (_recurring_transfer_id = @recurring_transfer_id).nil?
      end
      unless (_credit_funds_source = @credit_funds_source).nil?
        invalid_properties.push(_credit_funds_source.error_message) if !_credit_funds_source.valid?
      end
      unless (_ach_class = @ach_class).nil?
        invalid_properties.push(_ach_class.error_message) if !_ach_class.valid?
      end
      unless (_account_id = @account_id).nil?
      end
      unless (_sweep_status = @sweep_status).nil?
        invalid_properties.push(_sweep_status.error_message) if !_sweep_status.valid?
      end
      unless (_expected_sweep_settlement_schedule = @expected_sweep_settlement_schedule).nil?
      end
      unless (_facilitator_fee = @facilitator_fee).nil?
      end
      unless (_network_trace_id = @network_trace_id).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      unless (_id = @id).nil?
      end

      return false if @authorization_id.nil?
      unless (_authorization_id = @authorization_id).nil?
      end

      unless (_funding_account_id = @funding_account_id).nil?
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false if !__type.valid?
      end

      return false if @user.nil?
      unless (_user = @user).nil?
      end

      return false if @amount.nil?
      unless (_amount = @amount).nil?
      end

      return false if @description.nil?
      unless (_description = @description).nil?
      end

      return false if @created.nil?
      unless (_created = @created).nil?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if !_status.valid?
      end

      return false if @network.nil?
      unless (_network = @network).nil?
        return false if !_network.valid?
      end

      return false if @cancellable.nil?
      unless (_cancellable = @cancellable).nil?
      end

      unless (_failure_reason = @failure_reason).nil?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.size > MAX_ITEMS_FOR_METADATA
      end

      return false if @origination_account_id.nil?
      unless (_origination_account_id = @origination_account_id).nil?
      end

      unless (_guarantee_decision = @guarantee_decision).nil?
        return false if !_guarantee_decision.valid?
      end

      unless (_guarantee_decision_rationale = @guarantee_decision_rationale).nil?
      end

      return false if @iso_currency_code.nil?
      unless (_iso_currency_code = @iso_currency_code).nil?
      end

      unless (_standard_return_window = @standard_return_window).nil?
      end

      unless (_unauthorized_return_window = @unauthorized_return_window).nil?
      end

      unless (_expected_settlement_date = @expected_settlement_date).nil?
      end

      unless (_originator_client_id = @originator_client_id).nil?
      end

      return false if @refunds.nil?
      unless (_refunds = @refunds).nil?
      end

      unless (_recurring_transfer_id = @recurring_transfer_id).nil?
      end

      unless (_credit_funds_source = @credit_funds_source).nil?
        return false if !_credit_funds_source.valid?
      end

      unless (_ach_class = @ach_class).nil?
        return false if !_ach_class.valid?
      end

      unless (_account_id = @account_id).nil?
      end

      unless (_sweep_status = @sweep_status).nil?
        return false if !_sweep_status.valid?
      end

      unless (_expected_sweep_settlement_schedule = @expected_sweep_settlement_schedule).nil?
      end

      unless (_facilitator_fee = @facilitator_fee).nil?
      end

      unless (_network_trace_id = @network_trace_id).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authorization_id Object to be assigned
    def authorization_id=(new_value : String?)
      raise ArgumentError.new("\"authorization_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @authorization_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_account_id Object to be assigned
    def funding_account_id=(new_value : String?)
      unless new_value.nil?
      end

      @funding_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : Plaid::TransferType?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user Object to be assigned
    def user=(new_value : TransferUserInResponse?)
      raise ArgumentError.new("\"user\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @user = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : String?)
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
    # @param [Object] created Object to be assigned
    def created=(new_value : Time?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : Plaid::TransferStatus?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(new_value : Plaid::TransferNetwork?)
      raise ArgumentError.new("\"network\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @network = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellable Object to be assigned
    def cancellable=(new_value : Bool?)
      raise ArgumentError.new("\"cancellable\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @cancellable = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_reason Object to be assigned
    def failure_reason=(new_value : TransferFailure?)
      unless new_value.nil?
      end

      @failure_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_items("metadata", new_value.size, MAX_ITEMS_FOR_METADATA)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origination_account_id Object to be assigned
    def origination_account_id=(new_value : String?)
      raise ArgumentError.new("\"origination_account_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @origination_account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] guarantee_decision Object to be assigned
    def guarantee_decision=(new_value : Plaid::TransferAuthorizationGuaranteeDecision?)
      unless new_value.nil?
        new_value.validate
      end

      @guarantee_decision = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] guarantee_decision_rationale Object to be assigned
    def guarantee_decision_rationale=(new_value : TransferAuthorizationGuaranteeDecisionRationale?)
      unless new_value.nil?
      end

      @guarantee_decision_rationale = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iso_currency_code Object to be assigned
    def iso_currency_code=(new_value : String?)
      raise ArgumentError.new("\"iso_currency_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @iso_currency_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] standard_return_window Object to be assigned
    def standard_return_window=(new_value : Time?)
      unless new_value.nil?
      end

      @standard_return_window = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unauthorized_return_window Object to be assigned
    def unauthorized_return_window=(new_value : Time?)
      unless new_value.nil?
      end

      @unauthorized_return_window = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expected_settlement_date Object to be assigned
    def expected_settlement_date=(new_value : Time?)
      unless new_value.nil?
      end

      @expected_settlement_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] originator_client_id Object to be assigned
    def originator_client_id=(new_value : String?)
      unless new_value.nil?
      end

      @originator_client_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refunds Object to be assigned
    def refunds=(new_value : Array(TransferRefund)?)
      raise ArgumentError.new("\"refunds\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @refunds = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring_transfer_id Object to be assigned
    def recurring_transfer_id=(new_value : String?)
      unless new_value.nil?
      end

      @recurring_transfer_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_funds_source Object to be assigned
    def credit_funds_source=(new_value : Plaid::TransferCreditFundsSource?)
      unless new_value.nil?
        new_value.validate
      end

      @credit_funds_source = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ach_class Object to be assigned
    def ach_class=(new_value : Plaid::ACHClass?)
      unless new_value.nil?
        new_value.validate
      end

      @ach_class = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_id Object to be assigned
    def account_id=(new_value : String?)
      unless new_value.nil?
      end

      @account_id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sweep_status Object to be assigned
    def sweep_status=(new_value : Plaid::TransferSweepStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @sweep_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expected_sweep_settlement_schedule Object to be assigned
    def expected_sweep_settlement_schedule=(new_value : Array(TransferExpectedSweepSettlementScheduleItem)?)
      unless new_value.nil?
      end

      @expected_sweep_settlement_schedule = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] facilitator_fee Object to be assigned
    def facilitator_fee=(new_value : String?)
      unless new_value.nil?
      end

      @facilitator_fee = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_trace_id Object to be assigned
    def network_trace_id=(new_value : String?)
      unless new_value.nil?
      end

      @network_trace_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @authorization_id, @funding_account_id, @_type, @user, @amount, @description, @created, @status, @network, @cancellable, @failure_reason, @metadata, @origination_account_id, @guarantee_decision, @guarantee_decision_rationale, @iso_currency_code, @standard_return_window, @unauthorized_return_window, @expected_settlement_date, @originator_client_id, @refunds, @recurring_transfer_id, @credit_funds_source, @ach_class, @account_id, @sweep_status, @sweep_status_present, @expected_sweep_settlement_schedule, @facilitator_fee, @network_trace_id, @network_trace_id_present)
  end
end