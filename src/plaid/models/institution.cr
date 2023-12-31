#  The Plaid API
#
# The Plaid REST API. Please see https://plaid.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-09-14_1.474.3
#
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./auth_metadata"
require "./country_code"
require "./institution_status"
require "./payment_initiation_metadata"
require "./products"

module Plaid
  # Details relating to a specific financial institution
  class Institution
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Unique identifier for the institution. Note that the same institution may have multiple records, each with different institution IDs; for example, if the institution has migrated to OAuth, there may be separate `institution_id`s for the OAuth and non-OAuth versions of the institution. Institutions that operate in different countries or with multiple login portals may also have separate `institution_id`s for each country or portal.
    @[JSON::Field(key: "institution_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter institution_id : String? = nil

    # The official name of the institution.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # A list of the Plaid products supported by the institution. Note that only institutions that support Instant Auth will return `auth` in the product array; institutions that do not list `auth` may still support other Auth methods such as Instant Match or Automated Micro-deposit Verification. To identify institutions that support those methods, use the `auth_metadata` object. For more details, see [Full Auth coverage](https://plaid.com/docs/auth/coverage/).
    @[JSON::Field(key: "products", type: Array(Products)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter products : Array(Products)? = nil

    # A list of the country codes supported by the institution.
    @[JSON::Field(key: "country_codes", type: Array(CountryCode)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country_codes : Array(CountryCode)? = nil

    # A partial list of routing numbers associated with the institution. This list is provided for the purpose of looking up institutions by routing number. It is not comprehensive and should never be used as a complete list of routing numbers for an institution.
    @[JSON::Field(key: "routing_numbers", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter routing_numbers : Array(String)? = nil

    # Indicates that the institution has an OAuth login flow. This will be `true` if OAuth is supported for any Items associated with the institution, even if the institution also supports non-OAuth connections.
    @[JSON::Field(key: "oauth", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter oauth : Bool? = nil

    # End of Required Properties

    # Optional Properties

    # The URL for the institution's website
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String? = nil

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    # Hexadecimal representation of the primary color used by the institution
    @[JSON::Field(key: "primary_color", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: primary_color.nil? && !primary_color_present?)]
    getter primary_color : String? = nil

    @[JSON::Field(ignore: true)]
    property? primary_color_present : Bool = false

    # Base64 encoded representation of the institution's logo, returned as a base64 encoded 152x152 PNG. Not all institutions' logos are available.
    @[JSON::Field(key: "logo", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: logo.nil? && !logo_present?)]
    getter logo : String? = nil

    @[JSON::Field(ignore: true)]
    property? logo_present : Bool = false

    # A partial list of DTC numbers associated with the institution.
    @[JSON::Field(key: "dtc_numbers", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter dtc_numbers : Array(String)? = nil

    @[JSON::Field(key: "status", type: InstitutionStatus?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : InstitutionStatus? = nil

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    @[JSON::Field(key: "payment_initiation_metadata", type: PaymentInitiationMetadata?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_initiation_metadata.nil? && !payment_initiation_metadata_present?)]
    getter payment_initiation_metadata : PaymentInitiationMetadata? = nil

    @[JSON::Field(ignore: true)]
    property? payment_initiation_metadata_present : Bool = false

    @[JSON::Field(key: "auth_metadata", type: AuthMetadata?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: auth_metadata.nil? && !auth_metadata_present?)]
    getter auth_metadata : AuthMetadata? = nil

    @[JSON::Field(ignore: true)]
    property? auth_metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @institution_id : String? = nil,
      @name : String? = nil,
      @products : Array(Products)? = nil,
      @country_codes : Array(CountryCode)? = nil,
      @routing_numbers : Array(String)? = nil,
      @oauth : Bool? = nil,
      # Optional properties
      @url : String? = nil,
      @primary_color : String? = nil,
      @logo : String? = nil,
      @dtc_numbers : Array(String)? = nil,
      @status : InstitutionStatus? = nil,
      @payment_initiation_metadata : PaymentInitiationMetadata? = nil,
      @auth_metadata : AuthMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"institution_id\" is required and cannot be null") if @institution_id.nil?

      unless (_institution_id = @institution_id).nil?
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
      end
      invalid_properties.push("\"products\" is required and cannot be null") if @products.nil?

      unless (_products = @products).nil?
      end
      invalid_properties.push("\"country_codes\" is required and cannot be null") if @country_codes.nil?

      unless (_country_codes = @country_codes).nil?
      end
      invalid_properties.push("\"routing_numbers\" is required and cannot be null") if @routing_numbers.nil?

      unless (_routing_numbers = @routing_numbers).nil?
      end
      invalid_properties.push("\"oauth\" is required and cannot be null") if @oauth.nil?

      unless (_oauth = @oauth).nil?
      end
      unless (_url = @url).nil?
      end
      unless (_primary_color = @primary_color).nil?
      end
      unless (_logo = @logo).nil?
      end
      unless (_dtc_numbers = @dtc_numbers).nil?
      end
      unless (_status = @status).nil?
      end
      unless (_payment_initiation_metadata = @payment_initiation_metadata).nil?
      end
      unless (_auth_metadata = @auth_metadata).nil?
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @institution_id.nil?
      unless (_institution_id = @institution_id).nil?
      end

      return false if @name.nil?
      unless (_name = @name).nil?
      end

      return false if @products.nil?
      unless (_products = @products).nil?
      end

      return false if @country_codes.nil?
      unless (_country_codes = @country_codes).nil?
      end

      return false if @routing_numbers.nil?
      unless (_routing_numbers = @routing_numbers).nil?
      end

      return false if @oauth.nil?
      unless (_oauth = @oauth).nil?
      end

      unless (_url = @url).nil?
      end

      unless (_primary_color = @primary_color).nil?
      end

      unless (_logo = @logo).nil?
      end

      unless (_dtc_numbers = @dtc_numbers).nil?
      end

      unless (_status = @status).nil?
      end

      unless (_payment_initiation_metadata = @payment_initiation_metadata).nil?
      end

      unless (_auth_metadata = @auth_metadata).nil?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] institution_id Object to be assigned
    def institution_id=(new_value : String?)
      raise ArgumentError.new("\"institution_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @institution_id = new_value
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
    # @param [Object] products Object to be assigned
    def products=(new_value : Array(Products)?)
      raise ArgumentError.new("\"products\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @products = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country_codes Object to be assigned
    def country_codes=(new_value : Array(CountryCode)?)
      raise ArgumentError.new("\"country_codes\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @country_codes = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] routing_numbers Object to be assigned
    def routing_numbers=(new_value : Array(String)?)
      raise ArgumentError.new("\"routing_numbers\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @routing_numbers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oauth Object to be assigned
    def oauth=(new_value : Bool?)
      raise ArgumentError.new("\"oauth\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
      end

      @oauth = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      unless new_value.nil?
      end

      @url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] primary_color Object to be assigned
    def primary_color=(new_value : String?)
      unless new_value.nil?
      end

      @primary_color = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logo Object to be assigned
    def logo=(new_value : String?)
      unless new_value.nil?
      end

      @logo = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dtc_numbers Object to be assigned
    def dtc_numbers=(new_value : Array(String)?)
      unless new_value.nil?
      end

      @dtc_numbers = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : InstitutionStatus?)
      unless new_value.nil?
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_initiation_metadata Object to be assigned
    def payment_initiation_metadata=(new_value : PaymentInitiationMetadata?)
      unless new_value.nil?
      end

      @payment_initiation_metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] auth_metadata Object to be assigned
    def auth_metadata=(new_value : AuthMetadata?)
      unless new_value.nil?
      end

      @auth_metadata = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@institution_id, @name, @products, @country_codes, @routing_numbers, @oauth, @url, @url_present, @primary_color, @primary_color_present, @logo, @logo_present, @dtc_numbers, @status, @status_present, @payment_initiation_metadata, @payment_initiation_metadata_present, @auth_metadata, @auth_metadata_present)
  end
end
