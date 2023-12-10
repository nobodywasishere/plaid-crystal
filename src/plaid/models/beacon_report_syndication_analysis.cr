#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./beacon_match_summary_code"

module Plaid
  # Analysis of which fields matched between the originally reported Beacon User and the Beacon User that the report was syndicated to.
  class BeaconReportSyndicationAnalysis
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "address", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address : Plaid::BeaconMatchSummaryCode? = nil

    @[JSON::Field(key: "date_of_birth", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter date_of_birth : Plaid::BeaconMatchSummaryCode? = nil

    @[JSON::Field(key: "email_address", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter email_address : Plaid::BeaconMatchSummaryCode? = nil

    @[JSON::Field(key: "name", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : Plaid::BeaconMatchSummaryCode? = nil

    @[JSON::Field(key: "id_number", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id_number : Plaid::BeaconMatchSummaryCode? = nil

    @[JSON::Field(key: "ip_address", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter ip_address : Plaid::BeaconMatchSummaryCode? = nil

    @[JSON::Field(key: "phone_number", type: Plaid::BeaconMatchSummaryCode?, default: nil, required: true, nullable: false, emit_null: false)]
    getter phone_number : Plaid::BeaconMatchSummaryCode? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Plaid::BeaconMatchSummaryCode? = nil,
      @date_of_birth : Plaid::BeaconMatchSummaryCode? = nil,
      @email_address : Plaid::BeaconMatchSummaryCode? = nil,
      @name : Plaid::BeaconMatchSummaryCode? = nil,
      @id_number : Plaid::BeaconMatchSummaryCode? = nil,
      @ip_address : Plaid::BeaconMatchSummaryCode? = nil,
      @phone_number : Plaid::BeaconMatchSummaryCode? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address\" is required and cannot be null") if @address.nil?

      unless (_address = @address).nil?
        invalid_properties.push(_address.error_message) if !_address.valid?
      end
      invalid_properties.push("\"date_of_birth\" is required and cannot be null") if @date_of_birth.nil?

      unless (_date_of_birth = @date_of_birth).nil?
        invalid_properties.push(_date_of_birth.error_message) if !_date_of_birth.valid?
      end
      invalid_properties.push("\"email_address\" is required and cannot be null") if @email_address.nil?

      unless (_email_address = @email_address).nil?
        invalid_properties.push(_email_address.error_message) if !_email_address.valid?
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        invalid_properties.push(_name.error_message) if !_name.valid?
      end
      invalid_properties.push("\"id_number\" is required and cannot be null") if @id_number.nil?

      unless (_id_number = @id_number).nil?
        invalid_properties.push(_id_number.error_message) if !_id_number.valid?
      end
      invalid_properties.push("\"ip_address\" is required and cannot be null") if @ip_address.nil?

      unless (_ip_address = @ip_address).nil?
        invalid_properties.push(_ip_address.error_message) if !_ip_address.valid?
      end
      invalid_properties.push("\"phone_number\" is required and cannot be null") if @phone_number.nil?

      unless (_phone_number = @phone_number).nil?
        invalid_properties.push(_phone_number.error_message) if !_phone_number.valid?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address.nil?
      unless (_address = @address).nil?
        return false if !_address.valid?
      end

      return false if @date_of_birth.nil?
      unless (_date_of_birth = @date_of_birth).nil?
        return false if !_date_of_birth.valid?
      end

      return false if @email_address.nil?
      unless (_email_address = @email_address).nil?
        return false if !_email_address.valid?
      end

      return false if @name.nil?
      unless (_name = @name).nil?
        return false if !_name.valid?
      end

      return false if @id_number.nil?
      unless (_id_number = @id_number).nil?
        return false if !_id_number.valid?
      end

      return false if @ip_address.nil?
      unless (_ip_address = @ip_address).nil?
        return false if !_ip_address.valid?
      end

      return false if @phone_number.nil?
      unless (_phone_number = @phone_number).nil?
        return false if !_phone_number.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"address\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date_of_birth Object to be assigned
    def date_of_birth=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"date_of_birth\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @date_of_birth = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_address Object to be assigned
    def email_address=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"email_address\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @email_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"id_number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @id_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_address Object to be assigned
    def ip_address=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"ip_address\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @ip_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone_number Object to be assigned
    def phone_number=(new_value : Plaid::BeaconMatchSummaryCode?)
      raise ArgumentError.new("\"phone_number\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate
      end

      @phone_number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @date_of_birth, @email_address, @name, @id_number, @ip_address, @phone_number)
  end
end