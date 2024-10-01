# ConstantContactClient::LandingPagesReportingApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_contact_adds**](LandingPagesReportingApi.md#get_contact_adds) | **GET** /reports/landing_pages/campaign_details/{campaign_activity_id}/p_unique_contact_adds | GET a Unique Contacts Adds Landing Page Report |
| [**get_contact_opens**](LandingPagesReportingApi.md#get_contact_opens) | **GET** /reports/landing_pages/campaign_details/{campaign_activity_id}/p_contact_opens | GET a Contacts Opens Landing Page Report |
| [**get_unique_contact_clicks**](LandingPagesReportingApi.md#get_unique_contact_clicks) | **GET** /reports/landing_pages/campaign_details/{campaign_activity_id}/p_unique_contact_clicks | GET a Unique Contacts Clicks Landing Page Report |
| [**get_unique_contact_opens**](LandingPagesReportingApi.md#get_unique_contact_opens) | **GET** /reports/landing_pages/campaign_details/{campaign_activity_id}/p_unique_contact_opens | GET a Unique Contacts Opens Landing Page Report |
| [**get_unique_contact_sms_opt_ins**](LandingPagesReportingApi.md#get_unique_contact_sms_opt_ins) | **GET** /reports/landing_pages/campaign_details/{campaign_activity_id}/p_unique_contact_sms_optins | GET a Unique Contacts SMS Opt-In Landing Page Report |
| [**get_unique_contact_updates**](LandingPagesReportingApi.md#get_unique_contact_updates) | **GET** /reports/landing_pages/campaign_details/{campaign_activity_id}/p_unique_contact_updates | GET a Unique Contacts Updates Landing Page Report |


## get_contact_adds

> <GetContactAdds200Response> get_contact_adds(campaign_activity_id, opts)

GET a Unique Contacts Adds Landing Page Report

Use this method to get details about each contact added to the account from a specified landing page. Contacts are identified by `contact_id`. The resulting contact data is listed with most recent activity first.

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

api_instance = ConstantContactClient::LandingPagesReportingApi.new
campaign_activity_id = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | The landing page `campaign_activity_id` (UUID's) to use to get unique contact results.
opts = {
  limit: '100', # String | Use to limit the number of contact tracking activities to return on a single page. The default is `50` and the maximum is `500` per page.
  contacts_filter: 'Jo' # String | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo.
}

begin
  # GET a Unique Contacts Adds Landing Page Report
  result = api_instance.get_contact_adds(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_contact_adds: #{e}"
end
```

#### Using the get_contact_adds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactAdds200Response>, Integer, Hash)> get_contact_adds_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Unique Contacts Adds Landing Page Report
  data, status_code, headers = api_instance.get_contact_adds_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactAdds200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_contact_adds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The landing page &#x60;campaign_activity_id&#x60; (UUID&#39;s) to use to get unique contact results. |  |
| **limit** | **String** | Use to limit the number of contact tracking activities to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |
| **contacts_filter** | **String** | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo. | [optional] |

### Return type

[**GetContactAdds200Response**](GetContactAdds200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_opens

> <GetUniqueContactOpens200Response> get_contact_opens(campaign_activity_id, opts)

GET a Contacts Opens Landing Page Report

Use this method get contact details for each time a contact opens a link on a landing page.  The resulting contact data is listed with most recent activity first.

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

api_instance = ConstantContactClient::LandingPagesReportingApi.new
campaign_activity_id = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | The landing page `campaign_activity_id` (UUID's) to use to get unique contact open results.
opts = {
  limit: '100', # String | Use to limit the number of contact tracking activities to return on a single page. The default is `50` and the maximum is `500` per page.
  contacts_filter: 'Jo' # String | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo.
}

begin
  # GET a Contacts Opens Landing Page Report
  result = api_instance.get_contact_opens(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_contact_opens: #{e}"
end
```

#### Using the get_contact_opens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniqueContactOpens200Response>, Integer, Hash)> get_contact_opens_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Contacts Opens Landing Page Report
  data, status_code, headers = api_instance.get_contact_opens_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniqueContactOpens200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_contact_opens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The landing page &#x60;campaign_activity_id&#x60; (UUID&#39;s) to use to get unique contact open results. |  |
| **limit** | **String** | Use to limit the number of contact tracking activities to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |
| **contacts_filter** | **String** | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo. | [optional] |

### Return type

[**GetUniqueContactOpens200Response**](GetUniqueContactOpens200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unique_contact_clicks

> <GetUniqueContactClicks200Response> get_unique_contact_clicks(campaign_activity_id, opts)

GET a Unique Contacts Clicks Landing Page Report

Use this method get details about each contact that clicked a link on a landing page campaign activity. Unique contact clicks are identified by both the `contact_id` and `url_id`. The same contact may appear more than once in the results, if they clicked more than one link on the landing page. The resulting contact data is listed with most recent activity first.

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

api_instance = ConstantContactClient::LandingPagesReportingApi.new
campaign_activity_id = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | The landing page `campaign_activity_id` (UUID's) to use to get unique contact click results.
opts = {
  limit: '100', # String | Use to limit the number of contact tracking activities to return on a single page. The default is `50` and the maximum is `500` per page.
  contacts_filter: 'Jo' # String | Use to filter the results to return only contacts that match a contacts full or partial first or last name, or email. For example: Josie or Jo.
}

begin
  # GET a Unique Contacts Clicks Landing Page Report
  result = api_instance.get_unique_contact_clicks(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_clicks: #{e}"
end
```

#### Using the get_unique_contact_clicks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniqueContactClicks200Response>, Integer, Hash)> get_unique_contact_clicks_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Unique Contacts Clicks Landing Page Report
  data, status_code, headers = api_instance.get_unique_contact_clicks_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniqueContactClicks200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_clicks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The landing page &#x60;campaign_activity_id&#x60; (UUID&#39;s) to use to get unique contact click results. |  |
| **limit** | **String** | Use to limit the number of contact tracking activities to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |
| **contacts_filter** | **String** | Use to filter the results to return only contacts that match a contacts full or partial first or last name, or email. For example: Josie or Jo. | [optional] |

### Return type

[**GetUniqueContactClicks200Response**](GetUniqueContactClicks200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unique_contact_opens

> <GetUniqueContactOpens200Response> get_unique_contact_opens(campaign_activity_id, opts)

GET a Unique Contacts Opens Landing Page Report

Use this method get details about each contact that opens a link on a landing page. Contacts are uniquely identified by `contact_id`.  The resulting contact data is listed with most recent activity first.

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

api_instance = ConstantContactClient::LandingPagesReportingApi.new
campaign_activity_id = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | The landing page `campaign_activity_id` (UUID's) to use to get unique contact open results.
opts = {
  limit: '100', # String | Use to limit the number of contact tracking activities to return on a single page. The default is `50` and the maximum is `500` per page.
  contacts_filter: 'Jo' # String | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo.
}

begin
  # GET a Unique Contacts Opens Landing Page Report
  result = api_instance.get_unique_contact_opens(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_opens: #{e}"
end
```

#### Using the get_unique_contact_opens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniqueContactOpens200Response>, Integer, Hash)> get_unique_contact_opens_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Unique Contacts Opens Landing Page Report
  data, status_code, headers = api_instance.get_unique_contact_opens_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniqueContactOpens200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_opens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The landing page &#x60;campaign_activity_id&#x60; (UUID&#39;s) to use to get unique contact open results. |  |
| **limit** | **String** | Use to limit the number of contact tracking activities to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |
| **contacts_filter** | **String** | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo. | [optional] |

### Return type

[**GetUniqueContactOpens200Response**](GetUniqueContactOpens200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unique_contact_sms_opt_ins

> <GetUniqueContactSMSOptIns200Response> get_unique_contact_sms_opt_ins(campaign_activity_id, opts)

GET a Unique Contacts SMS Opt-In Landing Page Report

Use this method get details about unique contacts that click a link on a landing page to opt in to receiving SMS text messages. Contacts are uniquely identified by `contact_id``.  The resulting contact data is listed with most recent activity first.

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

api_instance = ConstantContactClient::LandingPagesReportingApi.new
campaign_activity_id = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | The landing page `campaign_activity_id` (UUID's) to use to get unique contact click results.
opts = {
  limit: '100', # String | Use to limit the number of contact tracking activities to return on a single page. The default is `50` and the maximum is `500` per page.
  contacts_filter: 'Jo' # String | Use to filter the results to return only contacts that match a contacts full or partial first or last name, or email. For example: Josie or Jo.
}

begin
  # GET a Unique Contacts SMS Opt-In Landing Page Report
  result = api_instance.get_unique_contact_sms_opt_ins(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_sms_opt_ins: #{e}"
end
```

#### Using the get_unique_contact_sms_opt_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniqueContactSMSOptIns200Response>, Integer, Hash)> get_unique_contact_sms_opt_ins_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Unique Contacts SMS Opt-In Landing Page Report
  data, status_code, headers = api_instance.get_unique_contact_sms_opt_ins_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniqueContactSMSOptIns200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_sms_opt_ins_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The landing page &#x60;campaign_activity_id&#x60; (UUID&#39;s) to use to get unique contact click results. |  |
| **limit** | **String** | Use to limit the number of contact tracking activities to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |
| **contacts_filter** | **String** | Use to filter the results to return only contacts that match a contacts full or partial first or last name, or email. For example: Josie or Jo. | [optional] |

### Return type

[**GetUniqueContactSMSOptIns200Response**](GetUniqueContactSMSOptIns200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unique_contact_updates

> <GetUniqueContactUpdates200Response> get_unique_contact_updates(campaign_activity_id, opts)

GET a Unique Contacts Updates Landing Page Report

Use this method to get contact details for each contact that updated their contact data from a landing page. Contacts are uniquely identified by `contact_id`.  The resulting contact data is listed with most recent activity first.

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

api_instance = ConstantContactClient::LandingPagesReportingApi.new
campaign_activity_id = '82ee2c37-c8f8-4974-9560-ef93ad51d58z' # String | The landing page `campaign_activity_id` (UUID's) to use to get unique contact open results.
opts = {
  limit: '100', # String | Use to limit the number of contact tracking activities to return on a single page. The default is `50` and the maximum is `500` per page.
  contacts_filter: 'Jo' # String | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo.
}

begin
  # GET a Unique Contacts Updates Landing Page Report
  result = api_instance.get_unique_contact_updates(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_updates: #{e}"
end
```

#### Using the get_unique_contact_updates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUniqueContactUpdates200Response>, Integer, Hash)> get_unique_contact_updates_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Unique Contacts Updates Landing Page Report
  data, status_code, headers = api_instance.get_unique_contact_updates_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUniqueContactUpdates200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling LandingPagesReportingApi->get_unique_contact_updates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The landing page &#x60;campaign_activity_id&#x60; (UUID&#39;s) to use to get unique contact open results. |  |
| **limit** | **String** | Use to limit the number of contact tracking activities to return on a single page. The default is &#x60;50&#x60; and the maximum is &#x60;500&#x60; per page. | [optional][default to &#39;50&#39;] |
| **contacts_filter** | **String** | Use to filter the results to only include contacts that contain a certain value. This parameter does full and partial matches and applies to the contact first name, last name, and email fields. For example: Josie or Jo. | [optional] |

### Return type

[**GetUniqueContactUpdates200Response**](GetUniqueContactUpdates200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

