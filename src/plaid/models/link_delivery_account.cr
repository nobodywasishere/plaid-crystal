#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./link_delivery_verification_status"

module Plaid
  # Information related to account attached to the connected Item
  class LinkDeliveryAccount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The Plaid `account_id`
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The official account name
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The last 2-4 alphanumeric characters of an account's official account number. Note that the mask may be non-unique between an Item's accounts. It may also not match the mask that the bank displays to the user.
    @[JSON::Field(key: "mask", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mask : String? = nil

    # The account type. See the [Account schema](https://plaid.com/docs/api/accounts/#account-type-schema) for a full list of possible values
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # The account subtype. See the [Account schema](https://plaid.com/docs/api/accounts/#account-type-schema) for a full list of possible values
    @[JSON::Field(key: "subtype", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subtype : String? = nil

    @[JSON::Field(key: "verification_status", type: Plaid::LinkDeliveryVerificationStatus?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_status : Plaid::LinkDeliveryVerificationStatus? = nil

    # If micro-deposit verification is being used, indicates whether the account being verified is a `business` or `personal` account.
    @[JSON::Field(key: "class_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter class_type : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @id : String? = nil,
      @name : String? = nil,
      @mask : String? = nil,
      @_type : String? = nil,
      @subtype : String? = nil,
      @verification_status : Plaid::LinkDeliveryVerificationStatus? = nil,
      @class_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_id = @id).nil?
      end
      unless (_name = @name).nil?
      end
      unless (_mask = @mask).nil?
      end
      unless (__type = @_type).nil?
      end
      unless (_subtype = @subtype).nil?
      end
      unless (_verification_status = @verification_status).nil?
        invalid_properties.push(_verification_status.error_message) if !_verification_status.valid?
      end
      unless (_class_type = @class_type).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_id = @id).nil?
      end

      unless (_name = @name).nil?
      end

      unless (_mask = @mask).nil?
      end

      unless (__type = @_type).nil?
      end

      unless (_subtype = @subtype).nil?
      end

      unless (_verification_status = @verification_status).nil?
        return false if !_verification_status.valid?
      end

      unless (_class_type = @class_type).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      unless new_value.nil?
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mask Object to be assigned
    def mask=(new_value : String?)
      unless new_value.nil?
      end

      @mask = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtype Object to be assigned
    def subtype=(new_value : String?)
      unless new_value.nil?
      end

      @subtype = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_status Object to be assigned
    def verification_status=(new_value : Plaid::LinkDeliveryVerificationStatus?)
      unless new_value.nil?
        new_value.validate
      end

      @verification_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] class_type Object to be assigned
    def class_type=(new_value : String?)
      unless new_value.nil?
      end

      @class_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @name, @mask, @_type, @subtype, @verification_status, @class_type)
  end
end
