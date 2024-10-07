=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.109
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module ConstantContactClient
  # Specify client account user's details. All fields are required.
  class SSOUser
    # The client account user's first name.
    attr_accessor :first_name

    # The client account user's last name.
    attr_accessor :last_name

    # The role (<code>account_manager</code> or <code>campaign_creator</code>) to assign the client account user.
    attr_accessor :role_name

    # The unique email address to associate with the new client account user.
    attr_accessor :contact_email

    # The login name to associate with the new client account user.
    attr_accessor :login_name

    # The unique ID used to identify the client account user to the external authenticator. 
    attr_accessor :external_id

    # The unique name used to identify the external provider used to authenticate the client account user. For a list of external providers, contact the Constant Contact Partner Team.
    attr_accessor :external_provider

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'role_name' => :'role_name',
        :'contact_email' => :'contact_email',
        :'login_name' => :'login_name',
        :'external_id' => :'external_id',
        :'external_provider' => :'external_provider'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'role_name' => :'String',
        :'contact_email' => :'String',
        :'login_name' => :'String',
        :'external_id' => :'String',
        :'external_provider' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::SSOUser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::SSOUser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      else
        self.first_name = nil
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      else
        self.last_name = nil
      end

      if attributes.key?(:'role_name')
        self.role_name = attributes[:'role_name']
      else
        self.role_name = nil
      end

      if attributes.key?(:'contact_email')
        self.contact_email = attributes[:'contact_email']
      else
        self.contact_email = nil
      end

      if attributes.key?(:'login_name')
        self.login_name = attributes[:'login_name']
      else
        self.login_name = nil
      end

      if attributes.key?(:'external_id')
        self.external_id = attributes[:'external_id']
      else
        self.external_id = nil
      end

      if attributes.key?(:'external_provider')
        self.external_provider = attributes[:'external_provider']
      else
        self.external_provider = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @first_name.to_s.length > 80
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 80.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @last_name.to_s.length > 80
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 80.')
      end

      if @role_name.nil?
        invalid_properties.push('invalid value for "role_name", role_name cannot be nil.')
      end

      if @contact_email.nil?
        invalid_properties.push('invalid value for "contact_email", contact_email cannot be nil.')
      end

      if @contact_email.to_s.length > 80
        invalid_properties.push('invalid value for "contact_email", the character length must be smaller than or equal to 80.')
      end

      if @login_name.nil?
        invalid_properties.push('invalid value for "login_name", login_name cannot be nil.')
      end

      if @login_name.to_s.length > 50
        invalid_properties.push('invalid value for "login_name", the character length must be smaller than or equal to 50.')
      end

      if @external_id.nil?
        invalid_properties.push('invalid value for "external_id", external_id cannot be nil.')
      end

      if @external_id.to_s.length > 255
        invalid_properties.push('invalid value for "external_id", the character length must be smaller than or equal to 255.')
      end

      if @external_provider.nil?
        invalid_properties.push('invalid value for "external_provider", external_provider cannot be nil.')
      end

      if @external_provider.to_s.length > 80
        invalid_properties.push('invalid value for "external_provider", the character length must be smaller than or equal to 80.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @first_name.nil?
      return false if @first_name.to_s.length > 80
      return false if @last_name.nil?
      return false if @last_name.to_s.length > 80
      return false if @role_name.nil?
      return false if @contact_email.nil?
      return false if @contact_email.to_s.length > 80
      return false if @login_name.nil?
      return false if @login_name.to_s.length > 50
      return false if @external_id.nil?
      return false if @external_id.to_s.length > 255
      return false if @external_provider.nil?
      return false if @external_provider.to_s.length > 80
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, 'first_name cannot be nil'
      end

      if first_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 80.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 80.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_email Value to be assigned
    def contact_email=(contact_email)
      if contact_email.nil?
        fail ArgumentError, 'contact_email cannot be nil'
      end

      if contact_email.to_s.length > 80
        fail ArgumentError, 'invalid value for "contact_email", the character length must be smaller than or equal to 80.'
      end

      @contact_email = contact_email
    end

    # Custom attribute writer method with validation
    # @param [Object] login_name Value to be assigned
    def login_name=(login_name)
      if login_name.nil?
        fail ArgumentError, 'login_name cannot be nil'
      end

      if login_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "login_name", the character length must be smaller than or equal to 50.'
      end

      @login_name = login_name
    end

    # Custom attribute writer method with validation
    # @param [Object] external_id Value to be assigned
    def external_id=(external_id)
      if external_id.nil?
        fail ArgumentError, 'external_id cannot be nil'
      end

      if external_id.to_s.length > 255
        fail ArgumentError, 'invalid value for "external_id", the character length must be smaller than or equal to 255.'
      end

      @external_id = external_id
    end

    # Custom attribute writer method with validation
    # @param [Object] external_provider Value to be assigned
    def external_provider=(external_provider)
      if external_provider.nil?
        fail ArgumentError, 'external_provider cannot be nil'
      end

      if external_provider.to_s.length > 80
        fail ArgumentError, 'invalid value for "external_provider", the character length must be smaller than or equal to 80.'
      end

      @external_provider = external_provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          role_name == o.role_name &&
          contact_email == o.contact_email &&
          login_name == o.login_name &&
          external_id == o.external_id &&
          external_provider == o.external_provider
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, last_name, role_name, contact_email, login_name, external_id, external_provider].hash
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
