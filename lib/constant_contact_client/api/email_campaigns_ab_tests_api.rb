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
  class EmailCampaignsABTestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # POST (Create) an A/B Test for an Email Campaign Activity
    # Use this method to create a new A/B test for a primary email campaign activity. You must specify an alternative subject line, the percentage of contact to use for the A/B test, and the number of hours to wait after the A/B test is sent before determining the winning subject line. To create an A/B test, the campaign must have a `current_status` of `DRAFT`. When you create an A/B test, the `type` changes from Newsletter (code= `10`) to A/B Test (code= `57`).
    # @param campaign_activity_id [String] The unique ID for the primary email campaign activity.
    # @param get_ab_test_email_campaign200_response [GetABTestEmailCampaign200Response] Specify the &#x60;alternative_subject&#x60; line, &#x60;test_size&#x60; percentage of contacts (value must from &#x60;5&#x60; to &#x60;50&#x60; inclusively), and the &#x60;winner_wait_duration&#x60; (value must be &#x60;6&#x60;, &#x60;12&#x60;, &#x60;24&#x60;, or &#x60;48&#x60; hours).
    # @param [Hash] opts the optional parameters
    # @return [GetABTestEmailCampaign200Response]
    def create_ab_test_email_campaign(campaign_activity_id, get_ab_test_email_campaign200_response, opts = {})
      data, _status_code, _headers = create_ab_test_email_campaign_with_http_info(campaign_activity_id, get_ab_test_email_campaign200_response, opts)
      data
    end

    # POST (Create) an A/B Test for an Email Campaign Activity
    # Use this method to create a new A/B test for a primary email campaign activity. You must specify an alternative subject line, the percentage of contact to use for the A/B test, and the number of hours to wait after the A/B test is sent before determining the winning subject line. To create an A/B test, the campaign must have a &#x60;current_status&#x60; of &#x60;DRAFT&#x60;. When you create an A/B test, the &#x60;type&#x60; changes from Newsletter (code&#x3D; &#x60;10&#x60;) to A/B Test (code&#x3D; &#x60;57&#x60;).
    # @param campaign_activity_id [String] The unique ID for the primary email campaign activity.
    # @param get_ab_test_email_campaign200_response [GetABTestEmailCampaign200Response] Specify the &#x60;alternative_subject&#x60; line, &#x60;test_size&#x60; percentage of contacts (value must from &#x60;5&#x60; to &#x60;50&#x60; inclusively), and the &#x60;winner_wait_duration&#x60; (value must be &#x60;6&#x60;, &#x60;12&#x60;, &#x60;24&#x60;, or &#x60;48&#x60; hours).
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetABTestEmailCampaign200Response, Integer, Hash)>] GetABTestEmailCampaign200Response data, response status code and response headers
    def create_ab_test_email_campaign_with_http_info(campaign_activity_id, get_ab_test_email_campaign200_response, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailCampaignsABTestsApi.create_ab_test_email_campaign ...'
      end
      # verify the required parameter 'campaign_activity_id' is set
      if @api_client.config.client_side_validation && campaign_activity_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_activity_id' when calling EmailCampaignsABTestsApi.create_ab_test_email_campaign"
      end
      # verify the required parameter 'get_ab_test_email_campaign200_response' is set
      if @api_client.config.client_side_validation && get_ab_test_email_campaign200_response.nil?
        fail ArgumentError, "Missing the required parameter 'get_ab_test_email_campaign200_response' when calling EmailCampaignsABTestsApi.create_ab_test_email_campaign"
      end
      # resource path
      local_var_path = '/emails/activities/{campaign_activity_id}/abtest'.sub('{' + 'campaign_activity_id' + '}', CGI.escape(campaign_activity_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(get_ab_test_email_campaign200_response)

      # return_type
      return_type = opts[:debug_return_type] || 'GetABTestEmailCampaign200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"EmailCampaignsABTestsApi.create_ab_test_email_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsABTestsApi#create_ab_test_email_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # DELETE an A/B Test for an Email Campaign Activity
    # Deletes an A/B Test on an primary email campaign activity. You can only delete A/B tests that have a `current_status` of `Draft`. Deleting an A/B tests reverts the email campaign activity `type` from A/B Test (code= `57`) back to NewsLetter (code= `10`). Constant Contact uses the original subject line, rather than the alternate A/B test subject line, when an A/B test is deleted.
    # @param campaign_activity_id [String] The unique ID for the primary email campaign activity.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ab_test_email_campaign(campaign_activity_id, opts = {})
      delete_ab_test_email_campaign_with_http_info(campaign_activity_id, opts)
      nil
    end

    # DELETE an A/B Test for an Email Campaign Activity
    # Deletes an A/B Test on an primary email campaign activity. You can only delete A/B tests that have a &#x60;current_status&#x60; of &#x60;Draft&#x60;. Deleting an A/B tests reverts the email campaign activity &#x60;type&#x60; from A/B Test (code&#x3D; &#x60;57&#x60;) back to NewsLetter (code&#x3D; &#x60;10&#x60;). Constant Contact uses the original subject line, rather than the alternate A/B test subject line, when an A/B test is deleted.
    # @param campaign_activity_id [String] The unique ID for the primary email campaign activity.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_ab_test_email_campaign_with_http_info(campaign_activity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailCampaignsABTestsApi.delete_ab_test_email_campaign ...'
      end
      # verify the required parameter 'campaign_activity_id' is set
      if @api_client.config.client_side_validation && campaign_activity_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_activity_id' when calling EmailCampaignsABTestsApi.delete_ab_test_email_campaign"
      end
      # resource path
      local_var_path = '/emails/activities/{campaign_activity_id}/abtest'.sub('{' + 'campaign_activity_id' + '}', CGI.escape(campaign_activity_id.to_s))

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
        :operation => :"EmailCampaignsABTestsApi.delete_ab_test_email_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsABTestsApi#delete_ab_test_email_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # GET A/B Test Details for an Email Campaign Activity
    # Use this method to get A/B test details for a primary email campaign activity, such as the alternate email subject line, the contact test percentage size, and the number of hours to wait to determine the winning subject line to use. Currently, A/B tests support subject line only.
    # @param campaign_activity_id [String] The unique ID for the primary email campaign activity.
    # @param [Hash] opts the optional parameters
    # @return [GetABTestEmailCampaign200Response]
    def get_ab_test_email_campaign(campaign_activity_id, opts = {})
      data, _status_code, _headers = get_ab_test_email_campaign_with_http_info(campaign_activity_id, opts)
      data
    end

    # GET A/B Test Details for an Email Campaign Activity
    # Use this method to get A/B test details for a primary email campaign activity, such as the alternate email subject line, the contact test percentage size, and the number of hours to wait to determine the winning subject line to use. Currently, A/B tests support subject line only.
    # @param campaign_activity_id [String] The unique ID for the primary email campaign activity.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetABTestEmailCampaign200Response, Integer, Hash)>] GetABTestEmailCampaign200Response data, response status code and response headers
    def get_ab_test_email_campaign_with_http_info(campaign_activity_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: EmailCampaignsABTestsApi.get_ab_test_email_campaign ...'
      end
      # verify the required parameter 'campaign_activity_id' is set
      if @api_client.config.client_side_validation && campaign_activity_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_activity_id' when calling EmailCampaignsABTestsApi.get_ab_test_email_campaign"
      end
      # resource path
      local_var_path = '/emails/activities/{campaign_activity_id}/abtest'.sub('{' + 'campaign_activity_id' + '}', CGI.escape(campaign_activity_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GetABTestEmailCampaign200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['oauth2_access_code', 'oauth2_implicit']

      new_options = opts.merge(
        :operation => :"EmailCampaignsABTestsApi.get_ab_test_email_campaign",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: EmailCampaignsABTestsApi#get_ab_test_email_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
