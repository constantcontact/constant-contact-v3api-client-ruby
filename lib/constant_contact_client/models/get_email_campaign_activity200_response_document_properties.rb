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
  # An object that contains optional properties for legacy format type emails (<code>format_type</code> 1 and 2). If you attempt to add a property that does apply to the email <code>format_type</code>, the API will ignore the property.
  class GetEmailCampaignActivity200ResponseDocumentProperties
    # Contains style sheet elements for XHTML letter format emails. This property applies only to <code>format_type</code> 1.
    attr_accessor :style_content

    # Email message format. Valid values are <code>HTML</code> and <code>XHTML</code>. By default, the value is <code>HTML</code>. For more information, see the <a href=\"http://www.constantcontact.com/display_media.jsp?id=87\" target=\"_blank\">Advanced Editor User's Guide</a>. This property applies only to <code>format_type</code> 1. You cannot change this property after you create an email. 
    attr_accessor :letter_format

    # The greeting used in the email message. This property applies only to <code>format_type</code> 1.
    attr_accessor :greeting_salutation

    # The type of name the campaign uses to greet the contact. Valid values are <code>F</code> (First Name), <code>L</code> (Last Name), <code>B</code> (First and Last Name), or <code>N</code> (No greeting). By default, the value is <code>N</code>. This property applies only to <code>format_type</code> 1.
    attr_accessor :greeting_name_type

    # A fallback text string the campaign uses to greet the contact when the <code>greeting_name_type</code> is not available or set to <code>N</code>. This property applies only to <code>format_type</code> 1.
    attr_accessor :greeting_secondary

    # If <code>true</code>, the email footer includes a link for subscribing to the list. If <code>false</code>, the message footer does not include a link for subscribing to the list. By default, the value is <code>false</code>. This property applies only to <code>format_type</code> 1. 
    attr_accessor :subscribe_link_enabled

    # The text displayed as the name for the subscribe link in the email footer. This property applies only to <code>format_type</code> 1.
    attr_accessor :subscribe_link_name

    # Contains the text content that Constant Contact displays to contacts when their email client cannot display HTML email. If you do not specify text content, Constant Contact displays \"Greetings!\" as the text content. This property applies only to <code>format_type</code> 1. 
    attr_accessor :text_content

    # If <code>true</code>, Constant Contact displays your <code>permission_reminder</code> message to contacts at top of the email. If <code>false</code>, Constant Contact does not display the message. By default, the value is <code>false</code>. This property applies to <code>format_type</code> 1 and 2. 
    attr_accessor :permission_reminder_enabled

    # The message text Constant Contact displays at the top of the email message to remind users that they are subscribed to an email list. This property applies to <code>format_type</code> 1 and 2.
    attr_accessor :permission_reminder

    # If <code>true</code>, Constant Contact displays the view as web page email message. If <code>false</code> Constant Contact does not display the message. By default, the value is <code>false</code>. This property applies to <code>format_type</code> 1 and 2. 
    attr_accessor :view_as_webpage_enabled

    # The text Constant Contact displays before the view as web page link at the top of the email. This property applies to <code>format_type</code> 1 and 2.
    attr_accessor :view_as_webpage_text

    # The name of the link that users can click to view the email as a web page. This property applies to <code>format_type</code> 1 and 2.
    attr_accessor :view_as_webpage_link_name

    # If <code>true</code>, when the user forwards an email message the footer includes a link for subscribing to the list. If <code>false</code>, when a user forwards an email message the footer does not include a link for subscribing to the list. By default, the value is <code>false</code>. This property applies to <code>format_type</code> 1 and 2. 
    attr_accessor :forward_email_link_enabled

    # The text displayed as the name for the forward email link in the footer when a user forwards an email. This property applies to <code>format_type</code> 1 and 2.
    attr_accessor :forward_email_link_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'style_content' => :'style_content',
        :'letter_format' => :'letter_format',
        :'greeting_salutation' => :'greeting_salutation',
        :'greeting_name_type' => :'greeting_name_type',
        :'greeting_secondary' => :'greeting_secondary',
        :'subscribe_link_enabled' => :'subscribe_link_enabled',
        :'subscribe_link_name' => :'subscribe_link_name',
        :'text_content' => :'text_content',
        :'permission_reminder_enabled' => :'permission_reminder_enabled',
        :'permission_reminder' => :'permission_reminder',
        :'view_as_webpage_enabled' => :'view_as_webpage_enabled',
        :'view_as_webpage_text' => :'view_as_webpage_text',
        :'view_as_webpage_link_name' => :'view_as_webpage_link_name',
        :'forward_email_link_enabled' => :'forward_email_link_enabled',
        :'forward_email_link_name' => :'forward_email_link_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'style_content' => :'String',
        :'letter_format' => :'String',
        :'greeting_salutation' => :'String',
        :'greeting_name_type' => :'String',
        :'greeting_secondary' => :'String',
        :'subscribe_link_enabled' => :'String',
        :'subscribe_link_name' => :'String',
        :'text_content' => :'String',
        :'permission_reminder_enabled' => :'String',
        :'permission_reminder' => :'String',
        :'view_as_webpage_enabled' => :'String',
        :'view_as_webpage_text' => :'String',
        :'view_as_webpage_link_name' => :'String',
        :'forward_email_link_enabled' => :'String',
        :'forward_email_link_name' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetEmailCampaignActivity200ResponseDocumentProperties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetEmailCampaignActivity200ResponseDocumentProperties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'style_content')
        self.style_content = attributes[:'style_content']
      end

      if attributes.key?(:'letter_format')
        self.letter_format = attributes[:'letter_format']
      else
        self.letter_format = 'HTML'
      end

      if attributes.key?(:'greeting_salutation')
        self.greeting_salutation = attributes[:'greeting_salutation']
      end

      if attributes.key?(:'greeting_name_type')
        self.greeting_name_type = attributes[:'greeting_name_type']
      else
        self.greeting_name_type = 'N'
      end

      if attributes.key?(:'greeting_secondary')
        self.greeting_secondary = attributes[:'greeting_secondary']
      end

      if attributes.key?(:'subscribe_link_enabled')
        self.subscribe_link_enabled = attributes[:'subscribe_link_enabled']
      else
        self.subscribe_link_enabled = 'false'
      end

      if attributes.key?(:'subscribe_link_name')
        self.subscribe_link_name = attributes[:'subscribe_link_name']
      end

      if attributes.key?(:'text_content')
        self.text_content = attributes[:'text_content']
      end

      if attributes.key?(:'permission_reminder_enabled')
        self.permission_reminder_enabled = attributes[:'permission_reminder_enabled']
      else
        self.permission_reminder_enabled = 'false'
      end

      if attributes.key?(:'permission_reminder')
        self.permission_reminder = attributes[:'permission_reminder']
      end

      if attributes.key?(:'view_as_webpage_enabled')
        self.view_as_webpage_enabled = attributes[:'view_as_webpage_enabled']
      else
        self.view_as_webpage_enabled = 'false'
      end

      if attributes.key?(:'view_as_webpage_text')
        self.view_as_webpage_text = attributes[:'view_as_webpage_text']
      end

      if attributes.key?(:'view_as_webpage_link_name')
        self.view_as_webpage_link_name = attributes[:'view_as_webpage_link_name']
      end

      if attributes.key?(:'forward_email_link_enabled')
        self.forward_email_link_enabled = attributes[:'forward_email_link_enabled']
      else
        self.forward_email_link_enabled = 'false'
      end

      if attributes.key?(:'forward_email_link_name')
        self.forward_email_link_name = attributes[:'forward_email_link_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@style_content.nil? && @style_content.to_s.length > 150000
        invalid_properties.push('invalid value for "style_content", the character length must be smaller than or equal to 150000.')
      end

      if !@greeting_salutation.nil? && @greeting_salutation.to_s.length > 50
        invalid_properties.push('invalid value for "greeting_salutation", the character length must be smaller than or equal to 50.')
      end

      if !@greeting_secondary.nil? && @greeting_secondary.to_s.length > 1500
        invalid_properties.push('invalid value for "greeting_secondary", the character length must be smaller than or equal to 1500.')
      end

      if !@subscribe_link_name.nil? && @subscribe_link_name.to_s.length > 80
        invalid_properties.push('invalid value for "subscribe_link_name", the character length must be smaller than or equal to 80.')
      end

      if !@text_content.nil? && @text_content.to_s.length > 150000
        invalid_properties.push('invalid value for "text_content", the character length must be smaller than or equal to 150000.')
      end

      if !@permission_reminder.nil? && @permission_reminder.to_s.length > 1500
        invalid_properties.push('invalid value for "permission_reminder", the character length must be smaller than or equal to 1500.')
      end

      if !@view_as_webpage_text.nil? && @view_as_webpage_text.to_s.length > 50
        invalid_properties.push('invalid value for "view_as_webpage_text", the character length must be smaller than or equal to 50.')
      end

      if !@forward_email_link_name.nil? && @forward_email_link_name.to_s.length > 80
        invalid_properties.push('invalid value for "forward_email_link_name", the character length must be smaller than or equal to 80.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if !@style_content.nil? && @style_content.to_s.length > 150000
      return false if !@greeting_salutation.nil? && @greeting_salutation.to_s.length > 50
      return false if !@greeting_secondary.nil? && @greeting_secondary.to_s.length > 1500
      return false if !@subscribe_link_name.nil? && @subscribe_link_name.to_s.length > 80
      return false if !@text_content.nil? && @text_content.to_s.length > 150000
      return false if !@permission_reminder.nil? && @permission_reminder.to_s.length > 1500
      return false if !@view_as_webpage_text.nil? && @view_as_webpage_text.to_s.length > 50
      return false if !@forward_email_link_name.nil? && @forward_email_link_name.to_s.length > 80
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] style_content Value to be assigned
    def style_content=(style_content)
      if style_content.nil?
        fail ArgumentError, 'style_content cannot be nil'
      end

      if style_content.to_s.length > 150000
        fail ArgumentError, 'invalid value for "style_content", the character length must be smaller than or equal to 150000.'
      end

      @style_content = style_content
    end

    # Custom attribute writer method with validation
    # @param [Object] greeting_salutation Value to be assigned
    def greeting_salutation=(greeting_salutation)
      if greeting_salutation.nil?
        fail ArgumentError, 'greeting_salutation cannot be nil'
      end

      if greeting_salutation.to_s.length > 50
        fail ArgumentError, 'invalid value for "greeting_salutation", the character length must be smaller than or equal to 50.'
      end

      @greeting_salutation = greeting_salutation
    end

    # Custom attribute writer method with validation
    # @param [Object] greeting_secondary Value to be assigned
    def greeting_secondary=(greeting_secondary)
      if greeting_secondary.nil?
        fail ArgumentError, 'greeting_secondary cannot be nil'
      end

      if greeting_secondary.to_s.length > 1500
        fail ArgumentError, 'invalid value for "greeting_secondary", the character length must be smaller than or equal to 1500.'
      end

      @greeting_secondary = greeting_secondary
    end

    # Custom attribute writer method with validation
    # @param [Object] subscribe_link_name Value to be assigned
    def subscribe_link_name=(subscribe_link_name)
      if subscribe_link_name.nil?
        fail ArgumentError, 'subscribe_link_name cannot be nil'
      end

      if subscribe_link_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "subscribe_link_name", the character length must be smaller than or equal to 80.'
      end

      @subscribe_link_name = subscribe_link_name
    end

    # Custom attribute writer method with validation
    # @param [Object] text_content Value to be assigned
    def text_content=(text_content)
      if text_content.nil?
        fail ArgumentError, 'text_content cannot be nil'
      end

      if text_content.to_s.length > 150000
        fail ArgumentError, 'invalid value for "text_content", the character length must be smaller than or equal to 150000.'
      end

      @text_content = text_content
    end

    # Custom attribute writer method with validation
    # @param [Object] permission_reminder Value to be assigned
    def permission_reminder=(permission_reminder)
      if permission_reminder.nil?
        fail ArgumentError, 'permission_reminder cannot be nil'
      end

      if permission_reminder.to_s.length > 1500
        fail ArgumentError, 'invalid value for "permission_reminder", the character length must be smaller than or equal to 1500.'
      end

      @permission_reminder = permission_reminder
    end

    # Custom attribute writer method with validation
    # @param [Object] view_as_webpage_text Value to be assigned
    def view_as_webpage_text=(view_as_webpage_text)
      if view_as_webpage_text.nil?
        fail ArgumentError, 'view_as_webpage_text cannot be nil'
      end

      if view_as_webpage_text.to_s.length > 50
        fail ArgumentError, 'invalid value for "view_as_webpage_text", the character length must be smaller than or equal to 50.'
      end

      @view_as_webpage_text = view_as_webpage_text
    end

    # Custom attribute writer method with validation
    # @param [Object] forward_email_link_name Value to be assigned
    def forward_email_link_name=(forward_email_link_name)
      if forward_email_link_name.nil?
        fail ArgumentError, 'forward_email_link_name cannot be nil'
      end

      if forward_email_link_name.to_s.length > 80
        fail ArgumentError, 'invalid value for "forward_email_link_name", the character length must be smaller than or equal to 80.'
      end

      @forward_email_link_name = forward_email_link_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          style_content == o.style_content &&
          letter_format == o.letter_format &&
          greeting_salutation == o.greeting_salutation &&
          greeting_name_type == o.greeting_name_type &&
          greeting_secondary == o.greeting_secondary &&
          subscribe_link_enabled == o.subscribe_link_enabled &&
          subscribe_link_name == o.subscribe_link_name &&
          text_content == o.text_content &&
          permission_reminder_enabled == o.permission_reminder_enabled &&
          permission_reminder == o.permission_reminder &&
          view_as_webpage_enabled == o.view_as_webpage_enabled &&
          view_as_webpage_text == o.view_as_webpage_text &&
          view_as_webpage_link_name == o.view_as_webpage_link_name &&
          forward_email_link_enabled == o.forward_email_link_enabled &&
          forward_email_link_name == o.forward_email_link_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [style_content, letter_format, greeting_salutation, greeting_name_type, greeting_secondary, subscribe_link_enabled, subscribe_link_name, text_content, permission_reminder_enabled, permission_reminder, view_as_webpage_enabled, view_as_webpage_text, view_as_webpage_link_name, forward_email_link_enabled, forward_email_link_name].hash
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
