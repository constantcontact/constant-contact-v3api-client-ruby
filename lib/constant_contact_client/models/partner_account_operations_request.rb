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
  # JSON object that contains the fields Constant Contact uses to construct the HTTP request you are sending on behalf of a managed account.
  class PartnerAccountOperationsRequest
    # The API method path for the request you are sending on behalf of a managed child account. This value should be a V3 API URL without the https://api.cc.email/v3 base url and with any path parameter names included. For example: <code>/emails/activities/{campaign_activity_id}</code>.
    attr_accessor :account_operation_url

    # The http method for the request you are sending on behalf of a managed child account.
    attr_accessor :account_operation_method

    # The request payload for the request you are sending on behalf of a managed child account. If you provide a JSON payload using this parameter, make sure that the JSON is string escaped.
    attr_accessor :account_operation_payload

    # An array containing the query parameters for the request you are sending on behalf of a managed child account.
    attr_accessor :account_operation_query_parameters

    # An array containing the path parameters for the request you are sending on behalf of a managed child account.
    attr_accessor :account_operation_path_parameters

    # An array containing the headers for the request you are sending on behalf of a managed child account.
    attr_accessor :account_operation_headers

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_operation_url' => :'account_operation_url',
        :'account_operation_method' => :'account_operation_method',
        :'account_operation_payload' => :'account_operation_payload',
        :'account_operation_query_parameters' => :'account_operation_query_parameters',
        :'account_operation_path_parameters' => :'account_operation_path_parameters',
        :'account_operation_headers' => :'account_operation_headers'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_operation_url' => :'String',
        :'account_operation_method' => :'String',
        :'account_operation_payload' => :'String',
        :'account_operation_query_parameters' => :'Array<PartnerAccountOperationsRequestAccountOperationQueryParametersInner>',
        :'account_operation_path_parameters' => :'Array<PartnerAccountOperationsRequestAccountOperationPathParametersInner>',
        :'account_operation_headers' => :'Array<PartnerAccountOperationsRequestAccountOperationHeadersInner>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::PartnerAccountOperationsRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::PartnerAccountOperationsRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_operation_url')
        self.account_operation_url = attributes[:'account_operation_url']
      else
        self.account_operation_url = nil
      end

      if attributes.key?(:'account_operation_method')
        self.account_operation_method = attributes[:'account_operation_method']
      else
        self.account_operation_method = nil
      end

      if attributes.key?(:'account_operation_payload')
        self.account_operation_payload = attributes[:'account_operation_payload']
      end

      if attributes.key?(:'account_operation_query_parameters')
        if (value = attributes[:'account_operation_query_parameters']).is_a?(Array)
          self.account_operation_query_parameters = value
        end
      end

      if attributes.key?(:'account_operation_path_parameters')
        if (value = attributes[:'account_operation_path_parameters']).is_a?(Array)
          self.account_operation_path_parameters = value
        end
      end

      if attributes.key?(:'account_operation_headers')
        if (value = attributes[:'account_operation_headers']).is_a?(Array)
          self.account_operation_headers = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @account_operation_url.nil?
        invalid_properties.push('invalid value for "account_operation_url", account_operation_url cannot be nil.')
      end

      if @account_operation_method.nil?
        invalid_properties.push('invalid value for "account_operation_method", account_operation_method cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @account_operation_url.nil?
      return false if @account_operation_method.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_operation_url == o.account_operation_url &&
          account_operation_method == o.account_operation_method &&
          account_operation_payload == o.account_operation_payload &&
          account_operation_query_parameters == o.account_operation_query_parameters &&
          account_operation_path_parameters == o.account_operation_path_parameters &&
          account_operation_headers == o.account_operation_headers
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_operation_url, account_operation_method, account_operation_payload, account_operation_query_parameters, account_operation_path_parameters, account_operation_headers].hash
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
