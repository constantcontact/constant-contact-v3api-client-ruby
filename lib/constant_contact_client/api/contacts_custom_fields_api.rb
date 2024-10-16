=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.109
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module ConstantContactClient
  class ContactsCustomFieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # POST (create) a custom_field
    # This POST request adds a new `custom_field` to the user's account. A user can configure up to 100 `custom_fields` in their account.
    # @param update_custom_field_request [UpdateCustomFieldRequest] The JSON payload required to create a new &#x60;custom_field&#x60;
    # @param [Hash] opts the optional parameters
    # @return [GetCustomField200Response]
    def create_custom_fields(update_custom_field_request, opts = {})
      data, _status_code, _headers = create_custom_fields_with_http_info(update_custom_field_request, opts)
      data
    end

    # POST (create) a custom_field
    # This POST request adds a new &#x60;custom_field&#x60; to the user&#39;s account. A user can configure up to 100 &#x60;custom_fields&#x60; in their account.
    # @param update_custom_field_request [UpdateCustomFieldRequest] The JSON payload required to create a new &#x60;custom_field&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCustomField200Response, Integer, Hash)>] GetCustomField200Response data, response status code and response headers
    def create_custom_fields_with_http_info(update_custom_field_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsCustomFieldsApi.create_custom_fields ...'
      end
      # verify the required parameter 'update_custom_field_request' is set
      if @api_client.config.client_side_validation && update_custom_field_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_custom_field_request' when calling ContactsCustomFieldsApi.create_custom_fields"
      end
      # resource path
      local_var_path = '/contact_custom_fields'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_custom_field_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetCustomField200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsCustomFieldsApi.create_custom_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsCustomFieldsApi#create_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DELETE a custom_field
    # This DELETE request deletes a custom_field from the user's account
    # @param custom_field_id [String] Unique ID of the custom_field on which to operate.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_custom_field(custom_field_id, opts = {})
      delete_custom_field_with_http_info(custom_field_id, opts)
      nil
    end

    # DELETE a custom_field
    # This DELETE request deletes a custom_field from the user&#39;s account
    # @param custom_field_id [String] Unique ID of the custom_field on which to operate.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_custom_field_with_http_info(custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsCustomFieldsApi.delete_custom_field ...'
      end
      # verify the required parameter 'custom_field_id' is set
      if @api_client.config.client_side_validation && custom_field_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_field_id' when calling ContactsCustomFieldsApi.delete_custom_field"
      end
      # resource path
      local_var_path = '/contact_custom_fields/{custom_field_id}'.sub('{' + 'custom_field_id' + '}', CGI.escape(custom_field_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsCustomFieldsApi.delete_custom_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsCustomFieldsApi#delete_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET custom_fields Collection
    # This GET request returns all `custom_fields` defined in the user's account. <div class=\"Msg\"><p class=\"note-text\">This method does not currently support filtering results using the custom field update date.</p></div>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Specifies the number of results displayed per page of output, from 1 - 100, default &#x3D; 50. (default to 50)
    # @return [GetAllCustomFields200Response]
    def get_all_custom_fields(opts = {})
      data, _status_code, _headers = get_all_custom_fields_with_http_info(opts)
      data
    end

    # GET custom_fields Collection
    # This GET request returns all &#x60;custom_fields&#x60; defined in the user&#39;s account. &lt;div class&#x3D;\&quot;Msg\&quot;&gt;&lt;p class&#x3D;\&quot;note-text\&quot;&gt;This method does not currently support filtering results using the custom field update date.&lt;/p&gt;&lt;/div&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Specifies the number of results displayed per page of output, from 1 - 100, default &#x3D; 50. (default to 50)
    # @return [Array<(GetAllCustomFields200Response, Integer, Hash)>] GetAllCustomFields200Response data, response status code and response headers
    def get_all_custom_fields_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsCustomFieldsApi.get_all_custom_fields ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 100
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsCustomFieldsApi.get_all_custom_fields, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling ContactsCustomFieldsApi.get_all_custom_fields, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/contact_custom_fields'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAllCustomFields200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsCustomFieldsApi.get_all_custom_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsCustomFieldsApi#get_all_custom_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET a custom_field
    # This GET call retrieves a `custom_field` resource, specified by `custom_field_id`.
    # @param custom_field_id [String] Unique ID of the &#x60;custom_field&#x60; on which to operate.
    # @param [Hash] opts the optional parameters
    # @return [GetCustomField200Response]
    def get_custom_field(custom_field_id, opts = {})
      data, _status_code, _headers = get_custom_field_with_http_info(custom_field_id, opts)
      data
    end

    # GET a custom_field
    # This GET call retrieves a &#x60;custom_field&#x60; resource, specified by &#x60;custom_field_id&#x60;.
    # @param custom_field_id [String] Unique ID of the &#x60;custom_field&#x60; on which to operate.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCustomField200Response, Integer, Hash)>] GetCustomField200Response data, response status code and response headers
    def get_custom_field_with_http_info(custom_field_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsCustomFieldsApi.get_custom_field ...'
      end
      # verify the required parameter 'custom_field_id' is set
      if @api_client.config.client_side_validation && custom_field_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_field_id' when calling ContactsCustomFieldsApi.get_custom_field"
      end
      # resource path
      local_var_path = '/contact_custom_fields/{custom_field_id}'.sub('{' + 'custom_field_id' + '}', CGI.escape(custom_field_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCustomField200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsCustomFieldsApi.get_custom_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsCustomFieldsApi#get_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # PUT (update) a custom_field
    # This PUT request updates an existing `custom_field` object.
    # @param custom_field_id [String] Unique ID of the &#x60;custom_field&#x60; on which to operate.
    # @param update_custom_field_request [UpdateCustomFieldRequest] The JSON payload used to update an existing custom field. Any properties omitted in the PUT request are overwritten with a null value.
    # @param [Hash] opts the optional parameters
    # @return [GetCustomField200Response]
    def update_custom_field(custom_field_id, update_custom_field_request, opts = {})
      data, _status_code, _headers = update_custom_field_with_http_info(custom_field_id, update_custom_field_request, opts)
      data
    end

    # PUT (update) a custom_field
    # This PUT request updates an existing &#x60;custom_field&#x60; object.
    # @param custom_field_id [String] Unique ID of the &#x60;custom_field&#x60; on which to operate.
    # @param update_custom_field_request [UpdateCustomFieldRequest] The JSON payload used to update an existing custom field. Any properties omitted in the PUT request are overwritten with a null value.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetCustomField200Response, Integer, Hash)>] GetCustomField200Response data, response status code and response headers
    def update_custom_field_with_http_info(custom_field_id, update_custom_field_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsCustomFieldsApi.update_custom_field ...'
      end
      # verify the required parameter 'custom_field_id' is set
      if @api_client.config.client_side_validation && custom_field_id.nil?
        fail ArgumentError, "Missing the required parameter 'custom_field_id' when calling ContactsCustomFieldsApi.update_custom_field"
      end
      # verify the required parameter 'update_custom_field_request' is set
      if @api_client.config.client_side_validation && update_custom_field_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_custom_field_request' when calling ContactsCustomFieldsApi.update_custom_field"
      end
      # resource path
      local_var_path = '/contact_custom_fields/{custom_field_id}'.sub('{' + 'custom_field_id' + '}', CGI.escape(custom_field_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_custom_field_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GetCustomField200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsCustomFieldsApi.update_custom_field",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsCustomFieldsApi#update_custom_field\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
