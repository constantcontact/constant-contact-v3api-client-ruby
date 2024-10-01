=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.87
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module ConstantContactClient
  class GetAccountDetails200Response
    # Email addresses that are associated with the Constant Contact account owner.
    attr_accessor :contact_email

    # The account owner's contact phone number (up to 25 characters in length).
    attr_accessor :contact_phone

    # The uppercase two-letter <a href='https://en.wikipedia.org/wiki/ISO_3166-1' target='_blank'>ISO 3166-1 code</a> representing the organization's country.
    attr_accessor :country_code

    # The readOnly encoded account ID that uniquely identifies the account.
    attr_accessor :encoded_account_id

    # The account owner's first name.
    attr_accessor :first_name

    # The account owner's last name.
    attr_accessor :last_name

    # The name of the organization that is associated with this account.
    attr_accessor :organization_name

    # The phone number of the organization that is associated with this account.
    attr_accessor :organization_phone

    # The uppercase two letter <a href='https://en.wikipedia.org/wiki/ISO_3166-1' target='_blank'>ISO 3166-1 code</a> for the organization's state. This property is required if the <code>country_code</code> is US (United States).
    attr_accessor :state_code

    # The time zone that is automatically set based on the <code>state_code</code> setting; as defined in the IANA time-zone database (see http://www.iana.org/time-zones).
    attr_accessor :time_zone_id

    # The organization's website URL.
    attr_accessor :website

    attr_accessor :physical_address

    attr_accessor :company_logo

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'contact_email' => :'contact_email',
        :'contact_phone' => :'contact_phone',
        :'country_code' => :'country_code',
        :'encoded_account_id' => :'encoded_account_id',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'organization_name' => :'organization_name',
        :'organization_phone' => :'organization_phone',
        :'state_code' => :'state_code',
        :'time_zone_id' => :'time_zone_id',
        :'website' => :'website',
        :'physical_address' => :'physical_address',
        :'company_logo' => :'company_logo'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contact_email' => :'String',
        :'contact_phone' => :'String',
        :'country_code' => :'String',
        :'encoded_account_id' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'organization_name' => :'String',
        :'organization_phone' => :'String',
        :'state_code' => :'String',
        :'time_zone_id' => :'String',
        :'website' => :'String',
        :'physical_address' => :'GetAccountDetails200ResponsePhysicalAddress',
        :'company_logo' => :'GetAccountDetails200ResponseCompanyLogo'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetAccountDetails200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetAccountDetails200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contact_email')
        self.contact_email = attributes[:'contact_email']
      end

      if attributes.key?(:'contact_phone')
        self.contact_phone = attributes[:'contact_phone']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'encoded_account_id')
        self.encoded_account_id = attributes[:'encoded_account_id']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'organization_name')
        self.organization_name = attributes[:'organization_name']
      end

      if attributes.key?(:'organization_phone')
        self.organization_phone = attributes[:'organization_phone']
      end

      if attributes.key?(:'state_code')
        self.state_code = attributes[:'state_code']
      end

      if attributes.key?(:'time_zone_id')
        self.time_zone_id = attributes[:'time_zone_id']
      end

      if attributes.key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.key?(:'physical_address')
        self.physical_address = attributes[:'physical_address']
      end

      if attributes.key?(:'company_logo')
        self.company_logo = attributes[:'company_logo']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@contact_phone.nil? && @contact_phone.to_s.length > 25
        invalid_properties.push('invalid value for "contact_phone", the character length must be smaller than or equal to 25.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@contact_phone.nil? && @contact_phone.to_s.length > 25
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_phone Value to be assigned
    def contact_phone=(contact_phone)
      if contact_phone.nil?
        fail ArgumentError, 'contact_phone cannot be nil'
      end

      if contact_phone.to_s.length > 25
        fail ArgumentError, 'invalid value for "contact_phone", the character length must be smaller than or equal to 25.'
      end

      @contact_phone = contact_phone
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contact_email == o.contact_email &&
          contact_phone == o.contact_phone &&
          country_code == o.country_code &&
          encoded_account_id == o.encoded_account_id &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          organization_name == o.organization_name &&
          organization_phone == o.organization_phone &&
          state_code == o.state_code &&
          time_zone_id == o.time_zone_id &&
          website == o.website &&
          physical_address == o.physical_address &&
          company_logo == o.company_logo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contact_email, contact_phone, country_code, encoded_account_id, first_name, last_name, organization_name, organization_phone, state_code, time_zone_id, website, physical_address, company_logo].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ConstantContactClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
