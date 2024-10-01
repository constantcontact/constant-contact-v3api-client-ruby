=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.90
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'date'
require 'time'

module ConstantContactClient
  class EmailCampaigns
    # The unique ID used to identify the email campaign (UUID format).
    attr_accessor :campaign_id

    # The system generated date and time that this email campaign was created. This string is readonly and is in ISO-8601 format.
    attr_accessor :created_at

    # The current status of the email campaign. Valid values are: <ul>   <li>Draft — An email campaign that you have created but have not sent to contacts.</li>   <li>Scheduled — An email campaign that you have scheduled for Constant Contact to send to contacts.</li>   <li>Executing — An email campaign that Constant Contact is currently sending to contacts. Email campaign activities are only in this status briefly.</li>   <li>Done — An email campaign that you successfully sent to contacts.</li>   <li>Error — An email campaign activity that encountered an error.</li>   <li>Removed — An email campaign that a user deleted. Users can view and restore deleted emails through the UI.</li> </ul> 
    attr_accessor :current_status

    # The descriptive name the user provides to identify this campaign. Campaign names must be unique for each account ID.
    attr_accessor :name

    # Identifies the type of campaign that you select when creating the campaign. Newsletter and Custom Code email campaigns are the primary types.
    attr_accessor :type

    # The code used to identify the email campaign `type`. <ul>   <li> 1  (Default) </li>   <li> 2  (Bulk Email) </li>   <li> 10 (Newsletter) </li>   <li> 11 (Announcement) </li>   <li> 12 (Product/Service News) </li>   <li> 14 (Business Letter) </li>   <li> 15 (Card) </li>   <li> 16 (Press release)</li>   <li> 17 (Flyer) </li>   <li> 18 (Feedback Request) </li>   <li> 19 (Ratings and Reviews) </li>   <li> 20 (Event Announcement) </li>   <li> 21 (Simple Coupon) </li>   <li> 22 (Sale Promotion) </li>   <li> 23 (Product Promotion) </li>   <li> 24 (Membership Drive) </li>   <li> 25 (Fundraiser) </li>   <li> 26 (Custom Code Email)</li>   <li> 57 (A/B Test)</li> </ul> 
    attr_accessor :type_code

    # The system generated date and time showing when the campaign was last updated. This string is read only and is in ISO-8601 format.
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'campaign_id' => :'campaign_id',
        :'created_at' => :'created_at',
        :'current_status' => :'current_status',
        :'name' => :'name',
        :'type' => :'type',
        :'type_code' => :'type_code',
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
        :'campaign_id' => :'String',
        :'created_at' => :'Time',
        :'current_status' => :'String',
        :'name' => :'String',
        :'type' => :'String',
        :'type_code' => :'Integer',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::EmailCampaigns` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::EmailCampaigns`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'current_status')
        self.current_status = attributes[:'current_status']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'type_code')
        self.type_code = attributes[:'type_code']
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
      if !@name.nil? && @name.to_s.length > 80
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 80.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@name.nil? && @name.to_s.length > 80
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 80
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 80.'
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          campaign_id == o.campaign_id &&
          created_at == o.created_at &&
          current_status == o.current_status &&
          name == o.name &&
          type == o.type &&
          type_code == o.type_code &&
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
      [campaign_id, created_at, current_status, name, type, type_code, updated_at].hash
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
