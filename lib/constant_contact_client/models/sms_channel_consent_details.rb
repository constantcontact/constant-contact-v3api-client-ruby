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
  # Provides SMS consent details.
  class SmsChannelConsentDetails
    # Identifies the current permission status for the SMS channel.
    attr_accessor :sms_consent_permission

    attr_accessor :consent_type

    # Date and time, in ISO-8601 format, that the contact subscribed/opted-in to receiving SMS from the account. Displays only if the contact subscribes/opts-in. System generated.
    attr_accessor :opt_in_date

    # Date and time, in ISO-8601 format, that the contact unsubscribed/opted-out of receiving SMS from the account. Displays only if the contact unsubscribed/opted-out. System generated.
    attr_accessor :opt_out_date

    # The numeric used to set how often to send SMS advertisements during a specified time interval (<code>advertised_interval</code>). For example, if the <code>advertised_frequency</code> is set to <code>2</code> and the  <code>advertised_interval</code> is set to <code>monthly</code>, the contact can receive up to two advertisements per month.
    attr_accessor :advertised_frequency

    # Identifies the unit of time used by Constant Contact to send SMS advertisements as a string enum. For example, if the <code>advertised_frequency</code> is set to <code>2</code> and the <code>advertised_interval</code> is set to <code>monthly</code>, the contact can receive up to two advertisements per month.
    attr_accessor :advertised_interval

    # Date and time that the SMS stats were created, in ISO-8601 format. System generated.
    attr_accessor :created_at

    # Date and time that the SMS stats were updated, in ISO-8601 format. System generated.
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sms_consent_permission' => :'sms_consent_permission',
        :'consent_type' => :'consent_type',
        :'opt_in_date' => :'opt_in_date',
        :'opt_out_date' => :'opt_out_date',
        :'advertised_frequency' => :'advertised_frequency',
        :'advertised_interval' => :'advertised_interval',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sms_consent_permission' => :'String',
        :'consent_type' => :'String',
        :'opt_in_date' => :'Time',
        :'opt_out_date' => :'Time',
        :'advertised_frequency' => :'String',
        :'advertised_interval' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::SmsChannelConsentDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::SmsChannelConsentDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sms_consent_permission')
        self.sms_consent_permission = attributes[:'sms_consent_permission']
      end

      if attributes.key?(:'consent_type')
        self.consent_type = attributes[:'consent_type']
      end

      if attributes.key?(:'opt_in_date')
        self.opt_in_date = attributes[:'opt_in_date']
      end

      if attributes.key?(:'opt_out_date')
        self.opt_out_date = attributes[:'opt_out_date']
      end

      if attributes.key?(:'advertised_frequency')
        self.advertised_frequency = attributes[:'advertised_frequency']
      end

      if attributes.key?(:'advertised_interval')
        self.advertised_interval = attributes[:'advertised_interval']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
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
          sms_consent_permission == o.sms_consent_permission &&
          consent_type == o.consent_type &&
          opt_in_date == o.opt_in_date &&
          opt_out_date == o.opt_out_date &&
          advertised_frequency == o.advertised_frequency &&
          advertised_interval == o.advertised_interval &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sms_consent_permission, consent_type, opt_in_date, opt_out_date, advertised_frequency, advertised_interval, created_at, updated_at].hash
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
