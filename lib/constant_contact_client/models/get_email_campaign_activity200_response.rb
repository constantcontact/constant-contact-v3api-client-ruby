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
  class GetEmailCampaignActivity200Response
    # Identifies a campaign activity in the V3 API.
    attr_accessor :campaign_activity_id

    # Identifies a campaign in the V3 API.
    attr_accessor :campaign_id

    # The purpose of the individual campaign activity in the larger email campaign effort. Valid values are: <ul>   <li>primary_email — The main email marketing campaign that you send to contacts. The <code>primary_email</code> contains the complete email content.</li>   <li>permalink — A permanent link to a web accessible version of the <code>primary_email</code> content without any personalized email information. For example, permalinks do not contain any of the contact details that you add to the <code>primary_email</code> email content. </li>   <li>resend — An email campaign that you resend to contacts that did not open the email campaign.</li> </ul> Constant Contact creates a <code>primary_email</code> and a <code>permalink</code> role campaign activity when you create an email campaign. 
    attr_accessor :role

    # The contacts that Constant Contact sends the email campaign activity to as an array of contact <code>list_id</code> values. You cannot use contact lists and segments at the same time in an email campaign activity.
    attr_accessor :contact_list_ids

    # The contacts that Constant Contact sends the email campaign activity to as an array containing a single <code>segment_id</code> value. Only <code>format_type</code> 3, 4, and 5 email campaign activities support segments. You cannot use contact lists and segments at the same time in an email campaign activity.
    attr_accessor :segment_ids

    # The current status of the email campaign activity. Valid values are: <ul>   <li>DRAFT — An email campaign activity that you have created but have not sent to contacts.</li>   <li>SCHEDULED — An email campaign activity that you have scheduled for Constant Contact to send to contacts.</li>   <li>EXECUTING — An email campaign activity Constant Contact is currently sending to contacts. Email campaign activities are only in this status briefly.</li>   <li>DONE — An email campaign activity that you successfully sent to contacts.</li>   <li>ERROR — An email campaign activity that encountered an error.</li>   <li>REMOVED — An email campaign that a user deleted. Users can view and restore deleted emails through the UI.</li> </ul> 
    attr_accessor :current_status

    # Identifies the type of email format. Valid values are: <ul>   <li>1 - A legacy custom code email created using the V2 API, the V3 API, or the legacy UI HTML editor.</li>   <li>2 - An email created using the second generation email editor UI.</li>   <li>3 - An email created using the third generation email editor UI. This email editor features an improved drag and drop UI and mobile responsiveness.</li>   <li>4 - An email created using the fourth generation email editor UI.</li>   <li>5 - A custom code email created using the V3 API or the new UI HTML editor.</li> </ul> 
    attr_accessor :format_type

    # The email \"From Email\" field for the email campaign activity. You must use a confirmed Constant Contact account email address. Make a GET call to <code>/account/emails</code> to return a collection of account emails and their confirmation status.
    attr_accessor :from_email

    # The email \"From Name\" field for the email campaign activity.
    attr_accessor :from_name

    # The email \"Reply To Email\" field for the email campaign activity. You must use a confirmed Constant Contact account email address. Make a GET call to <code>/account/emails</code> to return a collection of account emails and their confirmation status.
    attr_accessor :reply_to_email

    # The email \"Subject\" field for the email campaign activity.
    attr_accessor :subject

    # The HTML or XHTML content for the email campaign activity. Only <code>format_type</code> 1 and 5 (legacy custom code emails or modern custom code emails) can contain <code>html_content</code>.
    attr_accessor :html_content

    # Identifies the email layout and design template that the email campaign activity is using as a base.
    attr_accessor :template_id

    # The permanent link to a web accessible version of the email campaign content without any personalized email information. The permalink URL becomes accessible after you send an email campaign to contacts.
    attr_accessor :permalink_url

    # The email preheader for the email campaign activity. Only <code>format_type</code> 3, 4, and 5 email campaign activities use the preheader property.
    attr_accessor :preheader

    attr_accessor :physical_address_in_footer

    attr_accessor :document_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'campaign_activity_id' => :'campaign_activity_id',
        :'campaign_id' => :'campaign_id',
        :'role' => :'role',
        :'contact_list_ids' => :'contact_list_ids',
        :'segment_ids' => :'segment_ids',
        :'current_status' => :'current_status',
        :'format_type' => :'format_type',
        :'from_email' => :'from_email',
        :'from_name' => :'from_name',
        :'reply_to_email' => :'reply_to_email',
        :'subject' => :'subject',
        :'html_content' => :'html_content',
        :'template_id' => :'template_id',
        :'permalink_url' => :'permalink_url',
        :'preheader' => :'preheader',
        :'physical_address_in_footer' => :'physical_address_in_footer',
        :'document_properties' => :'document_properties'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'campaign_activity_id' => :'String',
        :'campaign_id' => :'String',
        :'role' => :'String',
        :'contact_list_ids' => :'Array<String>',
        :'segment_ids' => :'Array<Integer>',
        :'current_status' => :'String',
        :'format_type' => :'Integer',
        :'from_email' => :'String',
        :'from_name' => :'String',
        :'reply_to_email' => :'String',
        :'subject' => :'String',
        :'html_content' => :'String',
        :'template_id' => :'String',
        :'permalink_url' => :'String',
        :'preheader' => :'String',
        :'physical_address_in_footer' => :'GetEmailCampaignActivity200ResponsePhysicalAddressInFooter',
        :'document_properties' => :'GetEmailCampaignActivity200ResponseDocumentProperties'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::GetEmailCampaignActivity200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::GetEmailCampaignActivity200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'campaign_activity_id')
        self.campaign_activity_id = attributes[:'campaign_activity_id']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.key?(:'contact_list_ids')
        if (value = attributes[:'contact_list_ids']).is_a?(Array)
          self.contact_list_ids = value
        end
      end

      if attributes.key?(:'segment_ids')
        if (value = attributes[:'segment_ids']).is_a?(Array)
          self.segment_ids = value
        end
      end

      if attributes.key?(:'current_status')
        self.current_status = attributes[:'current_status']
      end

      if attributes.key?(:'format_type')
        self.format_type = attributes[:'format_type']
      end

      if attributes.key?(:'from_email')
        self.from_email = attributes[:'from_email']
      else
        self.from_email = nil
      end

      if attributes.key?(:'from_name')
        self.from_name = attributes[:'from_name']
      else
        self.from_name = nil
      end

      if attributes.key?(:'reply_to_email')
        self.reply_to_email = attributes[:'reply_to_email']
      else
        self.reply_to_email = nil
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      else
        self.subject = nil
      end

      if attributes.key?(:'html_content')
        self.html_content = attributes[:'html_content']
      end

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      end

      if attributes.key?(:'permalink_url')
        self.permalink_url = attributes[:'permalink_url']
      end

      if attributes.key?(:'preheader')
        self.preheader = attributes[:'preheader']
      end

      if attributes.key?(:'physical_address_in_footer')
        self.physical_address_in_footer = attributes[:'physical_address_in_footer']
      end

      if attributes.key?(:'document_properties')
        self.document_properties = attributes[:'document_properties']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @from_email.nil?
        invalid_properties.push('invalid value for "from_email", from_email cannot be nil.')
      end

      if @from_name.nil?
        invalid_properties.push('invalid value for "from_name", from_name cannot be nil.')
      end

      if @reply_to_email.nil?
        invalid_properties.push('invalid value for "reply_to_email", reply_to_email cannot be nil.')
      end

      if @subject.nil?
        invalid_properties.push('invalid value for "subject", subject cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @from_email.nil?
      return false if @from_name.nil?
      return false if @reply_to_email.nil?
      return false if @subject.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          campaign_activity_id == o.campaign_activity_id &&
          campaign_id == o.campaign_id &&
          role == o.role &&
          contact_list_ids == o.contact_list_ids &&
          segment_ids == o.segment_ids &&
          current_status == o.current_status &&
          format_type == o.format_type &&
          from_email == o.from_email &&
          from_name == o.from_name &&
          reply_to_email == o.reply_to_email &&
          subject == o.subject &&
          html_content == o.html_content &&
          template_id == o.template_id &&
          permalink_url == o.permalink_url &&
          preheader == o.preheader &&
          physical_address_in_footer == o.physical_address_in_footer &&
          document_properties == o.document_properties
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [campaign_activity_id, campaign_id, role, contact_list_ids, segment_ids, current_status, format_type, from_email, from_name, reply_to_email, subject, html_content, template_id, permalink_url, preheader, physical_address_in_footer, document_properties].hash
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
