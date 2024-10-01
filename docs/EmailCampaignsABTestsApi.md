# ConstantContactClient::EmailCampaignsABTestsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ab_test_email_campaign**](EmailCampaignsABTestsApi.md#create_ab_test_email_campaign) | **POST** /emails/activities/{campaign_activity_id}/abtest | POST (Create) an A/B Test for an Email Campaign Activity |
| [**delete_ab_test_email_campaign**](EmailCampaignsABTestsApi.md#delete_ab_test_email_campaign) | **DELETE** /emails/activities/{campaign_activity_id}/abtest | DELETE an A/B Test for an Email Campaign Activity |
| [**get_ab_test_email_campaign**](EmailCampaignsABTestsApi.md#get_ab_test_email_campaign) | **GET** /emails/activities/{campaign_activity_id}/abtest | GET A/B Test Details for an Email Campaign Activity |


## create_ab_test_email_campaign

> <GetABTestEmailCampaign200Response> create_ab_test_email_campaign(campaign_activity_id, get_ab_test_email_campaign200_response)

POST (Create) an A/B Test for an Email Campaign Activity

Use this method to create a new A/B test for a primary email campaign activity. You must specify an alternative subject line, the percentage of contact to use for the A/B test, and the number of hours to wait after the A/B test is sent before determining the winning subject line. To create an A/B test, the campaign must have a `current_status` of `DRAFT`. When you create an A/B test, the `type` changes from Newsletter (code= `10`) to A/B Test (code= `57`).

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

api_instance = ConstantContactClient::EmailCampaignsABTestsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the primary email campaign activity.
get_ab_test_email_campaign200_response = ConstantContactClient::GetABTestEmailCampaign200Response.new({alternative_subject: 'Reminder: Our Biggest Sale of the Year is Coming Soon!', test_size: 30, winner_wait_duration: 24}) # GetABTestEmailCampaign200Response | Specify the `alternative_subject` line, `test_size` percentage of contacts (value must from `5` to `50` inclusively), and the `winner_wait_duration` (value must be `6`, `12`, `24`, or `48` hours).

begin
  # POST (Create) an A/B Test for an Email Campaign Activity
  result = api_instance.create_ab_test_email_campaign(campaign_activity_id, get_ab_test_email_campaign200_response)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsABTestsApi->create_ab_test_email_campaign: #{e}"
end
```

#### Using the create_ab_test_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetABTestEmailCampaign200Response>, Integer, Hash)> create_ab_test_email_campaign_with_http_info(campaign_activity_id, get_ab_test_email_campaign200_response)

```ruby
begin
  # POST (Create) an A/B Test for an Email Campaign Activity
  data, status_code, headers = api_instance.create_ab_test_email_campaign_with_http_info(campaign_activity_id, get_ab_test_email_campaign200_response)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetABTestEmailCampaign200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsABTestsApi->create_ab_test_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the primary email campaign activity. |  |
| **get_ab_test_email_campaign200_response** | [**GetABTestEmailCampaign200Response**](GetABTestEmailCampaign200Response.md) | Specify the &#x60;alternative_subject&#x60; line, &#x60;test_size&#x60; percentage of contacts (value must from &#x60;5&#x60; to &#x60;50&#x60; inclusively), and the &#x60;winner_wait_duration&#x60; (value must be &#x60;6&#x60;, &#x60;12&#x60;, &#x60;24&#x60;, or &#x60;48&#x60; hours). |  |

### Return type

[**GetABTestEmailCampaign200Response**](GetABTestEmailCampaign200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ab_test_email_campaign

> delete_ab_test_email_campaign(campaign_activity_id)

DELETE an A/B Test for an Email Campaign Activity

Deletes an A/B Test on an primary email campaign activity. You can only delete A/B tests that have a `current_status` of `Draft`. Deleting an A/B tests reverts the email campaign activity `type` from A/B Test (code= `57`) back to NewsLetter (code= `10`). Constant Contact uses the original subject line, rather than the alternate A/B test subject line, when an A/B test is deleted.

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

api_instance = ConstantContactClient::EmailCampaignsABTestsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the primary email campaign activity.

begin
  # DELETE an A/B Test for an Email Campaign Activity
  api_instance.delete_ab_test_email_campaign(campaign_activity_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsABTestsApi->delete_ab_test_email_campaign: #{e}"
end
```

#### Using the delete_ab_test_email_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_ab_test_email_campaign_with_http_info(campaign_activity_id)

```ruby
begin
  # DELETE an A/B Test for an Email Campaign Activity
  data, status_code, headers = api_instance.delete_ab_test_email_campaign_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsABTestsApi->delete_ab_test_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the primary email campaign activity. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_ab_test_email_campaign

> <GetABTestEmailCampaign200Response> get_ab_test_email_campaign(campaign_activity_id)

GET A/B Test Details for an Email Campaign Activity

Use this method to get A/B test details for a primary email campaign activity, such as the alternate email subject line, the contact test percentage size, and the number of hours to wait to determine the winning subject line to use. Currently, A/B tests support subject line only.

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

api_instance = ConstantContactClient::EmailCampaignsABTestsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the primary email campaign activity.

begin
  # GET A/B Test Details for an Email Campaign Activity
  result = api_instance.get_ab_test_email_campaign(campaign_activity_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsABTestsApi->get_ab_test_email_campaign: #{e}"
end
```

#### Using the get_ab_test_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetABTestEmailCampaign200Response>, Integer, Hash)> get_ab_test_email_campaign_with_http_info(campaign_activity_id)

```ruby
begin
  # GET A/B Test Details for an Email Campaign Activity
  data, status_code, headers = api_instance.get_ab_test_email_campaign_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetABTestEmailCampaign200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsABTestsApi->get_ab_test_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the primary email campaign activity. |  |

### Return type

[**GetABTestEmailCampaign200Response**](GetABTestEmailCampaign200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

