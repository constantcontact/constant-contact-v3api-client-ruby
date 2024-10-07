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
  class CreateOrUpdateContactRequest
    # The email address for the contact. This method identifies each unique contact using their email address. If the email address exists in the account, this method updates the contact. If the email address is new, this method creates a new contact.
    attr_accessor :email_address

    # The first name of the contact.
    attr_accessor :first_name

    # The last name of the contact.
    attr_accessor :last_name

    # The job title of the contact.
    attr_accessor :job_title

    # The name of the company where the contact works.
    attr_accessor :company_name

    # The phone number for the contact.
    attr_accessor :phone_number

    # The contact lists you want to add the contact to as an array of up to 50 contact <code>list_id</code> values. You must include at least one <code>list_id</code>.
    attr_accessor :list_memberships

    # The custom fields you want to add to the contact as an array of up to 50 custom field objects.
    attr_accessor :custom_fields

    # The anniversary date for the contact. For example, this value could be the date when the contact first became a customer of an organization in Constant Contact. Valid date formats are MM/DD/YYYY, M/D/YYYY, YYYY/MM/DD, YYYY/M/D, YYYY-MM-DD, YYYY-M-D,M-D-YYYY, or M-DD-YYYY. 
    attr_accessor :anniversary

    # The month value for the contact's birthday. Valid values are from 1 through 12. The <code>birthday_month</code> property is required if you use <code>birthday_day</code>.
    attr_accessor :birthday_month

    # The day value for the contact's birthday. Valid values are from 1 through 31. The <code>birthday_day</code> property is required if you use <code>birthday_month</code>.
    attr_accessor :birthday_day

    attr_accessor :street_address

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'email_address' => :'email_address',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'job_title' => :'job_title',
        :'company_name' => :'company_name',
        :'phone_number' => :'phone_number',
        :'list_memberships' => :'list_memberships',
        :'custom_fields' => :'custom_fields',
        :'anniversary' => :'anniversary',
        :'birthday_month' => :'birthday_month',
        :'birthday_day' => :'birthday_day',
        :'street_address' => :'street_address'
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
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'job_title' => :'String',
        :'company_name' => :'String',
        :'phone_number' => :'String',
        :'list_memberships' => :'Array<String>',
        :'custom_fields' => :'Array<CreateOrUpdateContactRequestCustomFieldsInner>',
        :'anniversary' => :'String',
        :'birthday_month' => :'Integer',
        :'birthday_day' => :'Integer',
        :'street_address' => :'CreateOrUpdateContactRequestStreetAddress'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::CreateOrUpdateContactRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::CreateOrUpdateContactRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

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

      if attributes.key?(:'job_title')
        self.job_title = attributes[:'job_title']
      end

      if attributes.key?(:'company_name')
        self.company_name = attributes[:'company_name']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'list_memberships')
        if (value = attributes[:'list_memberships']).is_a?(Array)
          self.list_memberships = value
        end
      else
        self.list_memberships = nil
      end

      if attributes.key?(:'custom_fields')
        if (value = attributes[:'custom_fields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.key?(:'anniversary')
        self.anniversary = attributes[:'anniversary']
      end

      if attributes.key?(:'birthday_month')
        self.birthday_month = attributes[:'birthday_month']
      end

      if attributes.key?(:'birthday_day')
        self.birthday_day = attributes[:'birthday_day']
      end

      if attributes.key?(:'street_address')
        self.street_address = attributes[:'street_address']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @email_address.nil?
        invalid_properties.push('invalid value for "email_address", email_address cannot be nil.')
      end

      if @email_address.to_s.length > 50
        invalid_properties.push('invalid value for "email_address", the character length must be smaller than or equal to 50.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 50
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 50.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 50
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 50.')
      end

      if !@job_title.nil? && @job_title.to_s.length > 50
        invalid_properties.push('invalid value for "job_title", the character length must be smaller than or equal to 50.')
      end

      if !@company_name.nil? && @company_name.to_s.length > 50
        invalid_properties.push('invalid value for "company_name", the character length must be smaller than or equal to 50.')
      end

      if !@phone_number.nil? && @phone_number.to_s.length > 25
        invalid_properties.push('invalid value for "phone_number", the character length must be smaller than or equal to 25.')
      end

      if @list_memberships.nil?
        invalid_properties.push('invalid value for "list_memberships", list_memberships cannot be nil.')
      end

      if @list_memberships.length > 50
        invalid_properties.push('invalid value for "list_memberships", number of items must be less than or equal to 50.')
      end

      if @list_memberships.length < 1
        invalid_properties.push('invalid value for "list_memberships", number of items must be greater than or equal to 1.')
      end

      if !@custom_fields.nil? && @custom_fields.length > 50
        invalid_properties.push('invalid value for "custom_fields", number of items must be less than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @email_address.nil?
      return false if @email_address.to_s.length > 50
      return false if !@first_name.nil? && @first_name.to_s.length > 50
      return false if !@last_name.nil? && @last_name.to_s.length > 50
      return false if !@job_title.nil? && @job_title.to_s.length > 50
      return false if !@company_name.nil? && @company_name.to_s.length > 50
      return false if !@phone_number.nil? && @phone_number.to_s.length > 25
      return false if @list_memberships.nil?
      return false if @list_memberships.length > 50
      return false if @list_memberships.length < 1
      return false if !@custom_fields.nil? && @custom_fields.length > 50
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] email_address Value to be assigned
    def email_address=(email_address)
      if email_address.nil?
        fail ArgumentError, 'email_address cannot be nil'
      end

      if email_address.to_s.length > 50
        fail ArgumentError, 'invalid value for "email_address", the character length must be smaller than or equal to 50.'
      end

      @email_address = email_address
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if first_name.nil?
        fail ArgumentError, 'first_name cannot be nil'
      end

      if first_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 50.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 50.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] job_title Value to be assigned
    def job_title=(job_title)
      if job_title.nil?
        fail ArgumentError, 'job_title cannot be nil'
      end

      if job_title.to_s.length > 50
        fail ArgumentError, 'invalid value for "job_title", the character length must be smaller than or equal to 50.'
      end

      @job_title = job_title
    end

    # Custom attribute writer method with validation
    # @param [Object] company_name Value to be assigned
    def company_name=(company_name)
      if company_name.nil?
        fail ArgumentError, 'company_name cannot be nil'
      end

      if company_name.to_s.length > 50
        fail ArgumentError, 'invalid value for "company_name", the character length must be smaller than or equal to 50.'
      end

      @company_name = company_name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if phone_number.nil?
        fail ArgumentError, 'phone_number cannot be nil'
      end

      if phone_number.to_s.length > 25
        fail ArgumentError, 'invalid value for "phone_number", the character length must be smaller than or equal to 25.'
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] list_memberships Value to be assigned
    def list_memberships=(list_memberships)
      if list_memberships.nil?
        fail ArgumentError, 'list_memberships cannot be nil'
      end

      if list_memberships.length > 50
        fail ArgumentError, 'invalid value for "list_memberships", number of items must be less than or equal to 50.'
      end

      if list_memberships.length < 1
        fail ArgumentError, 'invalid value for "list_memberships", number of items must be greater than or equal to 1.'
      end

      @list_memberships = list_memberships
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_fields Value to be assigned
    def custom_fields=(custom_fields)
      if custom_fields.nil?
        fail ArgumentError, 'custom_fields cannot be nil'
      end

      if custom_fields.length > 50
        fail ArgumentError, 'invalid value for "custom_fields", number of items must be less than or equal to 50.'
      end

      @custom_fields = custom_fields
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          email_address == o.email_address &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          job_title == o.job_title &&
          company_name == o.company_name &&
          phone_number == o.phone_number &&
          list_memberships == o.list_memberships &&
          custom_fields == o.custom_fields &&
          anniversary == o.anniversary &&
          birthday_month == o.birthday_month &&
          birthday_day == o.birthday_day &&
          street_address == o.street_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [email_address, first_name, last_name, job_title, company_name, phone_number, list_memberships, custom_fields, anniversary, birthday_month, birthday_day, street_address].hash
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
