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
  # Additional details about the SMS consent actions (opt-in, opt-out) in JSON format. The  <code>consent_action_type</code> and the method used to add or update a contacts SMS details determines which properties are returned in the results.
  class GetSmsEngagementHistory200ResponseInnerHistoryDetails
    # The code representing the consent state, including <code>E</code> for optin and <code>O</code> for Optin.
    attr_accessor :state

    # The code representing the consent source type, including <code>A</code> for Account, <code>C</code> for Contact, and <code>S</code>' for System.
    attr_accessor :source

    # The type of SMS consent used.
    attr_accessor :consent_type

    # The date and time that SMS engagement data was last updated, in ISO-8601 format. System generated.
    attr_accessor :consent_action_time

    # The type of consent action provided.
    attr_accessor :consent_action_type

    # The code representing the medium used to provide consent. Medium types include mobile device (<code>MD</code>). lead generation form(<code>LF</code>), deactivation by carrier(<code>CD</code>), import_file:(<code>FI</code>), and system (<code>SY</code>).
    attr_accessor :consent_medium_type

    # The time that SMS consent was last updated.
    attr_accessor :source_consent_timestamp

    # If applicable, the IP address from which the consent came.
    attr_accessor :source_ip

    # If applicable, the SMS consent number associated with the source.
    attr_accessor :source_sms_number

    # If applicable, the advertising numeric component used to advertise to the contact.. For example, if <code>advertised_frequency</code> is set to <code> 2</code> , and  <code>advertised_interval</code> is set to <code>M</code>, the contact receives advertisements twice a month.
    attr_accessor :advertised_frequency

    # If applicable, the interval component used to advertise to the contact. For example, if <code>advertised_frequency</code> is set to <code> 2</code> , and  <code>advertised_interval</code> is set to <code>M</code>, the contact receives advertisements twice a month.
    attr_accessor :advertised_interval

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'state' => :'state',
        :'source' => :'source',
        :'consent_type' => :'consent_type',
        :'consent_action_time' => :'consent_action_time',
        :'consent_action_type' => :'consent_action_type',
        :'consent_medium_type' => :'consent_medium_type',
        :'source_consent_timestamp' => :'source_consent_timestamp',
        :'source_ip' => :'source_ip',
        :'source_sms_number' => :'source_sms_number',
        :'advertised_frequency' => :'advertised_frequency',
        :'advertised_interval' => :'advertised_interval'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'state' => :'String',
        :'source' => :'String',
        :'consent_type' => :'String',
        :'consent_action_time' => :'Time',
        :'consent_action_type' => :'String',
        :'consent_medium_type' => :'String',
        :'source_consent_timestamp' => :'String',
        :'source_ip' => :'String',
        :'source_sms_number' => :'String',
        :'advertised_frequency' => :'Integer',
        :'advertised_interval' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetSmsEngagementHistory200ResponseInnerHistoryDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetSmsEngagementHistory200ResponseInnerHistoryDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'consent_type')
        self.consent_type = attributes[:'consent_type']
      end

      if attributes.key?(:'consent_action_time')
        self.consent_action_time = attributes[:'consent_action_time']
      end

      if attributes.key?(:'consent_action_type')
        self.consent_action_type = attributes[:'consent_action_type']
      end

      if attributes.key?(:'consent_medium_type')
        self.consent_medium_type = attributes[:'consent_medium_type']
      end

      if attributes.key?(:'source_consent_timestamp')
        self.source_consent_timestamp = attributes[:'source_consent_timestamp']
      end

      if attributes.key?(:'source_ip')
        self.source_ip = attributes[:'source_ip']
      end

      if attributes.key?(:'source_sms_number')
        self.source_sms_number = attributes[:'source_sms_number']
      end

      if attributes.key?(:'advertised_frequency')
        self.advertised_frequency = attributes[:'advertised_frequency']
      end

      if attributes.key?(:'advertised_interval')
        self.advertised_interval = attributes[:'advertised_interval']
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
          state == o.state &&
          source == o.source &&
          consent_type == o.consent_type &&
          consent_action_time == o.consent_action_time &&
          consent_action_type == o.consent_action_type &&
          consent_medium_type == o.consent_medium_type &&
          source_consent_timestamp == o.source_consent_timestamp &&
          source_ip == o.source_ip &&
          source_sms_number == o.source_sms_number &&
          advertised_frequency == o.advertised_frequency &&
          advertised_interval == o.advertised_interval
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [state, source, consent_type, consent_action_time, consent_action_type, consent_medium_type, source_consent_timestamp, source_ip, source_sms_number, advertised_frequency, advertised_interval].hash
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
