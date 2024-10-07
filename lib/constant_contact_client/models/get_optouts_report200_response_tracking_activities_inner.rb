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
  class GetOptoutsReport200ResponseTrackingActivitiesInner
    # The ID that uniquely identifies a contact.
    attr_accessor :contact_id

    # The ID that uniquely identifies the email campaign activity.
    attr_accessor :campaign_activity_id

    # The type of report tracking activity that is associated with the specified <code>campaign_activity_id</code>.
    attr_accessor :tracking_activity_type

    # The contact's email address.
    attr_accessor :email_address

    # The first name of the contact.
    attr_accessor :first_name

    # The last name of the contact.
    attr_accessor :last_name

    # The opt-out reason, if the contact entered a reason.
    attr_accessor :opt_out_reason

    # The time that the contact chose to opt-out from receiving future email campaign activities.
    attr_accessor :created_time

    # If applicable, displays the date that the contact was deleted.
    attr_accessor :deleted_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'contact_id' => :'contact_id',
        :'campaign_activity_id' => :'campaign_activity_id',
        :'tracking_activity_type' => :'tracking_activity_type',
        :'email_address' => :'email_address',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'opt_out_reason' => :'opt_out_reason',
        :'created_time' => :'created_time',
        :'deleted_at' => :'deleted_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'contact_id' => :'String',
        :'campaign_activity_id' => :'String',
        :'tracking_activity_type' => :'String',
        :'email_address' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'opt_out_reason' => :'String',
        :'created_time' => :'Time',
        :'deleted_at' => :'Date'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetOptoutsReport200ResponseTrackingActivitiesInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetOptoutsReport200ResponseTrackingActivitiesInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'contact_id')
        self.contact_id = attributes[:'contact_id']
      else
        self.contact_id = nil
      end

      if attributes.key?(:'campaign_activity_id')
        self.campaign_activity_id = attributes[:'campaign_activity_id']
      else
        self.campaign_activity_id = nil
      end

      if attributes.key?(:'tracking_activity_type')
        self.tracking_activity_type = attributes[:'tracking_activity_type']
      else
        self.tracking_activity_type = nil
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      else
        self.email_address = nil
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'opt_out_reason')
        self.opt_out_reason = attributes[:'opt_out_reason']
      end

      if attributes.key?(:'created_time')
        self.created_time = attributes[:'created_time']
      else
        self.created_time = nil
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @contact_id.nil?
        invalid_properties.push('invalid value for "contact_id", contact_id cannot be nil.')
      end

      if @campaign_activity_id.nil?
        invalid_properties.push('invalid value for "campaign_activity_id", campaign_activity_id cannot be nil.')
      end

      if @tracking_activity_type.nil?
        invalid_properties.push('invalid value for "tracking_activity_type", tracking_activity_type cannot be nil.')
      end

      if @email_address.nil?
        invalid_properties.push('invalid value for "email_address", email_address cannot be nil.')
      end

      if @created_time.nil?
        invalid_properties.push('invalid value for "created_time", created_time cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @contact_id.nil?
      return false if @campaign_activity_id.nil?
      return false if @tracking_activity_type.nil?
      return false if @email_address.nil?
      return false if @created_time.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          contact_id == o.contact_id &&
          campaign_activity_id == o.campaign_activity_id &&
          tracking_activity_type == o.tracking_activity_type &&
          email_address == o.email_address &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          opt_out_reason == o.opt_out_reason &&
          created_time == o.created_time &&
          deleted_at == o.deleted_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [contact_id, campaign_activity_id, tracking_activity_type, email_address, first_name, last_name, opt_out_reason, created_time, deleted_at].hash
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
