# ConstantContactClient::ContactsReportingApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contact_open_click_rate_report**](ContactsReportingApi.md#get_contact_open_click_rate_report) | **GET** /reports/contact_reports/{contact_id}/open_and_click_rates | GET Average Open and Click Rates |
| [**get_contact_tracking_count_report**](ContactsReportingApi.md#get_contact_tracking_count_report) | **GET** /reports/contact_reports/{contact_id}/activity_summary | GET Contact Action Summary |
| [**get_contact_tracking_report**](ContactsReportingApi.md#get_contact_tracking_report) | **GET** /reports/contact_reports/{contact_id}/activity_details | GET Contact Activity Details |


## get_contact_open_click_rate_report

> <GetContactOpenClickRateReport200Response> get_contact_open_click_rate_report(contact_id, start, _end)

GET Average Open and Click Rates

<p>Gets the average open and click rate for a given account and contact.<p>Looks at all tracking activities for bulk emails from a given contact over the given date range. Range cannot exceed 5 years.</p><p>Returns the rates and the number of campaign activities that were included in the calculation.</p><p>If no activities fall into the given date range, all rates will return 0 and the number of included activities will be 0.</p>

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

api_instance = ConstantContactClient::ContactsReportingApi.new
contact_id = 'aa9ff7b0-478d-11e6-8059-00163e3c8e19' # String | The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19)
start = 'start_example' # String | The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500.
_end = '_end_example' # String | The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500.

begin
  # GET Average Open and Click Rates
  result = api_instance.get_contact_open_click_rate_report(contact_id, start, _end)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsReportingApi->get_contact_open_click_rate_report: #{e}"
end
```

#### Using the get_contact_open_click_rate_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactOpenClickRateReport200Response>, Integer, Hash)> get_contact_open_click_rate_report_with_http_info(contact_id, start, _end)

```ruby
begin
  # GET Average Open and Click Rates
  data, status_code, headers = api_instance.get_contact_open_click_rate_report_with_http_info(contact_id, start, _end)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactOpenClickRateReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsReportingApi->get_contact_open_click_rate_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19) |  |
| **start** | **String** | The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500. |  |
| **_end** | **String** | The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500. |  |

### Return type

[**GetContactOpenClickRateReport200Response**](GetContactOpenClickRateReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_tracking_count_report

> <GetContactTrackingCountReport200Response> get_contact_tracking_count_report(contact_id, start, _end)

GET Contact Action Summary

Get a list of the recent emails (aka, campaign activities) sent to a specific contact and a summary of the actions the contact took on that email for the most recent 200 campaigns.

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

api_instance = ConstantContactClient::ContactsReportingApi.new
contact_id = 'aa9ff7b0-478d-11e6-8059-00163e3c8e19' # String | The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19)
start = 'start_example' # String | The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500.
_end = '_end_example' # String | The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500.

begin
  # GET Contact Action Summary
  result = api_instance.get_contact_tracking_count_report(contact_id, start, _end)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsReportingApi->get_contact_tracking_count_report: #{e}"
end
```

#### Using the get_contact_tracking_count_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactTrackingCountReport200Response>, Integer, Hash)> get_contact_tracking_count_report_with_http_info(contact_id, start, _end)

```ruby
begin
  # GET Contact Action Summary
  data, status_code, headers = api_instance.get_contact_tracking_count_report_with_http_info(contact_id, start, _end)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactTrackingCountReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsReportingApi->get_contact_tracking_count_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact id which is requesting tracking activity data (e.g. aa9ff7b0-478d-11e6-8059-00163e3c8e19) |  |
| **start** | **String** | The starting date, in ISO 8601 format, to use to get campaigns. For example: 2019-01-01T00:00:00-0500. |  |
| **_end** | **String** | The ending date, in ISO 8601 format, to use to get campaigns. For example: 2019-12-01T00:00:00-0500. |  |

### Return type

[**GetContactTrackingCountReport200Response**](GetContactTrackingCountReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_tracking_report

> <GetContactTrackingReport200Response> get_contact_tracking_report(contact_id, opts)

GET Contact Activity Details

<p>Gets the tracking activity data for a single contact, sorted in descending activity date order.</p> <p>You must chose either the `tracking_activities_list` query parameter and or the `tracking_activity_type` query parameter to specify one or more tracking activity types In the request. The `tracking_activities_list`  and `tracking_activities_type` query parameters are mutually exclusive.</p>       <table><tr><td colspan='2'>Valid tracking activity types</td></tr>         <tr><td><b>em_sends</b></td><td>Send activities</td></tr>         <tr><td><b>em_opens</b></td><td>Email open tracking activities</td></tr>         <tr><td><b>em_clicks</b></td><td>Link click-through tracking activities</td></tr>         <tr><td><b>em_bounces</b></td><td>Bounce tracking activities</td></tr>         <tr><td><b>em_optouts</b></td><td>Opt-out tracking activities</td></tr><tr>         <td><b>em_forwards</b></td><td>Forward to a friend tracking activities</td></tr>         <tr><td><b>p_contact_open</b></td><td>Landing page opens</td></tr>         <tr><td><b>p_contact_click</b></td><td>Landing page clicks</td></tr>         <tr><td><b>p_contact_add</b></td><td>Landing page adds</td></tr>         <tr><td><b>p_contact_update </b></td><td> Landing page updates</td></tr>       </table>

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

api_instance = ConstantContactClient::ContactsReportingApi.new
contact_id = 'aa9ff7b0-478d-11e6-8059-00163e3c8e19' # String | The contact's ID for which tracking activity data is requested.
opts = {
  tracking_activities_list: ['em_sends'], # Array<String> | Specify one or more tracking activity types to include as a comma-delimited string. The `tracking_activities_list`  and `tracking_activities_type` query parameters are mutually exclusive.
  tracking_activity_type: ['inner_example'], # Array<String> | Specify one or more tracking activity types to include as an array. The `tracking_activities_list`  and `tracking_activities_type` query parameters are mutually exclusive.
  include_campaign_activity_names: true, # Boolean | Default (`true`) returns campaign activity names in the results. Not including campaign activity names in the results (`false`), is more efficient.
  limit: '20' # String | The number of tracking activities to return in a single page. Valid values are 1 to 100. Default is 100.
}

begin
  # GET Contact Activity Details
  result = api_instance.get_contact_tracking_report(contact_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsReportingApi->get_contact_tracking_report: #{e}"
end
```

#### Using the get_contact_tracking_report_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactTrackingReport200Response>, Integer, Hash)> get_contact_tracking_report_with_http_info(contact_id, opts)

```ruby
begin
  # GET Contact Activity Details
  data, status_code, headers = api_instance.get_contact_tracking_report_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactTrackingReport200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsReportingApi->get_contact_tracking_report_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact&#39;s ID for which tracking activity data is requested. |  |
| **tracking_activities_list** | [**Array&lt;String&gt;**](String.md) | Specify one or more tracking activity types to include as a comma-delimited string. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive. | [optional] |
| **tracking_activity_type** | [**Array&lt;String&gt;**](String.md) | Specify one or more tracking activity types to include as an array. The &#x60;tracking_activities_list&#x60;  and &#x60;tracking_activities_type&#x60; query parameters are mutually exclusive. | [optional] |
| **include_campaign_activity_names** | **Boolean** | Default (&#x60;true&#x60;) returns campaign activity names in the results. Not including campaign activity names in the results (&#x60;false&#x60;), is more efficient. | [optional][default to true] |
| **limit** | **String** | The number of tracking activities to return in a single page. Valid values are 1 to 100. Default is 100. | [optional][default to &#39;100&#39;] |

### Return type

[**GetContactTrackingReport200Response**](GetContactTrackingReport200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

