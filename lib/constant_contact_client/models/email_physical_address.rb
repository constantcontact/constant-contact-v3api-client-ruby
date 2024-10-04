=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.101
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module ConstantContactClient
  class EmailPhysicalAddress
    # Line 1 of the organization's street address.
    attr_accessor :address_line1

    # Line 2 of the organization's street address.
    attr_accessor :address_line2

    # Line 3 of the organization's street address.
    attr_accessor :address_line3

    # An optional address field for the organization. Only <code>format_type</code> 3, 4, and 5 can use this property.
    attr_accessor :address_optional

    # The city where the organization sending the email campaign is located.
    attr_accessor :city

    # The uppercase two letter <a href='https://en.wikipedia.org/wiki/ISO_3166-1' target='_blank'>ISO 3166-1 code</a> for the organization's country.
    attr_accessor :country_code

    # The full name of the country where the organization sending the email is located. Automatically generated using the <code>country_code</code>.
    attr_accessor :country_name

    # The name of the organization that is sending the email campaign.
    attr_accessor :organization_name

    # The postal code address (ZIP code) of the organization.
    attr_accessor :postal_code

    # The uppercase two letter <a href='https://en.wikipedia.org/wiki/ISO_3166-1' target='_blank'>ISO 3166-1 code</a> for the organization's state. This property is required if the <code>country_code</code> is US (United States).
    attr_accessor :state_code

    # The full state name for a <code>state_code</code> that is inside the United States. Automatically generated using the <code>state_code</code>.
    attr_accessor :state_name

    # The full state name for a <code>state_code</code> that is outside the United States. This property is not read only.
    attr_accessor :state_non_us_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address_line1' => :'address_line1',
        :'address_line2' => :'address_line2',
        :'address_line3' => :'address_line3',
        :'address_optional' => :'address_optional',
        :'city' => :'city',
        :'country_code' => :'country_code',
        :'country_name' => :'country_name',
        :'organization_name' => :'organization_name',
        :'postal_code' => :'postal_code',
        :'state_code' => :'state_code',
        :'state_name' => :'state_name',
        :'state_non_us_name' => :'state_non_us_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'address_line3' => :'String',
        :'address_optional' => :'String',
        :'city' => :'String',
        :'country_code' => :'String',
        :'country_name' => :'String',
        :'organization_name' => :'String',
        :'postal_code' => :'String',
        :'state_code' => :'String',
        :'state_name' => :'String',
        :'state_non_us_name' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::EmailPhysicalAddress` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::EmailPhysicalAddress`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address_line1')
        self.address_line1 = attributes[:'address_line1']
      else
        self.address_line1 = nil
      end

      if attributes.key?(:'address_line2')
        self.address_line2 = attributes[:'address_line2']
      end

      if attributes.key?(:'address_line3')
        self.address_line3 = attributes[:'address_line3']
      end

      if attributes.key?(:'address_optional')
        self.address_optional = attributes[:'address_optional']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      else
        self.country_code = nil
      end

      if attributes.key?(:'country_name')
        self.country_name = attributes[:'country_name']
      end

      if attributes.key?(:'organization_name')
        self.organization_name = attributes[:'organization_name']
      else
        self.organization_name = nil
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'state_code')
        self.state_code = attributes[:'state_code']
      end

      if attributes.key?(:'state_name')
        self.state_name = attributes[:'state_name']
      end

      if attributes.key?(:'state_non_us_name')
        self.state_non_us_name = attributes[:'state_non_us_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @address_line1.nil?
        invalid_properties.push('invalid value for "address_line1", address_line1 cannot be nil.')
      end

      if @country_code.nil?
        invalid_properties.push('invalid value for "country_code", country_code cannot be nil.')
      end

      if @organization_name.nil?
        invalid_properties.push('invalid value for "organization_name", organization_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @address_line1.nil?
      return false if @country_code.nil?
      return false if @organization_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          address_line3 == o.address_line3 &&
          address_optional == o.address_optional &&
          city == o.city &&
          country_code == o.country_code &&
          country_name == o.country_name &&
          organization_name == o.organization_name &&
          postal_code == o.postal_code &&
          state_code == o.state_code &&
          state_name == o.state_name &&
          state_non_us_name == o.state_non_us_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address_line1, address_line2, address_line3, address_optional, city, country_code, country_name, organization_name, postal_code, state_code, state_name, state_non_us_name].hash
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
