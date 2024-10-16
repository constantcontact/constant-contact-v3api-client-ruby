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
  class AccountServicesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # POST Add an Account Email Address
    # Use this method to add a new email address to a Constant Contact account. If the email address you are adding already exists in the account the API will return a 409 conflict error.   When you add a new email address to an account, Constant Contact automatically sends an email to that address with a link to confirm it. After a user clicks that link, the account email status changes from `UNCONFIRMED` to `CONFIRMED`. You can use confirmed account email addresses in the email campaign `from_email` and `reply_to_email` headers. For more use case information, see [Add an Account Email Address](/api_guide/account_post_emails.html) in the API guide.  
    # @param add_account_email_address_request [AddAccountEmailAddressRequest] A JSON request payload containing the new email address you want to add to the Constant Contact account.
    # @param [Hash] opts the optional parameters
    # @return [AddAccountEmailAddress201Response]
    def add_account_email_address(add_account_email_address_request, opts = {})
      data, _status_code, _headers = add_account_email_address_with_http_info(add_account_email_address_request, opts)
      data
    end

    # POST Add an Account Email Address
    # Use this method to add a new email address to a Constant Contact account. If the email address you are adding already exists in the account the API will return a 409 conflict error.   When you add a new email address to an account, Constant Contact automatically sends an email to that address with a link to confirm it. After a user clicks that link, the account email status changes from &#x60;UNCONFIRMED&#x60; to &#x60;CONFIRMED&#x60;. You can use confirmed account email addresses in the email campaign &#x60;from_email&#x60; and &#x60;reply_to_email&#x60; headers. For more use case information, see [Add an Account Email Address](/api_guide/account_post_emails.html) in the API guide.  
    # @param add_account_email_address_request [AddAccountEmailAddressRequest] A JSON request payload containing the new email address you want to add to the Constant Contact account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddAccountEmailAddress201Response, Integer, Hash)>] AddAccountEmailAddress201Response data, response status code and response headers
    def add_account_email_address_with_http_info(add_account_email_address_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.add_account_email_address ...'
      end
      # verify the required parameter 'add_account_email_address_request' is set
      if @api_client.config.client_side_validation && add_account_email_address_request.nil?
        fail ArgumentError, "Missing the required parameter 'add_account_email_address_request' when calling AccountServicesApi.add_account_email_address"
      end
      # resource path
      local_var_path = '/account/emails'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(add_account_email_address_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AddAccountEmailAddress201Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.add_account_email_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#add_account_email_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # POST the Physical Address for the Account
    # Use this method to add the address where the account's organization physically resides. The physical address is required to send emails and displays on the footer of every email that is sent from the account. The country (<code>country_code</code>) where the account organization resides determines whether you use the <code>state_code</code> to specify United States (<code>US</code>) and Canada (<code>CA</code>) addresses, or use the <code>state_name</code> to specify all other countries.
    # @param get_account_details200_response_physical_address [GetAccountDetails200ResponsePhysicalAddress] Include all &#x60;AccountPhysicalAddress&#x60; properties required for the specified &#x60;country_code&#x60; and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address.
    # @param [Hash] opts the optional parameters
    # @return [GetAccountDetails200ResponsePhysicalAddress]
    def add_physical_address(get_account_details200_response_physical_address, opts = {})
      data, _status_code, _headers = add_physical_address_with_http_info(get_account_details200_response_physical_address, opts)
      data
    end

    # POST the Physical Address for the Account
    # Use this method to add the address where the account&#39;s organization physically resides. The physical address is required to send emails and displays on the footer of every email that is sent from the account. The country (&lt;code&gt;country_code&lt;/code&gt;) where the account organization resides determines whether you use the &lt;code&gt;state_code&lt;/code&gt; to specify United States (&lt;code&gt;US&lt;/code&gt;) and Canada (&lt;code&gt;CA&lt;/code&gt;) addresses, or use the &lt;code&gt;state_name&lt;/code&gt; to specify all other countries.
    # @param get_account_details200_response_physical_address [GetAccountDetails200ResponsePhysicalAddress] Include all &#x60;AccountPhysicalAddress&#x60; properties required for the specified &#x60;country_code&#x60; and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountDetails200ResponsePhysicalAddress, Integer, Hash)>] GetAccountDetails200ResponsePhysicalAddress data, response status code and response headers
    def add_physical_address_with_http_info(get_account_details200_response_physical_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.add_physical_address ...'
      end
      # verify the required parameter 'get_account_details200_response_physical_address' is set
      if @api_client.config.client_side_validation && get_account_details200_response_physical_address.nil?
        fail ArgumentError, "Missing the required parameter 'get_account_details200_response_physical_address' when calling AccountServicesApi.add_physical_address"
      end
      # resource path
      local_var_path = '/account/summary/physical_address'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_account_details200_response_physical_address)

      # return_type
      return_type = opts[:debug_return_type] || 'GetAccountDetails200ResponsePhysicalAddress'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.add_physical_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#add_physical_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET a Summary of Account Details
    # Get account related details for a Constant Contact user account. Use the `extra_fields` query parameter to include the `company_logo` and/or `physical_address` details in the response body. For more details, see [Get Account Summary Details](/api_guide/account_details_get.html).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :extra_fields Use the &#x60;extra_fields&#x60; query parameter to include the &#x60;physical_address&#x60; and/or &#x60;company_logo&#x60; details in the response body. Use a comma separated list to include both (physical_address, company logo).
    # @return [GetAccountDetails200Response]
    def get_account_details(opts = {})
      data, _status_code, _headers = get_account_details_with_http_info(opts)
      data
    end

    # GET a Summary of Account Details
    # Get account related details for a Constant Contact user account. Use the &#x60;extra_fields&#x60; query parameter to include the &#x60;company_logo&#x60; and/or &#x60;physical_address&#x60; details in the response body. For more details, see [Get Account Summary Details](/api_guide/account_details_get.html).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :extra_fields Use the &#x60;extra_fields&#x60; query parameter to include the &#x60;physical_address&#x60; and/or &#x60;company_logo&#x60; details in the response body. Use a comma separated list to include both (physical_address, company logo).
    # @return [Array<(GetAccountDetails200Response, Integer, Hash)>] GetAccountDetails200Response data, response status code and response headers
    def get_account_details_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.get_account_details ...'
      end
      allowable_values = ["physical_address", "company_logo"]
      if @api_client.config.client_side_validation && opts[:'extra_fields'] && !allowable_values.include?(opts[:'extra_fields'])
        fail ArgumentError, "invalid value for \"extra_fields\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/account/summary'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'extra_fields'] = opts[:'extra_fields'] if !opts[:'extra_fields'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAccountDetails200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.get_account_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#get_account_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET the Physical Address for the Account
    # Use this method to get the address where the account's organization physically resides. The physical address is required to send emails and displays on the footer of every email that is sent from the account.
    # @param [Hash] opts the optional parameters
    # @return [GetAccountDetails200ResponsePhysicalAddress]
    def get_account_physical_address(opts = {})
      data, _status_code, _headers = get_account_physical_address_with_http_info(opts)
      data
    end

    # GET the Physical Address for the Account
    # Use this method to get the address where the account&#39;s organization physically resides. The physical address is required to send emails and displays on the footer of every email that is sent from the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountDetails200ResponsePhysicalAddress, Integer, Hash)>] GetAccountDetails200ResponsePhysicalAddress data, response status code and response headers
    def get_account_physical_address_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.get_account_physical_address ...'
      end
      # resource path
      local_var_path = '/account/summary/physical_address'

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
      return_type = opts[:debug_return_type] || 'GetAccountDetails200ResponsePhysicalAddress'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.get_account_physical_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#get_account_physical_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET a Collection of Account Email Addresses
    # Use this method to return a collection of email addresses for the account associated with your access token. When you <a href=\"https://v3.developer.constantcontact.com/api_reference/index.html#!/Email_Campaigns/createEmailCampaignUsingPOST\" target=\"_blank\">Create an Email Campaign<a/>, you must use an account email address with a `CONFIRMED` status in the email campaign `from_email` and `reply_to_email` headers.         Use the query parameters to filter results. You can filter using `confirm_status`, `role_code`, or `email_address`. For example, searching with `confirm_status=CONFIRMED` returns all confirmed email addresses in the account. This method only supports one query parameter at a time. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :confirm_status Use the &#x60;confirm_status&#x60; query parameter to search for account emails using the email status. Possible values are &#x60;CONFIRMED&#x60; or &#x60;UNCONFIRMED&#x60;. You can also abbreviate the values of this query parameter and use &#x60;C&#x60; or &#x60;U&#x60;. 
    # @option opts [String] :role_code Use the &#x60;role_code&#x60; query parameter to search for account emails that have a specific role. Each each email address in an account can have multiple roles or no role. Possible values are &#x60;CONTACT&#x60;, &#x60;BILLING&#x60;, &#x60;REPLY_TO&#x60;, &#x60;JOURNALING&#x60;, or &#x60;OTHER&#x60;. You can also abbreviate the value of this query parameter and use &#x60;C&#x60;,&#x60;B&#x60;,&#x60;R&#x60;,&#x60;J&#x60;, or &#x60;O&#x60;.
    # @option opts [String] :email_address Use the &#x60;email_address&#x60; query parameter to search for a specific account email address.
    # @return [Array<GetAllAccountEmailAddresses200ResponseInner>]
    def get_all_account_email_addresses(opts = {})
      data, _status_code, _headers = get_all_account_email_addresses_with_http_info(opts)
      data
    end

    # GET a Collection of Account Email Addresses
    # Use this method to return a collection of email addresses for the account associated with your access token. When you &lt;a href&#x3D;\&quot;https://v3.developer.constantcontact.com/api_reference/index.html#!/Email_Campaigns/createEmailCampaignUsingPOST\&quot; target&#x3D;\&quot;_blank\&quot;&gt;Create an Email Campaign&lt;a/&gt;, you must use an account email address with a &#x60;CONFIRMED&#x60; status in the email campaign &#x60;from_email&#x60; and &#x60;reply_to_email&#x60; headers.         Use the query parameters to filter results. You can filter using &#x60;confirm_status&#x60;, &#x60;role_code&#x60;, or &#x60;email_address&#x60;. For example, searching with &#x60;confirm_status&#x3D;CONFIRMED&#x60; returns all confirmed email addresses in the account. This method only supports one query parameter at a time. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :confirm_status Use the &#x60;confirm_status&#x60; query parameter to search for account emails using the email status. Possible values are &#x60;CONFIRMED&#x60; or &#x60;UNCONFIRMED&#x60;. You can also abbreviate the values of this query parameter and use &#x60;C&#x60; or &#x60;U&#x60;. 
    # @option opts [String] :role_code Use the &#x60;role_code&#x60; query parameter to search for account emails that have a specific role. Each each email address in an account can have multiple roles or no role. Possible values are &#x60;CONTACT&#x60;, &#x60;BILLING&#x60;, &#x60;REPLY_TO&#x60;, &#x60;JOURNALING&#x60;, or &#x60;OTHER&#x60;. You can also abbreviate the value of this query parameter and use &#x60;C&#x60;,&#x60;B&#x60;,&#x60;R&#x60;,&#x60;J&#x60;, or &#x60;O&#x60;.
    # @option opts [String] :email_address Use the &#x60;email_address&#x60; query parameter to search for a specific account email address.
    # @return [Array<(Array<GetAllAccountEmailAddresses200ResponseInner>, Integer, Hash)>] Array<GetAllAccountEmailAddresses200ResponseInner> data, response status code and response headers
    def get_all_account_email_addresses_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.get_all_account_email_addresses ...'
      end
      allowable_values = ["CONFIRMED", "C", "UNCONFIRMED", "U"]
      if @api_client.config.client_side_validation && opts[:'confirm_status'] && !allowable_values.include?(opts[:'confirm_status'])
        fail ArgumentError, "invalid value for \"confirm_status\", must be one of #{allowable_values}"
      end
      allowable_values = ["CONTACT", "C", "BILLING", "B", "JOURNALING", "J", "REPLY_TO", "R", "OTHER", "O"]
      if @api_client.config.client_side_validation && opts[:'role_code'] && !allowable_values.include?(opts[:'role_code'])
        fail ArgumentError, "invalid value for \"role_code\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/account/emails'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'confirm_status'] = opts[:'confirm_status'] if !opts[:'confirm_status'].nil?
      query_params[:'role_code'] = opts[:'role_code'] if !opts[:'role_code'].nil?
      query_params[:'email_address'] = opts[:'email_address'] if !opts[:'email_address'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GetAllAccountEmailAddresses200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.get_all_account_email_addresses",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#get_all_account_email_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET User Privileges
    # Use this method to return the user privileges associated with your access token as an array of objects. This method returns all user privileges, including privileges the V3 API does not currently use. Constant Contact requires specific user privileges to make requests using the V3 API. For more information, see the [User Privileges and Roles Overview](/api_guide/user_privileges.html).
    # @param [Hash] opts the optional parameters
    # @return [Array<GetUserPrivileges200ResponseInner>]
    def get_user_privileges(opts = {})
      data, _status_code, _headers = get_user_privileges_with_http_info(opts)
      data
    end

    # GET User Privileges
    # Use this method to return the user privileges associated with your access token as an array of objects. This method returns all user privileges, including privileges the V3 API does not currently use. Constant Contact requires specific user privileges to make requests using the V3 API. For more information, see the [User Privileges and Roles Overview](/api_guide/user_privileges.html).
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<GetUserPrivileges200ResponseInner>, Integer, Hash)>] Array<GetUserPrivileges200ResponseInner> data, response status code and response headers
    def get_user_privileges_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.get_user_privileges ...'
      end
      # resource path
      local_var_path = '/account/user/privileges'

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
      return_type = opts[:debug_return_type] || 'Array<GetUserPrivileges200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.get_user_privileges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#get_user_privileges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # PUT (update) Account Details
    # Use this method to update account details for a Constant Contact account, such as the email address or phone number. This PUT method provides a partial update where only valid properties that you include in the request body are updated and excluded properties are not overwritten. For more details, see [Put (update) Account Summary Details](/api_guide/account_details_put.html).
    # @param update_account_request [UpdateAccountRequest] In the request body, specify changes to account details by including and modifying all or select &#x60;CustomerPut&#x60; properties. Changes to read-only fields (&#x60;encoded_account_id&#x60;) are ignored.
    # @param [Hash] opts the optional parameters
    # @return [UpdateAccountRequest]
    def update_account(update_account_request, opts = {})
      data, _status_code, _headers = update_account_with_http_info(update_account_request, opts)
      data
    end

    # PUT (update) Account Details
    # Use this method to update account details for a Constant Contact account, such as the email address or phone number. This PUT method provides a partial update where only valid properties that you include in the request body are updated and excluded properties are not overwritten. For more details, see [Put (update) Account Summary Details](/api_guide/account_details_put.html).
    # @param update_account_request [UpdateAccountRequest] In the request body, specify changes to account details by including and modifying all or select &#x60;CustomerPut&#x60; properties. Changes to read-only fields (&#x60;encoded_account_id&#x60;) are ignored.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UpdateAccountRequest, Integer, Hash)>] UpdateAccountRequest data, response status code and response headers
    def update_account_with_http_info(update_account_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.update_account ...'
      end
      # verify the required parameter 'update_account_request' is set
      if @api_client.config.client_side_validation && update_account_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_account_request' when calling AccountServicesApi.update_account"
      end
      # resource path
      local_var_path = '/account/summary'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_account_request)

      # return_type
      return_type = opts[:debug_return_type] || 'UpdateAccountRequest'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.update_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#update_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # PUT (update) the Physical Address for an Account
    # Use this method to update the organization's physical address for the Constant Contact user account. The physical address is required to send emails and displays on the footer of every email that is sent from the account. To get the current physical address, make a GET call to `/account/summary/physical_address`. The country (<code>country_code</code>) where the account organization resides determines whether you use the <code>state_code</code> to specify United States (<code>US</code>) and Canada (<code>CA</code>) addresses, or use the <code>state_name</code> to specify all other countries. For more details, see [Put (update) the Physical Address for the Account](/api_guide/account_address_put.html). You must have the role of Account Owner assigned to update account level details. 
    # @param get_account_details200_response_physical_address [GetAccountDetails200ResponsePhysicalAddress] Include all &#x60;AccountPhysicalAddress&#x60; properties required for the specified &#x60;country_code&#x60; and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address.
    # @param [Hash] opts the optional parameters
    # @return [GetAccountDetails200ResponsePhysicalAddress]
    def update_account_physical_address(get_account_details200_response_physical_address, opts = {})
      data, _status_code, _headers = update_account_physical_address_with_http_info(get_account_details200_response_physical_address, opts)
      data
    end

    # PUT (update) the Physical Address for an Account
    # Use this method to update the organization&#39;s physical address for the Constant Contact user account. The physical address is required to send emails and displays on the footer of every email that is sent from the account. To get the current physical address, make a GET call to &#x60;/account/summary/physical_address&#x60;. The country (&lt;code&gt;country_code&lt;/code&gt;) where the account organization resides determines whether you use the &lt;code&gt;state_code&lt;/code&gt; to specify United States (&lt;code&gt;US&lt;/code&gt;) and Canada (&lt;code&gt;CA&lt;/code&gt;) addresses, or use the &lt;code&gt;state_name&lt;/code&gt; to specify all other countries. For more details, see [Put (update) the Physical Address for the Account](/api_guide/account_address_put.html). You must have the role of Account Owner assigned to update account level details. 
    # @param get_account_details200_response_physical_address [GetAccountDetails200ResponsePhysicalAddress] Include all &#x60;AccountPhysicalAddress&#x60; properties required for the specified &#x60;country_code&#x60; and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAccountDetails200ResponsePhysicalAddress, Integer, Hash)>] GetAccountDetails200ResponsePhysicalAddress data, response status code and response headers
    def update_account_physical_address_with_http_info(get_account_details200_response_physical_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountServicesApi.update_account_physical_address ...'
      end
      # verify the required parameter 'get_account_details200_response_physical_address' is set
      if @api_client.config.client_side_validation && get_account_details200_response_physical_address.nil?
        fail ArgumentError, "Missing the required parameter 'get_account_details200_response_physical_address' when calling AccountServicesApi.update_account_physical_address"
      end
      # resource path
      local_var_path = '/account/summary/physical_address'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_account_details200_response_physical_address)

      # return_type
      return_type = opts[:debug_return_type] || 'GetAccountDetails200ResponsePhysicalAddress'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"AccountServicesApi.update_account_physical_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountServicesApi#update_account_physical_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
