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
  class FileObject
    # Identifies the MyLibrary file.
    attr_accessor :id

    # The file name.
    attr_accessor :name

    # The image height.
    attr_accessor :height

    # The image width.
    attr_accessor :width

    # The image size.
    attr_accessor :size

    # The image URL.
    attr_accessor :url

    # The image description.
    attr_accessor :description

    # The image folder
    attr_accessor :folder

    # The application that uploaded this image.
    attr_accessor :source

    # The image format.
    attr_accessor :type

    # THe image status.
    attr_accessor :status

    attr_accessor :thumbnail

    # Boolean indicating if this file is an image.
    attr_accessor :image

    # Identifies a folder in MyLibrary.
    attr_accessor :folder_id

    # The external url for the file.
    attr_accessor :external_url

    # Identifies the time a user last modified the file.
    attr_accessor :modified_date

    # Identifies the time a user originally added the file to MyLibrary.
    attr_accessor :added_date

    # External identifier for the file.
    attr_accessor :external_file_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'height' => :'height',
        :'width' => :'width',
        :'size' => :'size',
        :'url' => :'url',
        :'description' => :'description',
        :'folder' => :'folder',
        :'source' => :'source',
        :'type' => :'type',
        :'status' => :'status',
        :'thumbnail' => :'thumbnail',
        :'image' => :'image',
        :'folder_id' => :'folder_id',
        :'external_url' => :'external_url',
        :'modified_date' => :'modified_date',
        :'added_date' => :'added_date',
        :'external_file_id' => :'external_file_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'height' => :'Integer',
        :'width' => :'Integer',
        :'size' => :'Integer',
        :'url' => :'String',
        :'description' => :'String',
        :'folder' => :'String',
        :'source' => :'String',
        :'type' => :'String',
        :'status' => :'String',
        :'thumbnail' => :'MyLibraryFileCollectionInnerThumbnail',
        :'image' => :'Boolean',
        :'folder_id' => :'Integer',
        :'external_url' => :'String',
        :'modified_date' => :'String',
        :'added_date' => :'String',
        :'external_file_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `ConstantContactClient::FileObject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ConstantContactClient::FileObject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'folder')
        self.folder = attributes[:'folder']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'folder_id')
        self.folder_id = attributes[:'folder_id']
      end

      if attributes.key?(:'external_url')
        self.external_url = attributes[:'external_url']
      end

      if attributes.key?(:'modified_date')
        self.modified_date = attributes[:'modified_date']
      end

      if attributes.key?(:'added_date')
        self.added_date = attributes[:'added_date']
      end

      if attributes.key?(:'external_file_id')
        self.external_file_id = attributes[:'external_file_id']
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
          id == o.id &&
          name == o.name &&
          height == o.height &&
          width == o.width &&
          size == o.size &&
          url == o.url &&
          description == o.description &&
          folder == o.folder &&
          source == o.source &&
          type == o.type &&
          status == o.status &&
          thumbnail == o.thumbnail &&
          image == o.image &&
          folder_id == o.folder_id &&
          external_url == o.external_url &&
          modified_date == o.modified_date &&
          added_date == o.added_date &&
          external_file_id == o.external_file_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, height, width, size, url, description, folder, source, type, status, thumbnail, image, folder_id, external_url, modified_date, added_date, external_file_id].hash
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
