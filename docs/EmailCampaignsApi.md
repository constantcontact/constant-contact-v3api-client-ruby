# ConstantContactClient::EmailCampaignsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_email_campaign**](EmailCampaignsApi.md#create_email_campaign) | **POST** /emails | POST (Create) a New Email Campaign |
| [**create_resend_email_campaign**](EmailCampaignsApi.md#create_resend_email_campaign) | **POST** /emails/activities/{campaign_activity_id}/non_opener_resends | POST a Resend to Non-openers Campaign Activity |
| [**delete_email_campaign**](EmailCampaignsApi.md#delete_email_campaign) | **DELETE** /emails/{campaign_id} | DELETE an Email Campaign |
| [**delete_resend_email_campaign**](EmailCampaignsApi.md#delete_resend_email_campaign) | **DELETE** /emails/activities/{campaign_activity_id}/non_opener_resends/{resend_request_id} | DELETE a Resend to Non Openers Activity |
| [**get_all_email_campaigns**](EmailCampaignsApi.md#get_all_email_campaigns) | **GET** /emails | GET a Collection of Email Campaigns |
| [**get_email_campaign_activity**](EmailCampaignsApi.md#get_email_campaign_activity) | **GET** /emails/activities/{campaign_activity_id} | GET a Single Email Campaign Activity |
| [**get_email_campaign_by_id**](EmailCampaignsApi.md#get_email_campaign_by_id) | **GET** /emails/{campaign_id} | GET Details About a Single Email Campaign |
| [**get_email_campaign_xrefs**](EmailCampaignsApi.md#get_email_campaign_xrefs) | **GET** /emails/campaign_id_xrefs | GET a Collection of V2 and V3 API Email Campaign Identifiers |
| [**get_resend_email_campaign**](EmailCampaignsApi.md#get_resend_email_campaign) | **GET** /emails/activities/{campaign_activity_id}/non_opener_resends | GET Details for a Resend to Non-openers Campaign Activity |
| [**patch_email_campaign_name**](EmailCampaignsApi.md#patch_email_campaign_name) | **PATCH** /emails/{campaign_id} | PATCH (Update) an Email Campaign Name |
| [**update_email_campaign_activity**](EmailCampaignsApi.md#update_email_campaign_activity) | **PUT** /emails/activities/{campaign_activity_id} | PUT (Update) An Email Campaign Activity |


## create_email_campaign

> <CreateEmailCampaign200Response> create_email_campaign(create_email_campaign_request)

POST (Create) a New Email Campaign

Use this method to create a new email campaign. This method also creates new `primary_email` and `permalink` email campaign activities and associates them with the new email campaign.  The request body must contain the `name` property and the `email_campaign_activities` array. The `name` must be unique. The `email_campaign_activities` array contains the main content of your email campaign and must include `format_type`, `from_name`, `from_email`, `reply_to_email`, `subject`, and `html_content` properties. The `from_email` address you use must use a verified email address for your account. NOTE: If you create an email campaign using a legacy (V7) format, Constant Contact automatically converts it to the newer custom code format. 

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
create_email_campaign_request = ConstantContactClient::CreateEmailCampaignRequest.new({name: 'December Newsletter for Dog Lovers', email_campaign_activities: [ConstantContactClient::CreateEmailCampaignRequestEmailCampaignActivitiesInner.new({format_type: 5, from_name: 'Jake Dodge', from_email: 'jdodge@constantcontact.com', reply_to_email: 'jdodge@constantconatct.com', subject: 'Informed Daily Digest', html_content: '<html><body>[[trackingImage]] <a href="http://www.constantcontact.com">Visit ConstantContact.com!</a> </body></html>'})]}) # CreateEmailCampaignRequest | A JSON request body that contains the email content.

begin
  # POST (Create) a New Email Campaign
  result = api_instance.create_email_campaign(create_email_campaign_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->create_email_campaign: #{e}"
end
```

#### Using the create_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailCampaign200Response>, Integer, Hash)> create_email_campaign_with_http_info(create_email_campaign_request)

```ruby
begin
  # POST (Create) a New Email Campaign
  data, status_code, headers = api_instance.create_email_campaign_with_http_info(create_email_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailCampaign200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->create_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_campaign_request** | [**CreateEmailCampaignRequest**](CreateEmailCampaignRequest.md) | A JSON request body that contains the email content. |  |

### Return type

[**CreateEmailCampaign200Response**](CreateEmailCampaign200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_resend_email_campaign

> <CreateResendEmailCampaign201Response> create_resend_email_campaign(campaign_activity_id, create_resend_email_campaign_request)

POST a Resend to Non-openers Campaign Activity

Use this POST method to resend a primary campaign activity to contacts that did not open a campaign activity that has a current `status` of `Draft`, `Scheduled`, or `Done`. You can only create one resend activity per email campaign.    After an email campaign activity is sent to contacts, Constant Contact waits the specified number of `delay_days` or `delay_minutes` (properties are mutually exclusive) before resending to non-openers. If you set both `delay_days` or `delay_minutes`, `delay_minutes` is ignored in the request. You can resend to non-openers a minimum of twelve hours (720 minutes) and a maximum of up to 10 days (or 10 x 1440 minutes) after the initial send date.    

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the primary email campaign activity.
create_resend_email_campaign_request = ConstantContactClient::CreateResendEmailCampaignRequest.new({resend_subject: 'Our Big Sale is Coming Soon!'}) # CreateResendEmailCampaignRequest | A JSON request body that specifies when to resend the campaign activity to non-openers.

begin
  # POST a Resend to Non-openers Campaign Activity
  result = api_instance.create_resend_email_campaign(campaign_activity_id, create_resend_email_campaign_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->create_resend_email_campaign: #{e}"
end
```

#### Using the create_resend_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateResendEmailCampaign201Response>, Integer, Hash)> create_resend_email_campaign_with_http_info(campaign_activity_id, create_resend_email_campaign_request)

```ruby
begin
  # POST a Resend to Non-openers Campaign Activity
  data, status_code, headers = api_instance.create_resend_email_campaign_with_http_info(campaign_activity_id, create_resend_email_campaign_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateResendEmailCampaign201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->create_resend_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the primary email campaign activity. |  |
| **create_resend_email_campaign_request** | [**CreateResendEmailCampaignRequest**](CreateResendEmailCampaignRequest.md) | A JSON request body that specifies when to resend the campaign activity to non-openers. |  |

### Return type

[**CreateResendEmailCampaign201Response**](CreateResendEmailCampaign201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_campaign

> delete_email_campaign(campaign_id)

DELETE an Email Campaign

Use this method to delete an email campaign and the email campaign activities associated with the email campaign. You cannot delete an email campaign when it has a `Scheduled` status.  Constant Contact users can restore deleted email campaigns using the UI. 

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the email campaign you are deleting.

begin
  # DELETE an Email Campaign
  api_instance.delete_email_campaign(campaign_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->delete_email_campaign: #{e}"
end
```

#### Using the delete_email_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_email_campaign_with_http_info(campaign_id)

```ruby
begin
  # DELETE an Email Campaign
  data, status_code, headers = api_instance.delete_email_campaign_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->delete_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The unique ID for the email campaign you are deleting. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_resend_email_campaign

> delete_resend_email_campaign(campaign_activity_id, resend_request_id)

DELETE a Resend to Non Openers Activity

Use this `DELETE` method to delete (unschedule) a resend to non openers activity.

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the primary email campaign activity.
resend_request_id = '389093' # String | The unique ID associated with the resend for the email campaign activity (for example: `389093`). If the email campaign activity is currently in draft status, specify `DRAFT` as the ID.

begin
  # DELETE a Resend to Non Openers Activity
  api_instance.delete_resend_email_campaign(campaign_activity_id, resend_request_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->delete_resend_email_campaign: #{e}"
end
```

#### Using the delete_resend_email_campaign_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_resend_email_campaign_with_http_info(campaign_activity_id, resend_request_id)

```ruby
begin
  # DELETE a Resend to Non Openers Activity
  data, status_code, headers = api_instance.delete_resend_email_campaign_with_http_info(campaign_activity_id, resend_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->delete_resend_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the primary email campaign activity. |  |
| **resend_request_id** | **String** | The unique ID associated with the resend for the email campaign activity (for example: &#x60;389093&#x60;). If the email campaign activity is currently in draft status, specify &#x60;DRAFT&#x60; as the ID. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_email_campaigns

> <GetAllEmailCampaigns200Response> get_all_email_campaigns(opts)

GET a Collection of Email Campaigns

Use this method to list and get details about your email campaigns. By default, this method returns all email campaigns for the user account including deleted email campaigns. To get email campaigns within a date-range, use the `after_date` and `before_date` query parameters.  This endpoint does not return campaign activity details for each email campaign in the collection. To get email campaign activity details for a single email campaign, use the GET `/emails/{campaign_id}` endpoint.\" <div class=\"Msg\"><p class=\"note-text\">This method does not currently support filtering results using the email campaign creation date.</p></div> 

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
opts = {
  limit: 56, # Integer | Specifies the number of campaigns to display on each page of output that is returned (from return 1 - 500). The default returns 50 campaigns per page.
  before_date: Time.parse('2021-01-10T11:42:57.000Z'), # Time | Use to return email campaigns with `updated_at` timestamps that are before a specific date and time (in ISO-8601 format). Use with the `after_date` query parameter to get email campaigns sent within a specific date range.
  after_date: Time.parse('2021-03-10T11:42:57.000Z') # Time | Use to return email campaigns with last `updated_at` timestamps that are after a specific date and time (in ISO-8601 format). Use with the `before_date` query parameter to get email campaigns sent within a specific date range.
}

begin
  # GET a Collection of Email Campaigns
  result = api_instance.get_all_email_campaigns(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_all_email_campaigns: #{e}"
end
```

#### Using the get_all_email_campaigns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllEmailCampaigns200Response>, Integer, Hash)> get_all_email_campaigns_with_http_info(opts)

```ruby
begin
  # GET a Collection of Email Campaigns
  data, status_code, headers = api_instance.get_all_email_campaigns_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllEmailCampaigns200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_all_email_campaigns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Specifies the number of campaigns to display on each page of output that is returned (from return 1 - 500). The default returns 50 campaigns per page. | [optional][default to 50] |
| **before_date** | **Time** | Use to return email campaigns with &#x60;updated_at&#x60; timestamps that are before a specific date and time (in ISO-8601 format). Use with the &#x60;after_date&#x60; query parameter to get email campaigns sent within a specific date range. | [optional] |
| **after_date** | **Time** | Use to return email campaigns with last &#x60;updated_at&#x60; timestamps that are after a specific date and time (in ISO-8601 format). Use with the &#x60;before_date&#x60; query parameter to get email campaigns sent within a specific date range. | [optional] |

### Return type

[**GetAllEmailCampaigns200Response**](GetAllEmailCampaigns200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_activity

> <GetEmailCampaignActivity200Response> get_email_campaign_activity(campaign_activity_id, opts)

GET a Single Email Campaign Activity

Use this method to return a specific email campaign activity. Each email campaign activity contains the email content, metadata, and styling information of an email. Email campaign activities can also contain either contact lists or segments. Constant Contact uses this information to determine who to send the email campaign activity to when you schedule it. You cannot get email campaign activities that have a `REMOVED` status. 

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity.
opts = {
  include: 'physical_address_in_footer' # String | Use the `include` query parameter to enter a comma separated list of additional email campaign activity properties for the V3 API to return. Valid values are `physical_address_in_footer`, `permalink_url`, `html_content`, and `document_properties`.
}

begin
  # GET a Single Email Campaign Activity
  result = api_instance.get_email_campaign_activity(campaign_activity_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_activity: #{e}"
end
```

#### Using the get_email_campaign_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaignActivity200Response>, Integer, Hash)> get_email_campaign_activity_with_http_info(campaign_activity_id, opts)

```ruby
begin
  # GET a Single Email Campaign Activity
  data, status_code, headers = api_instance.get_email_campaign_activity_with_http_info(campaign_activity_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaignActivity200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. |  |
| **include** | **String** | Use the &#x60;include&#x60; query parameter to enter a comma separated list of additional email campaign activity properties for the V3 API to return. Valid values are &#x60;physical_address_in_footer&#x60;, &#x60;permalink_url&#x60;, &#x60;html_content&#x60;, and &#x60;document_properties&#x60;. | [optional] |

### Return type

[**GetEmailCampaignActivity200Response**](GetEmailCampaignActivity200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_by_id

> <CreateEmailCampaign200Response> get_email_campaign_by_id(campaign_id)

GET Details About a Single Email Campaign

Use this method to get details about a single email campaign and campaign related activities. Details include the email campaign name, current status, create date, last update date, and a list of campaign activities; including the `campaign_activity_id` and `role`.

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The ID (UUID format) that uniquely identifies this email campaign.

begin
  # GET Details About a Single Email Campaign
  result = api_instance.get_email_campaign_by_id(campaign_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_by_id: #{e}"
end
```

#### Using the get_email_campaign_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailCampaign200Response>, Integer, Hash)> get_email_campaign_by_id_with_http_info(campaign_id)

```ruby
begin
  # GET Details About a Single Email Campaign
  data, status_code, headers = api_instance.get_email_campaign_by_id_with_http_info(campaign_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailCampaign200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The ID (UUID format) that uniquely identifies this email campaign. |  |

### Return type

[**CreateEmailCampaign200Response**](CreateEmailCampaign200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_xrefs

> <GetEmailCampaignXrefs200Response> get_email_campaign_xrefs(v2_email_campaign_ids)

GET a Collection of V2 and V3 API Email Campaign Identifiers

<div class=\"Msg Msg--warning\"><p class=\"note-text\">Use this endpoint to migrate your locally stored V2 email campaign data to the new V3 format. Developers are expected to use this endpoint sparingly. This endpoint is NOT intended for regular or repeated use. Constant Contact will eventually deprecate and remove this endpoint.</p></div>  Use this method to migrate your local V2 API email data to the V3 API format. For each value that you provide in the `v2_email_campaign_ids` query parameter, this method returns the corresponding V3 `campaign_id` and V3 `campaign_activity_id` UUID value. For more information on the changes to the email campaign resource model, see [V3 Email Campaign Resource Changes](/api_guide/v3_v2_email_campaign_deltas.html) in the API guide. 

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
v2_email_campaign_ids = '1100567546598,1604567396117,12002485195578' # String | Comma separated list of V2 API `campaignId` values. You can enter up to 50 V2 `campaignId` values in each request.

begin
  # GET a Collection of V2 and V3 API Email Campaign Identifiers
  result = api_instance.get_email_campaign_xrefs(v2_email_campaign_ids)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_xrefs: #{e}"
end
```

#### Using the get_email_campaign_xrefs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaignXrefs200Response>, Integer, Hash)> get_email_campaign_xrefs_with_http_info(v2_email_campaign_ids)

```ruby
begin
  # GET a Collection of V2 and V3 API Email Campaign Identifiers
  data, status_code, headers = api_instance.get_email_campaign_xrefs_with_http_info(v2_email_campaign_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaignXrefs200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_email_campaign_xrefs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **v2_email_campaign_ids** | **String** | Comma separated list of V2 API &#x60;campaignId&#x60; values. You can enter up to 50 V2 &#x60;campaignId&#x60; values in each request. |  |

### Return type

[**GetEmailCampaignXrefs200Response**](GetEmailCampaignXrefs200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resend_email_campaign

> <Array<GetResendEmailCampaign200ResponseInner>> get_resend_email_campaign(campaign_activity_id)

GET Details for a Resend to Non-openers Campaign Activity

Get details about a resend to non-openers campaign activity. If resend activity does not exist for the specified `campaign_activity_id`, an empty list is returned in the results. You can only create one resend activity per email campaign.

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the primary email campaign activity.

begin
  # GET Details for a Resend to Non-openers Campaign Activity
  result = api_instance.get_resend_email_campaign(campaign_activity_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_resend_email_campaign: #{e}"
end
```

#### Using the get_resend_email_campaign_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetResendEmailCampaign200ResponseInner>>, Integer, Hash)> get_resend_email_campaign_with_http_info(campaign_activity_id)

```ruby
begin
  # GET Details for a Resend to Non-openers Campaign Activity
  data, status_code, headers = api_instance.get_resend_email_campaign_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetResendEmailCampaign200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->get_resend_email_campaign_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the primary email campaign activity. |  |

### Return type

[**Array&lt;GetResendEmailCampaign200ResponseInner&gt;**](GetResendEmailCampaign200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_email_campaign_name

> <CreateEmailCampaign200Response> patch_email_campaign_name(campaign_id, patch_email_campaign_name_request)

PATCH (Update) an Email Campaign Name

Use this method to rename an email campaign. The name is not visible to contacts. The name must be unique and cannot exceed 80 characters. You cannot rename email campaigns that have a `Removed` status.

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique identifier for an email campaign.
patch_email_campaign_name_request = ConstantContactClient::PatchEmailCampaignNameRequest.new({name: 'December Newsletter for Dog Lovers'}) # PatchEmailCampaignNameRequest | A JSON payload that contains the new email campaign name.

begin
  # PATCH (Update) an Email Campaign Name
  result = api_instance.patch_email_campaign_name(campaign_id, patch_email_campaign_name_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->patch_email_campaign_name: #{e}"
end
```

#### Using the patch_email_campaign_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailCampaign200Response>, Integer, Hash)> patch_email_campaign_name_with_http_info(campaign_id, patch_email_campaign_name_request)

```ruby
begin
  # PATCH (Update) an Email Campaign Name
  data, status_code, headers = api_instance.patch_email_campaign_name_with_http_info(campaign_id, patch_email_campaign_name_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailCampaign200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->patch_email_campaign_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | The unique identifier for an email campaign. |  |
| **patch_email_campaign_name_request** | [**PatchEmailCampaignNameRequest**](PatchEmailCampaignNameRequest.md) | A JSON payload that contains the new email campaign name. |  |

### Return type

[**CreateEmailCampaign200Response**](CreateEmailCampaign200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_campaign_activity

> <GetEmailCampaignActivity200Response> update_email_campaign_activity(campaign_activity_id, get_email_campaign_activity200_response)

PUT (Update) An Email Campaign Activity

Use this method to update an email campaign activity by including the complete email campaign activity with your changes in the request body. The request body requires the `from_name`, `from_email`, `reply_to_email`, and `subject` properties.  You can only update email campaign activities that have the `primary_email` role and that are in `DRAFT` or `Done` status. When you use a PUT method to update a resource, the V3 API overwrites any properties that are missing in the request body. However, the V3 API does not overwrite subresources that you omit in the request body or missing properties in subresources. This method considers `physical_address_in_footer`, `document_properties`, `html_content`, and `permalink_url` subresources of the email campaign activity. 

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

api_instance = ConstantContactClient::EmailCampaignsApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for the email campaign activity you are updating.
get_email_campaign_activity200_response = ConstantContactClient::GetEmailCampaignActivity200Response.new({from_email: 'jdodge@constantcontact.com', from_name: 'Jake Dodge', reply_to_email: 'jdodge@constantcontact.com', subject: 'Holiday Special Newsletter'}) # GetEmailCampaignActivity200Response | A request body payload that contains the complete email campaign activity with your changes.

begin
  # PUT (Update) An Email Campaign Activity
  result = api_instance.update_email_campaign_activity(campaign_activity_id, get_email_campaign_activity200_response)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->update_email_campaign_activity: #{e}"
end
```

#### Using the update_email_campaign_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaignActivity200Response>, Integer, Hash)> update_email_campaign_activity_with_http_info(campaign_activity_id, get_email_campaign_activity200_response)

```ruby
begin
  # PUT (Update) An Email Campaign Activity
  data, status_code, headers = api_instance.update_email_campaign_activity_with_http_info(campaign_activity_id, get_email_campaign_activity200_response)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaignActivity200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailCampaignsApi->update_email_campaign_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for the email campaign activity you are updating. |  |
| **get_email_campaign_activity200_response** | [**GetEmailCampaignActivity200Response**](GetEmailCampaignActivity200Response.md) | A request body payload that contains the complete email campaign activity with your changes. |  |

### Return type

[**GetEmailCampaignActivity200Response**](GetEmailCampaignActivity200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

