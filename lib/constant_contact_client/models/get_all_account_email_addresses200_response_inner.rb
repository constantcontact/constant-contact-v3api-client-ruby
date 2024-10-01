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
  class GetAllAccountEmailAddresses200ResponseInner
    # An email address associated with a Constant Contact account owner.
    attr_accessor :email_address

    # The unique ID for an email address in a Constant Contact account.
    attr_accessor :email_id

    # The confirmation status of the account email address. When you add a new email address to an account, Constant Contact automatically sends an email to that address with a link to confirm it. You can use any account email address with a <code>CONFIRMED</code> status to create an email campaign. 
    attr_accessor :confirm_status

    # The date that the email address changed to <code>CONFIRMED</code> status in ISO-8601 format.
    attr_accessor :confirm_time

    # Describes who confirmed the email address. Valid values are:   <ul>   <li>SITE_OWNER — The Constant Contact account owner confirmed the email address.</li>   <li>SUPPORT — Constant Contact support staff confirmed the email address.</li>   <li>FORCEVERIFY — Constant Contact confirmed the email address without sending a confirmation email.</li>   <li>PARTNER — A Constant Contact partner confirmed the email address.</li>   </ul> 
    attr_accessor :confirm_source_type

    # Specifies the current role of a confirmed email address in an account. Each email address can have multiple roles or no role. Possible role values are: <ul> <li>CONTACT — The contact email for the Constant Contact account owner. Each account can only have one <code>CONTACT</code> role email.</li> <li>BILLING — The billing address for the Constant Contact account. Each account can only have one <code>BILLING</code> role email.</li> <li>JOURNALING — An email address that Constant Contact forwards all sent email campaigns to as part of the partner journaling compliance feature.</li> <li>REPLY_TO — The contact email used in the email campaign signature. Each account can only have one <code>REPLY_TO</code> role email.</li> <li>OTHER — An email address that does not fit into the other categories.</li> </ul> You can use any confirmed email address in the email campaign <code>from_email</code> and <code>reply_to_email</code> headers. 
    attr_accessor :roles

    # The planned role for an unconfirmed email address. Possible role values are: <ul> <li>CONTACT — The contact email for the Constant Contact account owner. Each account can only have one <code>CONTACT</code> role email.</li> <li>BILLING — The billing address for the Constant Contact account. Each account can only have one <code>BILLING</code> role email.</li> <li>JOURNALING — The email address that Constant Contact forwards all sent email campaigns to as part of the partner journaling compliance feature.</li> <li>REPLY_TO — The contact email used in the email campaign signature. Each account can only have one <code>REPLY_TO</code> role email. </li> <li>OTHER — An email address that does not fit into the other categories.</li> </ul> 
    attr_accessor :pending_roles

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email_address' => :'email_address',
        :'email_id' => :'email_id',
        :'confirm_status' => :'confirm_status',
        :'confirm_time' => :'confirm_time',
        :'confirm_source_type' => :'confirm_source_type',
        :'roles' => :'roles',
        :'pending_roles' => :'pending_roles'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'email_address' => :'String',
        :'email_id' => :'Integer',
        :'confirm_status' => :'String',
        :'confirm_time' => :'Time',
        :'confirm_source_type' => :'String',
        :'roles' => :'Array<String>',
        :'pending_roles' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetAllAccountEmailAddresses200ResponseInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetAllAccountEmailAddresses200ResponseInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'email_id')
        self.email_id = attributes[:'email_id']
      end

      if attributes.key?(:'confirm_status')
        self.confirm_status = attributes[:'confirm_status']
      end

      if attributes.key?(:'confirm_time')
        self.confirm_time = attributes[:'confirm_time']
      end

      if attributes.key?(:'confirm_source_type')
        self.confirm_source_type = attributes[:'confirm_source_type']
      end

      if attributes.key?(:'roles')
        if (value = attributes[:'roles']).is_a?(Array)
          self.roles = value
        end
      end

      if attributes.key?(:'pending_roles')
        if (value = attributes[:'pending_roles']).is_a?(Array)
          self.pending_roles = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@email_address.nil? && @email_address.to_s.length > 80
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 80.')
      end

      if !@email_id.nil? && @email_id < 1
        invalid_properties.push('invalid value for "email_id", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@email_address.nil? && @email_address.to_s.length > 80
      return false if !@email_id.nil? && @email_id < 1
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if email_address.nil?
        fail ArgumentError, 'email_address cannot be nil'
      end

      if email_address.to_s.length > 80
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 80.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] email_id Value to be assigned
    def email_id=(email_id)
      if email_id.nil?
        fail ArgumentError, 'email_id cannot be nil'
      end

      if email_id < 1
        fail ArgumentError, 'invalid value for "email_id", must be greater than or equal to 1.'
      end

      @email_id = email_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_address == o.email_address &&
          email_id == o.email_id &&
          confirm_status == o.confirm_status &&
          confirm_time == o.confirm_time &&
          confirm_source_type == o.confirm_source_type &&
          roles == o.roles &&
          pending_roles == o.pending_roles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email_address, email_id, confirm_status, confirm_time, confirm_source_type, roles, pending_roles].hash
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
