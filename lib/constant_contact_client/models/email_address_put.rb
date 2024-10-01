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
  # The contact's email address and related properties.
  class EmailAddressPut
    # The email address of the contact. The email address must be unique for each contact.
    attr_accessor :address

    # Identifies the type of permission that the Constant Contact account has to send email to the contact. Types of permission: explicit, implicit, not_set, pending_confirmation, temp_hold, unsubscribed.
    attr_accessor :permission_to_send

    # Date and time that the email_address was created, in ISO-8601 format. System generated.
    attr_accessor :created_at

    # Date and time that the email_address was last updated, in ISO-8601 format. System generated.
    attr_accessor :updated_at

    # Date and time that the email_address was opted-in to receive email from the account, in ISO-8601 format. System generated.
    attr_accessor :opt_in_date

    # Describes the source of the unsubscribed/opt-out action: either Account or Contact. If the Contact opted-out, then the account cannot send any campaigns to this contact until the contact opts back in. If the Account, then the account can add the contact back to any lists and send to them. Displayed only if contact has been unsubscribed/opt-out.
    attr_accessor :opt_out_source

    # Date and time that the contact unsubscribed/opted-out of receiving email from the account, in ISO-8601 format. Displayed only if contact has been unsubscribed/opt-out. System generated.
    attr_accessor :opt_out_date

    # The reason, as provided by the contact, that they unsubscribed/opted-out of receiving email campaigns.
    attr_accessor :opt_out_reason

    # Indicates if the contact confirmed their email address after they subscribed to receive emails. Possible values: pending, confirmed, off.
    attr_accessor :confirm_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address' => :'address',
        :'permission_to_send' => :'permission_to_send',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'opt_in_date' => :'opt_in_date',
        :'opt_out_source' => :'opt_out_source',
        :'opt_out_date' => :'opt_out_date',
        :'opt_out_reason' => :'opt_out_reason',
        :'confirm_status' => :'confirm_status'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address' => :'String',
        :'permission_to_send' => :'String',
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'opt_in_date' => :'Time',
        :'opt_out_source' => :'String',
        :'opt_out_date' => :'Time',
        :'opt_out_reason' => :'String',
        :'confirm_status' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::EmailAddressPut` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::EmailAddressPut`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      else
        self.address = nil
      end

      if attributes.key?(:'permission_to_send')
        self.permission_to_send = attributes[:'permission_to_send']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'opt_in_date')
        self.opt_in_date = attributes[:'opt_in_date']
      end

      if attributes.key?(:'opt_out_source')
        self.opt_out_source = attributes[:'opt_out_source']
      end

      if attributes.key?(:'opt_out_date')
        self.opt_out_date = attributes[:'opt_out_date']
      end

      if attributes.key?(:'opt_out_reason')
        self.opt_out_reason = attributes[:'opt_out_reason']
      end

      if attributes.key?(:'confirm_status')
        self.confirm_status = attributes[:'confirm_status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if @address.to_s.length > 80
        invalid_properties.push('invalid value for "address", the character length must be smaller than or equal to 80.')
      end

      if !@opt_out_reason.nil? && @opt_out_reason.to_s.length > 255
        invalid_properties.push('invalid value for "opt_out_reason", the character length must be smaller than or equal to 255.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @address.nil?
      return false if @address.to_s.length > 80
      return false if !@opt_out_reason.nil? && @opt_out_reason.to_s.length > 255
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] address Value to be assigned
    def address=(address)
      if address.nil?
        fail ArgumentError, 'address cannot be nil'
      end

      if address.to_s.length > 80
        fail ArgumentError, 'invalid value for "address", the character length must be smaller than or equal to 80.'
      end

      @address = address
    end

    # Custom attribute writer method with validation
    # @param [Object] opt_out_reason Value to be assigned
    def opt_out_reason=(opt_out_reason)
      if opt_out_reason.nil?
        fail ArgumentError, 'opt_out_reason cannot be nil'
      end

      if opt_out_reason.to_s.length > 255
        fail ArgumentError, 'invalid value for "opt_out_reason", the character length must be smaller than or equal to 255.'
      end

      @opt_out_reason = opt_out_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          permission_to_send == o.permission_to_send &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          opt_in_date == o.opt_in_date &&
          opt_out_source == o.opt_out_source &&
          opt_out_date == o.opt_out_date &&
          opt_out_reason == o.opt_out_reason &&
          confirm_status == o.confirm_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address, permission_to_send, created_at, updated_at, opt_in_date, opt_out_source, opt_out_date, opt_out_reason, confirm_status].hash
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
