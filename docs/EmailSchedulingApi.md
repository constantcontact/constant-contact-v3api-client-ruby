# ConstantContactClient::EmailSchedulingApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_email_campaign_activity_preview**](EmailSchedulingApi.md#get_email_campaign_activity_preview) | **GET** /emails/activities/{campaign_activity_id}/previews | GET the HTML Preview of an Email Campaign Activity |
| [**get_email_campaign_activity_schedule**](EmailSchedulingApi.md#get_email_campaign_activity_schedule) | **GET** /emails/activities/{campaign_activity_id}/schedules | GET an Email Campaign Activity Schedule |
| [**get_email_campaign_activity_send_history**](EmailSchedulingApi.md#get_email_campaign_activity_send_history) | **GET** /emails/activities/{campaign_activity_id}/send_history | GET the Send History of an Email Campaign Activity |
| [**schedule_email_campaign_activity**](EmailSchedulingApi.md#schedule_email_campaign_activity) | **POST** /emails/activities/{campaign_activity_id}/schedules | POST (Create) an Email Campaign Activity Schedule |
| [**test_send_email_campaign_activity**](EmailSchedulingApi.md#test_send_email_campaign_activity) | **POST** /emails/activities/{campaign_activity_id}/tests | POST Test Send an Email Campaign Activity |
| [**unschedule_email_campaign_activity**](EmailSchedulingApi.md#unschedule_email_campaign_activity) | **DELETE** /emails/activities/{campaign_activity_id}/schedules | DELETE an Email Campaign Activity Schedule |


## get_email_campaign_activity_preview

> <GetEmailCampaignActivityPreview200Response> get_email_campaign_activity_preview(campaign_activity_id)

GET the HTML Preview of an Email Campaign Activity

Use this method to get the HTML preview of an email campaign activity. The HTML preview allows you to verify how the email campaign activity will look before you send it to contacts.  Custom code emails (`format_type` 5) use the Constant Contact account owner's contact information to process contact, custom field, and account variables in the preview.  This method returns the HTML preview encoded as a JSON string. You will need to decode the string before you can use it as valid HTML. 

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

api_instance = ConstantContactClient::EmailSchedulingApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity.

begin
  # GET the HTML Preview of an Email Campaign Activity
  result = api_instance.get_email_campaign_activity_preview(campaign_activity_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->get_email_campaign_activity_preview: #{e}"
end
```

#### Using the get_email_campaign_activity_preview_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailCampaignActivityPreview200Response>, Integer, Hash)> get_email_campaign_activity_preview_with_http_info(campaign_activity_id)

```ruby
begin
  # GET the HTML Preview of an Email Campaign Activity
  data, status_code, headers = api_instance.get_email_campaign_activity_preview_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailCampaignActivityPreview200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->get_email_campaign_activity_preview_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. |  |

### Return type

[**GetEmailCampaignActivityPreview200Response**](GetEmailCampaignActivityPreview200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_activity_schedule

> <Array<GetEmailCampaignActivitySchedule200ResponseInner>> get_email_campaign_activity_schedule(campaign_activity_id)

GET an Email Campaign Activity Schedule

Use this method to return the current schedule for an email campaign activity. This schedule contains the date that Constant Contact will send the email campaign activity to contacts. If the email campaign activity is not in `SCHEDULED` status, this method returns an empty array and a 200 response code.

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

api_instance = ConstantContactClient::EmailSchedulingApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity.

begin
  # GET an Email Campaign Activity Schedule
  result = api_instance.get_email_campaign_activity_schedule(campaign_activity_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->get_email_campaign_activity_schedule: #{e}"
end
```

#### Using the get_email_campaign_activity_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetEmailCampaignActivitySchedule200ResponseInner>>, Integer, Hash)> get_email_campaign_activity_schedule_with_http_info(campaign_activity_id)

```ruby
begin
  # GET an Email Campaign Activity Schedule
  data, status_code, headers = api_instance.get_email_campaign_activity_schedule_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetEmailCampaignActivitySchedule200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->get_email_campaign_activity_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. |  |

### Return type

[**Array&lt;GetEmailCampaignActivitySchedule200ResponseInner&gt;**](GetEmailCampaignActivitySchedule200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_campaign_activity_send_history

> <Array<GetEmailCampaignActivitySendHistory200ResponseInner>> get_email_campaign_activity_send_history(campaign_activity_id)

GET the Send History of an Email Campaign Activity

Use this method to return the send history of an email campaign activity. This method returns the send history as an array containing an object for each time you sent a specific email campaign activity to contacts.   Each send history object contains the email campaign activity send date, the number of contacts it was sent to, and the contact lists or segments used to send it. Each send history object also includes if the send attempt completed or encountered an error, and the reason why each error occurred. This method returns results in ascending order starting with the first send attempt.   If the email campaign activity has not been sent to contacts, this method returns a 200 response and an empty array. 

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

api_instance = ConstantContactClient::EmailSchedulingApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity. You can return the send history for `primary_email` and `resend` role email campaign activities.

begin
  # GET the Send History of an Email Campaign Activity
  result = api_instance.get_email_campaign_activity_send_history(campaign_activity_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->get_email_campaign_activity_send_history: #{e}"
end
```

#### Using the get_email_campaign_activity_send_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetEmailCampaignActivitySendHistory200ResponseInner>>, Integer, Hash)> get_email_campaign_activity_send_history_with_http_info(campaign_activity_id)

```ruby
begin
  # GET the Send History of an Email Campaign Activity
  data, status_code, headers = api_instance.get_email_campaign_activity_send_history_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetEmailCampaignActivitySendHistory200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->get_email_campaign_activity_send_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. You can return the send history for &#x60;primary_email&#x60; and &#x60;resend&#x60; role email campaign activities. |  |

### Return type

[**Array&lt;GetEmailCampaignActivitySendHistory200ResponseInner&gt;**](GetEmailCampaignActivitySendHistory200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## schedule_email_campaign_activity

> <Array<GetEmailCampaignActivitySchedule200ResponseInner>> schedule_email_campaign_activity(campaign_activity_id, schedule_email_campaign_activity_request)

POST (Create) an Email Campaign Activity Schedule

Use this method to schedule when Constant Contact will send an email campaign activity to contacts. Use the `scheduled_date` request body property to enter the ISO-8601 format date that you want Constant Contact to send the email campaign activity on.   Before you schedule an email campaign activity, you must update the email campaign activity and specify which contacts you want Constant Contact to send the email to. When you make a PUT call to update an email campaign activity, use the `contact_list_ids` or `segment_ids` array to add contacts.  You can only schedule email campaign activities that have the `primary_email` role and are in `DRAFT`, `DONE`, or `ERROR` status. When you schedule an email campaign activity in `DONE` status, Constant Contact does not send the email campaign activity to contacts that already received it. Constant Contact only sends the email campaign activity to any new contacts in the contact lists or segment you use. 

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

api_instance = ConstantContactClient::EmailSchedulingApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity. You can only schedule email campaign activities that have the `primary_email` role.
schedule_email_campaign_activity_request = ConstantContactClient::ScheduleEmailCampaignActivityRequest.new({scheduled_date: Time.now}) # ScheduleEmailCampaignActivityRequest | A request body payload that contains the date that you want Constant Contact to send your email campaign activity on. Use `\"0\"` as the date to have Constant Contact immediately send the email campaign activity.

begin
  # POST (Create) an Email Campaign Activity Schedule
  result = api_instance.schedule_email_campaign_activity(campaign_activity_id, schedule_email_campaign_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->schedule_email_campaign_activity: #{e}"
end
```

#### Using the schedule_email_campaign_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetEmailCampaignActivitySchedule200ResponseInner>>, Integer, Hash)> schedule_email_campaign_activity_with_http_info(campaign_activity_id, schedule_email_campaign_activity_request)

```ruby
begin
  # POST (Create) an Email Campaign Activity Schedule
  data, status_code, headers = api_instance.schedule_email_campaign_activity_with_http_info(campaign_activity_id, schedule_email_campaign_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetEmailCampaignActivitySchedule200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->schedule_email_campaign_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. You can only schedule email campaign activities that have the &#x60;primary_email&#x60; role. |  |
| **schedule_email_campaign_activity_request** | [**ScheduleEmailCampaignActivityRequest**](ScheduleEmailCampaignActivityRequest.md) | A request body payload that contains the date that you want Constant Contact to send your email campaign activity on. Use &#x60;\&quot;0\&quot;&#x60; as the date to have Constant Contact immediately send the email campaign activity. |  |

### Return type

[**Array&lt;GetEmailCampaignActivitySchedule200ResponseInner&gt;**](GetEmailCampaignActivitySchedule200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## test_send_email_campaign_activity

> test_send_email_campaign_activity(campaign_activity_id, test_send_email_campaign_activity_request)

POST Test Send an Email Campaign Activity

Use this method to send a test email to specific email addresses. Test emails allow you to verify how the email campaign activity will look before you send it to contacts. This method uses the `email_addresses` array in the request body to determine the recipients of the test email. The test email does not process any dynamic content in the email campaign activity. Dynamic content includes contact and custom field variables.  You can send up to 50 test emails each day. Each recipient you add to the `email_addresses` array in the request body counts towards this limit. Successfully sending a test email returns a 204 response code without a response body. 

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

api_instance = ConstantContactClient::EmailSchedulingApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity. You can only test send email campaign activities that have the `primary_email` role.
test_send_email_campaign_activity_request = ConstantContactClient::TestSendEmailCampaignActivityRequest.new({email_addresses: ['dlang@example.com']}) # TestSendEmailCampaignActivityRequest | A JSON request body that contains the recipients of the test email and an optional personal message.

begin
  # POST Test Send an Email Campaign Activity
  api_instance.test_send_email_campaign_activity(campaign_activity_id, test_send_email_campaign_activity_request)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->test_send_email_campaign_activity: #{e}"
end
```

#### Using the test_send_email_campaign_activity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> test_send_email_campaign_activity_with_http_info(campaign_activity_id, test_send_email_campaign_activity_request)

```ruby
begin
  # POST Test Send an Email Campaign Activity
  data, status_code, headers = api_instance.test_send_email_campaign_activity_with_http_info(campaign_activity_id, test_send_email_campaign_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->test_send_email_campaign_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. You can only test send email campaign activities that have the &#x60;primary_email&#x60; role. |  |
| **test_send_email_campaign_activity_request** | [**TestSendEmailCampaignActivityRequest**](TestSendEmailCampaignActivityRequest.md) | A JSON request body that contains the recipients of the test email and an optional personal message. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## unschedule_email_campaign_activity

> unschedule_email_campaign_activity(campaign_activity_id)

DELETE an Email Campaign Activity Schedule

Use this method to unschedule an email campaign activity by deleting the schedule. You can only unschedule email campaign activities that are in `SCHEDULED` status. Unscheduling reverts the email campaign activity to the status prior to `SCHEDULED`.

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

api_instance = ConstantContactClient::EmailSchedulingApi.new
campaign_activity_id = '91569d46-00e4-4a4d-9a4c-d17d98740d04' # String | The unique ID for an email campaign activity.

begin
  # DELETE an Email Campaign Activity Schedule
  api_instance.unschedule_email_campaign_activity(campaign_activity_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->unschedule_email_campaign_activity: #{e}"
end
```

#### Using the unschedule_email_campaign_activity_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unschedule_email_campaign_activity_with_http_info(campaign_activity_id)

```ruby
begin
  # DELETE an Email Campaign Activity Schedule
  data, status_code, headers = api_instance.unschedule_email_campaign_activity_with_http_info(campaign_activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling EmailSchedulingApi->unschedule_email_campaign_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_activity_id** | **String** | The unique ID for an email campaign activity. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

