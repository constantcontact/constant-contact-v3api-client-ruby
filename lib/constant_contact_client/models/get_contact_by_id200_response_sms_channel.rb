=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.106
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module ConstantContactClient
  # Includes SMS channel and consent details.
  class GetContactById200ResponseSmsChannel
    # The unique ID that identifies an SMS channel.
    attr_accessor :sms_channel_id

    # The phone number of the SMS-capable phone, which does not include the country code.
    attr_accessor :sms_address

    # The dial code used for the SMS-capable phone. For example, the dial code for the United States is <code>1</code>.
    attr_accessor :dial_code

    # The two character ISO country code used for the SMS-capable phone. For example, the country code for the United States is <code>US</code>.
    attr_accessor :country_code

    # Identifies who last updated SMS details for the contact. Valid values are Contact or Account
    attr_accessor :update_source

    # Identifies who added SMS details for the contact. The value is set when you create SMS details for the contact. Valid values are <code>Contact</code> or <code>Account</code>. 
    attr_accessor :create_source

    # Identifies SMS channel consent details such as the current permission status for the SMS channel and opt-in date.
    attr_accessor :sms_channel_consents

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sms_channel_id' => :'sms_channel_id',
        :'sms_address' => :'sms_address',
        :'dial_code' => :'dial_code',
        :'country_code' => :'country_code',
        :'update_source' => :'update_source',
        :'create_source' => :'create_source',
        :'sms_channel_consents' => :'sms_channel_consents'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sms_channel_id' => :'String',
        :'sms_address' => :'String',
        :'dial_code' => :'String',
        :'country_code' => :'String',
        :'update_source' => :'String',
        :'create_source' => :'String',
        :'sms_channel_consents' => :'Array<GetContactById200ResponseSmsChannelSmsChannelConsentsInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetContactById200ResponseSmsChannel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetContactById200ResponseSmsChannel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sms_channel_id')
        self.sms_channel_id = attributes[:'sms_channel_id']
      end

      if attributes.key?(:'sms_address')
        self.sms_address = attributes[:'sms_address']
      end

      if attributes.key?(:'dial_code')
        self.dial_code = attributes[:'dial_code']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'update_source')
        self.update_source = attributes[:'update_source']
      end

      if attributes.key?(:'create_source')
        self.create_source = attributes[:'create_source']
      end

      if attributes.key?(:'sms_channel_consents')
        if (value = attributes[:'sms_channel_consents']).is_a?(Array)
          self.sms_channel_consents = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sms_channel_id == o.sms_channel_id &&
          sms_address == o.sms_address &&
          dial_code == o.dial_code &&
          country_code == o.country_code &&
          update_source == o.update_source &&
          create_source == o.create_source &&
          sms_channel_consents == o.sms_channel_consents
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sms_channel_id, sms_address, dial_code, country_code, update_source, create_source, sms_channel_consents].hash
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
