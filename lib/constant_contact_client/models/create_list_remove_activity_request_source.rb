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
  # Specifies the contacts to remove from your target list(s) using one of several mutually exclusive properties.
  class CreateListRemoveActivityRequestSource
    # Include up to 50 <code>list_id</code> values to remove all contact list members from your target list(s). This property is mutually exclusive with all other <code>source</code> properties.
    attr_accessor :list_ids

    # Include up to 500 <code>contact_id</code> values to remove the contacts from your target lists. This property is mutually exclusive with all other <code>source</code> properties.
    attr_accessor :contact_ids

    # Removes all active (billable) contacts from your targeted lists. This property is mutually exclusive with all other <code>source</code> properties.
    attr_accessor :all_active_contacts

    # Removes all contacts that meet the selected  <code>engagement_level </code> to your target lists. This property is mutually exclusive with all other <code>source</code> properties.
    attr_accessor :engagement_level

    # Removes all contacts assigned with the specified <code>tag_id</code>s from your target lists. This property is mutually exclusive with all other <code>source</code> properties.
    attr_accessor :tag_ids

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'list_ids' => :'list_ids',
        :'contact_ids' => :'contact_ids',
        :'all_active_contacts' => :'all_active_contacts',
        :'engagement_level' => :'engagement_level',
        :'tag_ids' => :'tag_ids'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'list_ids' => :'Array<String>',
        :'contact_ids' => :'Array<String>',
        :'all_active_contacts' => :'Boolean',
        :'engagement_level' => :'String',
        :'tag_ids' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::CreateListRemoveActivityRequestSource` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::CreateListRemoveActivityRequestSource`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'list_ids')
        if (value = attributes[:'list_ids']).is_a?(Array)
          self.list_ids = value
        end
      end

      if attributes.key?(:'contact_ids')
        if (value = attributes[:'contact_ids']).is_a?(Array)
          self.contact_ids = value
        end
      end

      if attributes.key?(:'all_active_contacts')
        self.all_active_contacts = attributes[:'all_active_contacts']
      else
        self.all_active_contacts = false
      end

      if attributes.key?(:'engagement_level')
        self.engagement_level = attributes[:'engagement_level']
      end

      if attributes.key?(:'tag_ids')
        if (value = attributes[:'tag_ids']).is_a?(Array)
          self.tag_ids = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@list_ids.nil? && @list_ids.length > 0
        invalid_properties.push('invalid value for "list_ids", number of items must be less than or equal to 0.')
      end

      if !@contact_ids.nil? && @contact_ids.length > 0
        invalid_properties.push('invalid value for "contact_ids", number of items must be less than or equal to 0.')
      end

      if !@tag_ids.nil? && @tag_ids.length > 0
        invalid_properties.push('invalid value for "tag_ids", number of items must be less than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@list_ids.nil? && @list_ids.length > 0
      return false if !@contact_ids.nil? && @contact_ids.length > 0
      return false if !@tag_ids.nil? && @tag_ids.length > 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] list_ids Value to be assigned
    def list_ids=(list_ids)
      if list_ids.nil?
        fail ArgumentError, 'list_ids cannot be nil'
      end

      if list_ids.length > 0
        fail ArgumentError, 'invalid value for "list_ids", number of items must be less than or equal to 0.'
      end

      @list_ids = list_ids
    end

    # Custom attribute writer method with validation
    # @param [Object] contact_ids Value to be assigned
    def contact_ids=(contact_ids)
      if contact_ids.nil?
        fail ArgumentError, 'contact_ids cannot be nil'
      end

      if contact_ids.length > 0
        fail ArgumentError, 'invalid value for "contact_ids", number of items must be less than or equal to 0.'
      end

      @contact_ids = contact_ids
    end

    # Custom attribute writer method with validation
    # @param [Object] tag_ids Value to be assigned
    def tag_ids=(tag_ids)
      if tag_ids.nil?
        fail ArgumentError, 'tag_ids cannot be nil'
      end

      if tag_ids.length > 0
        fail ArgumentError, 'invalid value for "tag_ids", number of items must be less than or equal to 0.'
      end

      @tag_ids = tag_ids
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          list_ids == o.list_ids &&
          contact_ids == o.contact_ids &&
          all_active_contacts == o.all_active_contacts &&
          engagement_level == o.engagement_level &&
          tag_ids == o.tag_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [list_ids, contact_ids, all_active_contacts, engagement_level, tag_ids].hash
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
