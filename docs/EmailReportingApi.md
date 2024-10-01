# ConstantContactClient::EmailReportingApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_bounces_report**](EmailReportingApi.md#get_bounces_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/bounces | GET an Email Bounces Report |
| [**get_campaign_activity_link_report**](EmailReportingApi.md#get_campaign_activity_link_report) | **GET** /reports/email_reports/{campaign_activity_id}/links | GET an Email Links Report |
| [**get_clicks_report**](EmailReportingApi.md#get_clicks_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/clicks | GET an Email Clicks Report |
| [**get_did_not_opens_report**](EmailReportingApi.md#get_did_not_opens_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/didnotopens | GET an Email Did Not Opens Report |
| [**get_email_campaign_activity_report**](EmailReportingApi.md#get_email_campaign_activity_report) | **GET** /reports/stats/email_campaign_activities/{campaign_activity_ids} | GET an Email Campaign Activity Stats Report |
| [**get_email_campaign_report**](EmailReportingApi.md#get_email_campaign_report) | **GET** /reports/summary_reports/email_campaign_summaries | GET an Email Campaigns Summary Report |
| [**get_email_opens_report**](EmailReportingApi.md#get_email_opens_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/opens | GET an Email Opens Report |
| [**get_email_sends_report**](EmailReportingApi.md#get_email_sends_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/sends | GET an Email Sends Report |
| [**get_email_stats_report**](EmailReportingApi.md#get_email_stats_report) | **GET** /reports/stats/email_campaigns/{campaign_ids} | GET an Email Campaign Stats Report |
| [**get_forwards_report**](EmailReportingApi.md#get_forwards_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/forwards | GET an Email Forwards Report |
| [**get_optouts_report**](EmailReportingApi.md#get_optouts_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/optouts | GET an Email Opt-outs Report |
| [**get_unique_opens_report**](EmailReportingApi.md#get_unique_opens_report) | **GET** /reports/email_reports/{campaign_activity_id}/tracking/unique_opens | GET an Email Unique Opens Report |


## get_bounces_report

> <GetBouncesReport200Response> get_bounces_report(campaign_activity_id, opts)

GET an Email Bounces Report

Use this method to get a report listing contact bounce data for the specified email campaign activity. This report lists the most recent bounce data first and includes contact information, such as the contact's email address, unique ID, and the email bounce date and time. Use the <code>bounce_code</code> query parameter to limit the type of bounce data to return.  For more use case information, see [Get a Bounces Report for an Email Campaign Activity](/api_guide/email_summary_bounces_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID that uniquely identifies the email campaign activity to use for this report.
opts = {
  bounce_code: ['B'], # Array<String> | To return results for a specific bounce code, select the `bounce_code` from the drop-down list. To return results for multiple codes, repeat the bounce code parameter for each. For example, to return results for bounce codes `B` and `D` use `bounce_code=B&bounce_code=D`.
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Bounces Report
  result = api_instance.get_bounces_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_bounces_report: #{e}"
end
```

#### Using the get_bounces_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBouncesReport200Response>, Integer, Hash)> get_bounces_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Bounces Report
  data, status_code, headers = api_instance.get_bounces_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBouncesReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_bounces_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The ID that uniquely identifies the email campaign activity to use for this report. |  |
| **bounce_code** | [**Array&lt;String&gt;**](String.md) | To return results for a specific bounce code, select the &#x60;bounce_code&#x60; from the drop-down list. To return results for multiple codes, repeat the bounce code parameter for each. For example, to return results for bounce codes &#x60;B&#x60; and &#x60;D&#x60; use &#x60;bounce_code&#x3D;B&amp;bounce_code&#x3D;D&#x60;. | [optional] |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetBouncesReport200Response**](GetBouncesReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_campaign_activity_link_report

> <GetCampaignActivityLinkReport200Response> get_campaign_activity_link_report(campaign_activity_id, opts)

GET an Email Links Report

Use this method to return link details, including the number of unique contacts that clicked each link in an email campaign activity, and the type of action associated with clicking each link. To include link details for links that were not clicked, set the `no_clicks` query parameter to `true`.  You can return reporting data for `primary_email` and `resend` role email campaign activities. For more use case information, see [Get an Email Links Report](/api_guide/email_links_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '8892baf9-970a-4de6-8400-fa4ec461987c' # String | The unique ID for an email campaign activity.
opts = {
  no_clicks: true # Boolean | Set this query parameter to `true` to  return details for links that were not clicked in the response results.
}

begin
  # GET an Email Links Report
  result = api_instance.get_campaign_activity_link_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_campaign_activity_link_report: #{e}"
end
```

#### Using the get_campaign_activity_link_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCampaignActivityLinkReport200Response>, Integer, Hash)> get_campaign_activity_link_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Links Report
  data, status_code, headers = api_instance.get_campaign_activity_link_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCampaignActivityLinkReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_campaign_activity_link_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. |  |
| **no_clicks** | **Boolean** | Set this query parameter to &#x60;true&#x60; to  return details for links that were not clicked in the response results. | [optional][default to false] |

### Return type

[**GetCampaignActivityLinkReport200Response**](GetCampaignActivityLinkReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_clicks_report

> <GetClicksReport200Response> get_clicks_report(campaign_activity_id, opts)

GET an Email Clicks Report

Use this method to get each time a contact clicked a link, the click date and time, and the device type they used. Use the `url_id` query parameter to get a clicks report for a specific link URL. Clicks report data is sorted with most recent activity listed first.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = 'c8cdf384-15ca-4dcc-9b6f-4c91121fdc23' # String | The ID that uniquely identifies the email campaign activity to use for this report.
opts = {
  url_id: 49920742166, # Integer | The ID that uniquely identifies a single link URL for which you want to get a clicks report.
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Clicks Report
  result = api_instance.get_clicks_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_clicks_report: #{e}"
end
```

#### Using the get_clicks_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetClicksReport200Response>, Integer, Hash)> get_clicks_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Clicks Report
  data, status_code, headers = api_instance.get_clicks_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetClicksReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_clicks_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The ID that uniquely identifies the email campaign activity to use for this report. |  |
| **url_id** | **Integer** | The ID that uniquely identifies a single link URL for which you want to get a clicks report. | [optional] |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetClicksReport200Response**](GetClicksReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_did_not_opens_report

> <GetDidNotOpensReport200Response> get_did_not_opens_report(campaign_activity_id, opts)

GET an Email Did Not Opens Report

Use this method to get a report listing each contact that was sent, but did not open the specified email campaign activity. This report lists contact information such as the contact's email address and unique ID, and the date and time that the email campaign activity was sent. This report lists the most recent activity first. For more use case information, see [Get a Did Not Opens Report for an Email Campaign Activity](/api_guide/email_summary_non_opens_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '8892baf9-970a-4de6-8400-fa4ec461987c' # String | The ID that uniquely identifies the email campaign activity to use for this report.
opts = {
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Did Not Opens Report
  result = api_instance.get_did_not_opens_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_did_not_opens_report: #{e}"
end
```

#### Using the get_did_not_opens_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDidNotOpensReport200Response>, Integer, Hash)> get_did_not_opens_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Did Not Opens Report
  data, status_code, headers = api_instance.get_did_not_opens_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDidNotOpensReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_did_not_opens_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The ID that uniquely identifies the email campaign activity to use for this report. |  |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetDidNotOpensReport200Response**](GetDidNotOpensReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_activity_report

> <GetEmailCampaignActivityReport200Response> get_email_campaign_activity_report(campaign_activity_ids)

GET an Email Campaign Activity Stats Report

Use this method to get performance tracking statistics for up to ten email campaign activities. Statistics include the total number of times contacts interacted with your campaigns and how.  For each `campaign_activity_id`, this method returns the `campaign_id`, the total counts (`stats`) for each type of tracked email activity, and the date and time that Constant Contact last refreshed (`last_refresh_time`) the `stats`.  When requesting statistics for multiple email campaign activities, if one or more of the `campaign_activity_ids` do not exist, were deleted, or do not have any stats associated with it, the `campaign_activity_ids` and error details display under `errors`. If any single specified `campaign_activity_id` is invalid (malformed), a 404 error response is returned for all campaign activities.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_ids = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | A comma-separated list of `campaign_activity_id`s (UUID's).

begin
  # GET an Email Campaign Activity Stats Report
  result = api_instance.get_email_campaign_activity_report(campaign_activity_ids)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_campaign_activity_report: #{e}"
end
```

#### Using the get_email_campaign_activity_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaignActivityReport200Response>, Integer, Hash)> get_email_campaign_activity_report_with_http_info(campaign_activity_ids)

```ruby
begin
  # GET an Email Campaign Activity Stats Report
  data, status_code, headers = api_instance.get_email_campaign_activity_report_with_http_info(campaign_activity_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaignActivityReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_campaign_activity_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_ids** | **String** | A comma-separated list of &#x60;campaign_activity_id&#x60;s (UUID&#39;s). |  |

### Return type

[**GetEmailCampaignActivityReport200Response**](GetEmailCampaignActivityReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_report

> <GetEmailCampaignReport200Response> get_email_campaign_report(opts)

GET an Email Campaigns Summary Report

Use this method to get aggregate email campaign statistics for up to five hundred email campaigns. The response results include the total number of times that each contact uniquely interacted with each tracked campaign activity.  Results are sorted in descending order by the date that the email was last sent (<code>last_sent_date</code>). Use the <code>limit</code> query parameter to limit the number of email campaign summary reports listed on each page.     For more use case information, see \"[Get an Email Campaign Summary Report](/api_guide/email_bulk_campaign_summary_report.html)\"

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
opts = {
  limit: '100' # String | Use the `limit` query parameter to limit the number of email campaign summaries to return on a single page. The default is `50` and the maximum is `500` per page.
}

begin
  # GET an Email Campaigns Summary Report
  result = api_instance.get_email_campaign_report(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_campaign_report: #{e}"
end
```

#### Using the get_email_campaign_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaignReport200Response>, Integer, Hash)> get_email_campaign_report_with_http_info(opts)

```ruby
begin
  # GET an Email Campaigns Summary Report
  data, status_code, headers = api_instance.get_email_campaign_report_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaignReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_campaign_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **String** | Use the &#x60;limit&#x60; query parameter to limit the number of email campaign summaries to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |

### Return type

[**GetEmailCampaignReport200Response**](GetEmailCampaignReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_opens_report

> <GetEmailOpensReport200Response> get_email_opens_report(campaign_activity_id, opts)

GET an Email Opens Report

Use this method to get each time a contact opened a specific email campaign activity. This report includes general contact information such as the contact's email address and unique ID, the date and time they opened the email campaign activity, and the type of device they used to open it. This report lists the most recent activity first. For more use case information, see [Get an Opens report for an Email Campaign Activity](/api_guide/email_summary_opens_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '8892baf9-970a-4de6-8400-fa4ec461987c' # String | The unique ID for an email campaign activity to use for this report.
opts = {
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Opens Report
  result = api_instance.get_email_opens_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_opens_report: #{e}"
end
```

#### Using the get_email_opens_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailOpensReport200Response>, Integer, Hash)> get_email_opens_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Opens Report
  data, status_code, headers = api_instance.get_email_opens_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailOpensReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_opens_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity to use for this report. |  |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetEmailOpensReport200Response**](GetEmailOpensReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_sends_report

> <GetEmailSendsReport200Response> get_email_sends_report(campaign_activity_id, opts)

GET an Email Sends Report

Use this method to get each contact that was sent a specific email campaign activity. This sends report includes general contact data such as the date and time that the email campaign activity was sent to a contact's email address, the contact's first and last name, and unique ID. This report lists the most recent activity first. For more use case information, see [Get an Sends report for an Email Campaign Activity](/api_guide/email_summary_sends_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '8892baf9-970a-4de6-8400-fa4ec461987c' # String | The unique ID for an email campaign activity to use for this report.
opts = {
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Sends Report
  result = api_instance.get_email_sends_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_sends_report: #{e}"
end
```

#### Using the get_email_sends_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailSendsReport200Response>, Integer, Hash)> get_email_sends_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Sends Report
  data, status_code, headers = api_instance.get_email_sends_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailSendsReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_sends_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity to use for this report. |  |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetEmailSendsReport200Response**](GetEmailSendsReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_stats_report

> <GetEmailStatsReport200Response> get_email_stats_report(campaign_ids)

GET an Email Campaign Stats Report

Use this method to get email campaign performance tracking statistics for one or more campaigns, including the total number of times contacts interacted with your campaigns and how.  For each `campaign_id`, this method returns lists that include total counts (`stats`) for each type of tracked email and relevant campaign-related percentages (`percents`). It also returns the date and time at which the campaign stats were last refreshed. If any specified `campaign_id` is invalid, a 404 error response is returned for all campaigns.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_ids = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | A comma-separated list of `campaign_id`s (UUID's).

begin
  # GET an Email Campaign Stats Report
  result = api_instance.get_email_stats_report(campaign_ids)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_stats_report: #{e}"
end
```

#### Using the get_email_stats_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailStatsReport200Response>, Integer, Hash)> get_email_stats_report_with_http_info(campaign_ids)

```ruby
begin
  # GET an Email Campaign Stats Report
  data, status_code, headers = api_instance.get_email_stats_report_with_http_info(campaign_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailStatsReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_email_stats_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_ids** | **String** | A comma-separated list of &#x60;campaign_id&#x60;s (UUID&#39;s). |  |

### Return type

[**GetEmailStatsReport200Response**](GetEmailStatsReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_forwards_report

> <GetForwardsReport200Response> get_forwards_report(campaign_activity_id, opts)

GET an Email Forwards Report

Use this method to get a report listing each time a contact forwarded the email campaign activity using the forwarding link in the email footer. The report includes general contact information, such as the contact's email address and unique ID, and the date and time that the email campaign activity was forwarded. Forwards report data is sorted with the most recent activity listed first. For more use case information, see [Get an Email Forwards Report](/api_guide/email_summary_forwards_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID that uniquely identifies the email campaign activity to use for this report.
opts = {
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Forwards Report
  result = api_instance.get_forwards_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_forwards_report: #{e}"
end
```

#### Using the get_forwards_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetForwardsReport200Response>, Integer, Hash)> get_forwards_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Forwards Report
  data, status_code, headers = api_instance.get_forwards_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetForwardsReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_forwards_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The ID that uniquely identifies the email campaign activity to use for this report. |  |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetForwardsReport200Response**](GetForwardsReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_optouts_report

> <GetOptoutsReport200Response> get_optouts_report(campaign_activity_id, opts)

GET an Email Opt-outs Report

Use this method to get a report listing each contact that clicked the unsubscribe link in the email campaign activity to opt-out from receiving emails sent from your Constant Contact account. This report includes contact information, such as the contact's email address, unique ID, and the opt-out date and time. Opt-out report data is sorted with the most recent activity listed first. For more use case information, see [Get an Email Opt-outs Report](/api_guide/email_summary_optouts_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID that uniquely identifies the email campaign activity to use for this report.
opts = {
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Opt-outs Report
  result = api_instance.get_optouts_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_optouts_report: #{e}"
end
```

#### Using the get_optouts_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOptoutsReport200Response>, Integer, Hash)> get_optouts_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Opt-outs Report
  data, status_code, headers = api_instance.get_optouts_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOptoutsReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_optouts_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The ID that uniquely identifies the email campaign activity to use for this report. |  |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetOptoutsReport200Response**](GetOptoutsReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unique_opens_report

> <GetEmailOpensReport200Response> get_unique_opens_report(campaign_activity_id, opts)

GET an Email Unique Opens Report

Use this method to get a unique opens report that provides details about the last time that each contact opened the specified email campaign activity. This report includes general contact information such as the contact's email address and unique ID, the date and time they opened the email campaign activity, and the type of device they used to open it. This report lists the most recent activity first. For more use case information, see [Get an Unique Opens Report for an Email Campaign Activity](/api_guide/email_summary_unique_opens_report.html) in the API guide.

### Examples

```ruby
require 'time'
require 'constant_contact_client'
# setup authorization
ConstantContactClient.configure do |config|
  # Configure OAuth2 access token for authorization: oauth2_access_code
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure OAuth2 access token for authorization: oauth2_implicit
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ConstantContactClient::EmailReportingApi.new
campaign_activity_id = '8892baf9-970a-4de6-8400-fa4ec461987c' # String | The ID that uniquely identifies the email campaign activity to use for this report.
opts = {
  limit: 'limit_example' # String | The number of tracking activities to return on a page.
}

begin
  # GET an Email Unique Opens Report
  result = api_instance.get_unique_opens_report(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_unique_opens_report: #{e}"
end
```

#### Using the get_unique_opens_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailOpensReport200Response>, Integer, Hash)> get_unique_opens_report_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET an Email Unique Opens Report
  data, status_code, headers = api_instance.get_unique_opens_report_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailOpensReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailReportingApi->get_unique_opens_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The ID that uniquely identifies the email campaign activity to use for this report. |  |
| **limit** | **String** | The number of tracking activities to return on a page. | [optional][default to &#39;500&#39;] |

### Return type

[**GetEmailOpensReport200Response**](GetEmailOpensReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

