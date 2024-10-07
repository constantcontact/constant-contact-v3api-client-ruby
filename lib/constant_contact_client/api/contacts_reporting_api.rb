=begin
#Constant Contact API v3

#Swagger build version 3.0.2475

The version of the OpenAPI document: 1.0.106
Contact: webservices@constantcontact.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'cgi'

module ConstantContactClient
  class ContactsReportingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # GET Average Open and Click Rates
    # <p>Gets the average open and click rate for a given account and contact.<p>Looks at all tracking activities for bulk emails from a given contact over the given date range. Range cannot exceed 5 years.</p><p>Returns the rates and the number of campaign activities that were included in the calculation.</p><p>If no activities fall into the given date range, all rates will return 0 and the number of included activities will be 0.</p>
    # @param contact_id [String] The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19)
    # @param start [String] The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500.
    # @param _end [String] The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500.
    # @param [Hash] opts the optional parameters
    # @return [GetContactOpenClickRateReport200Response]
    def get_contact_open_click_rate_report(contact_id, start, _end, opts = {})
      data, _status_code, _headers = get_contact_open_click_rate_report_with_http_info(contact_id, start, _end, opts)
      data
    end

    # GET Average Open and Click Rates
    # &lt;p&gt;Gets the average open and click rate for a given account and contact.&lt;p&gt;Looks at all tracking activities for bulk emails from a given contact over the given date range. Range cannot exceed 5 years.&lt;/p&gt;&lt;p&gt;Returns the rates and the number of campaign activities that were included in the calculation.&lt;/p&gt;&lt;p&gt;If no activities fall into the given date range, all rates will return 0 and the number of included activities will be 0.&lt;/p&gt;
    # @param contact_id [String] The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19)
    # @param start [String] The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500.
    # @param _end [String] The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactOpenClickRateReport200Response, Integer, Hash)>] GetContactOpenClickRateReport200Response data, response status code and response headers
    def get_contact_open_click_rate_report_with_http_info(contact_id, start, _end, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsReportingApi.get_contact_open_click_rate_report ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactsReportingApi.get_contact_open_click_rate_report"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling ContactsReportingApi.get_contact_open_click_rate_report"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling ContactsReportingApi.get_contact_open_click_rate_report"
      end
      # resource path
      local_var_path = '/reports/contact_reports/{contact_id}/open_and_click_rates'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = start
      query_params[:'end'] = _end

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetContactOpenClickRateReport200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsReportingApi.get_contact_open_click_rate_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsReportingApi#get_contact_open_click_rate_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET Contact Action Summary
    # Get a list of the recent emails (aka, campaign activities) sent to a specific contact and a summary of the actions the contact took on that email for the most recent 200 campaigns.
    # @param contact_id [String] The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19)
    # @param start [String] The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500.
    # @param _end [String] The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500.
    # @param [Hash] opts the optional parameters
    # @return [GetContactTrackingCountReport200Response]
    def get_contact_tracking_count_report(contact_id, start, _end, opts = {})
      data, _status_code, _headers = get_contact_tracking_count_report_with_http_info(contact_id, start, _end, opts)
      data
    end

    # GET Contact Action Summary
    # Get a list of the recent emails (aka, campaign activities) sent to a specific contact and a summary of the actions the contact took on that email for the most recent 200 campaigns.
    # @param contact_id [String] The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19)
    # @param start [String] The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500.
    # @param _end [String] The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetContactTrackingCountReport200Response, Integer, Hash)>] GetContactTrackingCountReport200Response data, response status code and response headers
    def get_contact_tracking_count_report_with_http_info(contact_id, start, _end, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsReportingApi.get_contact_tracking_count_report ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactsReportingApi.get_contact_tracking_count_report"
      end
      # verify the required parameter 'start' is set
      if @api_client.config.client_side_validation && start.nil?
        fail ArgumentError, "Missing the required parameter 'start' when calling ContactsReportingApi.get_contact_tracking_count_report"
      end
      # verify the required parameter '_end' is set
      if @api_client.config.client_side_validation && _end.nil?
        fail ArgumentError, "Missing the required parameter '_end' when calling ContactsReportingApi.get_contact_tracking_count_report"
      end
      # resource path
      local_var_path = '/reports/contact_reports/{contact_id}/activity_summary'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'start'] = start
      query_params[:'end'] = _end

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetContactTrackingCountReport200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsReportingApi.get_contact_tracking_count_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsReportingApi#get_contact_tracking_count_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET Contact Activity Details
    # <p>Gets the tracking activity data for a single contact, sorted in descending activity date order.</p> <p>You must chose either the `tracking_activities_list` query parameter and or the `tracking_activity_type` query parameter to specify one or more tracking activity types In the request. The `tracking_activities_list`  and `tracking_activities_type` query parameters are mutually exclusive.</p>       <table><tr><td colspan='2'>Valid tracking activity types</td></tr>         <tr><td><b>em_sends</b></td><td>Send activities</td></tr>         <tr><td><b>em_opens</b></td><td>Email open tracking activities</td></tr>         <tr><td><b>em_clicks</b></td><td>Link click-through tracking activities</td></tr>         <tr><td><b>em_bounces</b></td><td>Bounce tracking activities</td></tr>         <tr><td><b>em_optouts</b></td><td>Opt-out tracking activities</td></tr><tr>         <td><b>em_forwards</b></td><td>Forward to a friend tracking activities</td></tr>         <tr><td><b>p_contact_open</b></td><td>Landing page opens</td></tr>         <tr><td><b>p_contact_click</b></td><td>Landing page clicks</td></tr>         <tr><td><b>p_contact_add</b></td><td>Landing page adds</td></tr>         <tr><td><b>p_contact_update </b></td><td> Landing page updates</td></tr>       </table>
    # @param contact_id [String] The contact&#39;s ID for which tracking activity data is requested.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tracking_activities_list Specify one or more tracking activity types to include as a comma-delimited string. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive.
    # @option opts [Array<String>] :tracking_activity_type Specify one or more tracking activity types to include as an array. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive.
    # @option opts [Boolean] :include_campaign_activity_names Default (&#x60;true&#x60;) returns campaign activity names in the results. Not including campaign activity names in the results (&#x60;false&#x60;), is more efficient. (default to true)
    # @option opts [String] :limit The number of tracking activities to return in a single page. Valid values are 1 to 100. Default is 100. (default to '100')
    # @return [GetContactTrackingReport200Response]
    def get_contact_tracking_report(contact_id, opts = {})
      data, _status_code, _headers = get_contact_tracking_report_with_http_info(contact_id, opts)
      data
    end

    # GET Contact Activity Details
    # &lt;p&gt;Gets the tracking activity data for a single contact, sorted in descending activity date order.&lt;/p&gt; &lt;p&gt;You must chose either the &#x60;tracking_activities_list&#x60; query parameter and or the &#x60;tracking_activity_type&#x60; query parameter to specify one or more tracking activity types In the request. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive.&lt;/p&gt;       &lt;table&gt;&lt;tr&gt;&lt;td colspan&#x3D;&#39;2&#39;&gt;Valid tracking activity types&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;em_sends&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Send activities&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;em_opens&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Email open tracking activities&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;em_clicks&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Link click-through tracking activities&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;em_bounces&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Bounce tracking activities&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;em_optouts&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Opt-out tracking activities&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;         &lt;td&gt;&lt;b&gt;em_forwards&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Forward to a friend tracking activities&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;p_contact_open&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Landing page opens&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;p_contact_click&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Landing page clicks&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;p_contact_add&lt;/b&gt;&lt;/td&gt;&lt;td&gt;Landing page adds&lt;/td&gt;&lt;/tr&gt;         &lt;tr&gt;&lt;td&gt;&lt;b&gt;p_contact_update &lt;/b&gt;&lt;/td&gt;&lt;td&gt; Landing page updates&lt;/td&gt;&lt;/tr&gt;       &lt;/table&gt;
    # @param contact_id [String] The contact&#39;s ID for which tracking activity data is requested.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tracking_activities_list Specify one or more tracking activity types to include as a comma-delimited string. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive.
    # @option opts [Array<String>] :tracking_activity_type Specify one or more tracking activity types to include as an array. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive.
    # @option opts [Boolean] :include_campaign_activity_names Default (&#x60;true&#x60;) returns campaign activity names in the results. Not including campaign activity names in the results (&#x60;false&#x60;), is more efficient. (default to true)
    # @option opts [String] :limit The number of tracking activities to return in a single page. Valid values are 1 to 100. Default is 100. (default to '100')
    # @return [Array<(GetContactTrackingReport200Response, Integer, Hash)>] GetContactTrackingReport200Response data, response status code and response headers
    def get_contact_tracking_report_with_http_info(contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContactsReportingApi.get_contact_tracking_report ...'
      end
      # verify the required parameter 'contact_id' is set
      if @api_client.config.client_side_validation && contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'contact_id' when calling ContactsReportingApi.get_contact_tracking_report"
      end
      allowable_values = ["em_sends", "em_opens", "em_clicks", "em_bounces", "em_optouts", "em_forwards", "p_contact_open", "p_contact_click", "p_contact_add", "p_contact_update"]
      if @api_client.config.client_side_validation && opts[:'tracking_activities_list'] && !opts[:'tracking_activities_list'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"tracking_activities_list\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/reports/contact_reports/{contact_id}/activity_details'.sub('{' + 'contact_id' + '}', CGI.escape(contact_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tracking_activities_list'] = @api_client.build_collection_param(opts[:'tracking_activities_list'], :multi) if !opts[:'tracking_activities_list'].nil?
      query_params[:'tracking_activity_type'] = @api_client.build_collection_param(opts[:'tracking_activity_type'], :csv) if !opts[:'tracking_activity_type'].nil?
      query_params[:'include_campaign_activity_names'] = opts[:'include_campaign_activity_names'] if !opts[:'include_campaign_activity_names'].nil?
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
      return_type = opts[:debug_return_type] || 'GetContactTrackingReport200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"ContactsReportingApi.get_contact_tracking_report",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContactsReportingApi#get_contact_tracking_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
