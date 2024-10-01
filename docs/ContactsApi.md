# ConstantContactClient::ContactsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact**](ContactsApi.md#create_contact) | **POST** /contacts | POST (create) a Contact |
| [**create_or_update_contact**](ContactsApi.md#create_or_update_contact) | **POST** /contacts/sign_up_form | Create or Update a Contact |
| [**delete_contact**](ContactsApi.md#delete_contact) | **DELETE** /contacts/{contact_id} | DELETE a Contact |
| [**get_all_contacts**](ContactsApi.md#get_all_contacts) | **GET** /contacts | GET Contacts Collection |
| [**get_contact_by_id**](ContactsApi.md#get_contact_by_id) | **GET** /contacts/{contact_id} | GET a Contact |
| [**get_contact_counts**](ContactsApi.md#get_contact_counts) | **GET** /contacts/counts | GET Contact Consent Counts |
| [**get_contact_id_xrefs**](ContactsApi.md#get_contact_id_xrefs) | **GET** /contacts/contact_id_xrefs | GET a collection of V2 and V3 API contact IDs |
| [**get_sms_engagement_history**](ContactsApi.md#get_sms_engagement_history) | **GET** /contacts/sms_engagement_history/{contact_id} | GET SMS Engagement History for a Contact |
| [**update_contact**](ContactsApi.md#update_contact) | **PUT** /contacts/{contact_id} | PUT (update) a Contact |


## create_contact

> <GetContactById200Response> create_contact(create_contact_request)

POST (create) a Contact

Creates a new contact resource; you must include the `create_source` property and at least one of the following properties when creating a new contact: `first_name`, `last_name`, or `email_address` (`email_address` must be unique for each contact).

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

api_instance = ConstantContactClient::ContactsApi.new
create_contact_request = ConstantContactClient::CreateContactRequest.new # CreateContactRequest | The JSON payload defining the contact

begin
  # POST (create) a Contact
  result = api_instance.create_contact(create_contact_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->create_contact: #{e}"
end
```

#### Using the create_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactById200Response>, Integer, Hash)> create_contact_with_http_info(create_contact_request)

```ruby
begin
  # POST (create) a Contact
  data, status_code, headers = api_instance.create_contact_with_http_info(create_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactById200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->create_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_contact_request** | [**CreateContactRequest**](CreateContactRequest.md) | The JSON payload defining the contact |  |

### Return type

[**GetContactById200Response**](GetContactById200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_or_update_contact

> <CreateOrUpdateContact200Response> create_or_update_contact(create_or_update_contact_request)

Create or Update a Contact

Use this method to create a new contact or update an existing contact. This method uses the `email_address` string value you include in the request body to determine if it should create an new contact or update an existing contact.  Updates to existing contacts are partial updates. This method only updates the contact properties you include in the request body. Updates append new contact lists or custom fields to the existing `list_memberships` or `custom_fields` arrays. <div class=\"Msg\"><p class=\"note-text\">Only use this method when a contact gives you their explicit permission to send them emails. It is a violation of US and Canadian anti-spam laws, as well as a serious violation of the Constant Contact Terms of Service to use the Opt-in features of the API to opt a contact back in without his or her own action and consent.</p></div>  When this method creates a new contact, it returns a 201 response code.  When this method updates an existing contact, it returns a 200 response code. Updating a deleted contact restores the contact.  The method automatically modifies the contact's `permission_to_send` and `opt_in_source` properties depending on the [Confirmed Opt-In](https://knowledgebase.constantcontact.com/articles/KnowledgeBase/5533-obtain-permission-to-send-email-campaigns-to-your-contacts-by-using-confirmed-opt-in) Constant Contact account setting:  If Confirmed Opt-in is _enabled_, this method automatically sets the `permission_to_send` property as pending\\_confirmation for new contacts.   If Confirmed Opt-in is _disabled_, this method automatically sets the `permission_to_send` property as explicit and the `opt_in_source` property as `Contact` for new contacts. Updated contacts have their `permission_to_send` property set as explicit.       

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

api_instance = ConstantContactClient::ContactsApi.new
create_or_update_contact_request = ConstantContactClient::CreateOrUpdateContactRequest.new({email_address: 'jdodge@example.com', list_memberships: ['07936f78-662a-11eb-af0a-fa163e56c9b0']}) # CreateOrUpdateContactRequest | A JSON request body payload that contains the contact resource you are creating or updating. The request body must contain the `email_address` property and the `list_memberships` array.

begin
  # Create or Update a Contact
  result = api_instance.create_or_update_contact(create_or_update_contact_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->create_or_update_contact: #{e}"
end
```

#### Using the create_or_update_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateOrUpdateContact200Response>, Integer, Hash)> create_or_update_contact_with_http_info(create_or_update_contact_request)

```ruby
begin
  # Create or Update a Contact
  data, status_code, headers = api_instance.create_or_update_contact_with_http_info(create_or_update_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateOrUpdateContact200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->create_or_update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_or_update_contact_request** | [**CreateOrUpdateContactRequest**](CreateOrUpdateContactRequest.md) | A JSON request body payload that contains the contact resource you are creating or updating. The request body must contain the &#x60;email_address&#x60; property and the &#x60;list_memberships&#x60; array. |  |

### Return type

[**CreateOrUpdateContact200Response**](CreateOrUpdateContact200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_contact

> delete_contact(contact_id)

DELETE a Contact

Deletes the contact identified by the contact_id path parameter. Deleted contacts won't receive email from you, and they don't count as active contacts. Unlike unsubscribed contacts, deleted contacts can be revived, or added back to an account. Learn how to [revive deleted contacts](/api_guide/contacts_delete.html#revive).

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

api_instance = ConstantContactClient::ContactsApi.new
contact_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | Unique ID of contact to DELETE

begin
  # DELETE a Contact
  api_instance.delete_contact(contact_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->delete_contact: #{e}"
end
```

#### Using the delete_contact_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_contact_with_http_info(contact_id)

```ruby
begin
  # DELETE a Contact
  data, status_code, headers = api_instance.delete_contact_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->delete_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Unique ID of contact to DELETE |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_contacts

> <GetAllContacts200Response> get_all_contacts(opts)

GET Contacts Collection

Use this method to return a collection of contacts. Use the query parameters to search for contacts that match specific contact properties and subresourse properties as criteria. For example, you can search using the contact's `email` address, `lists` memberships, and by the date range that a contact was created or updated. Use the `limit` query parameter to limit the number of results returned per page. Use the `include` query parameter to include contact sub-resources in the response and `include_count` to include the total number of contacts that meet your specified search criteria.  By default, this method returns all contacts that are not deleted. Use the `status` query parameter with the value `all` to return all contacts including deleted contacts.

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

api_instance = ConstantContactClient::ContactsApi.new
opts = {
  status: 'all', # String | Use the `status` query parameter to search for contacts by status. This parameter accepts one or more comma separated values: `all`, `active`, `deleted`, `not_set`, `pending_confirmation`, `temp_hold`, and `unsubscribed`.
  email: 'xyz@example.com', # String | Use the `email` query parameter to search for a contact using a specific email address.
  lists: '04fe9a-a579-43c5-bb1a-58ed29bf0a6a,04fe9a-a579-43c5-bb1a-58ed29bf0a6a,04fe9a-a579-43c5-bb1a-58ed29bf0a6a', # String | Use the `lists` query parameter to search for contacts that are members of one or more specified lists. Use a comma to separate multiple `list_id` values, up to a maximum of 25.
  segment_id: '14', # String | Use to get contacts that meet the segment criteria for a single specified `segment_id`. This query parameter can only be combined with the limit query parameter. When using the `segment_id` query parameter, the V3 API may return a 202 response code instead of a 200 response. The 202 response code indicates that your request has been accepted, but not fully completed. Retry sending your API request to return the completed results and a 200 response code.
  tags: 'fa85f64-5717-4562-b3fc-2c963f66afa6', # String | Use to get contact details for up to 50 specified tags. Use a comma to separate each `tag_id`.
  updated_after: Time.parse('2022-01-01T16:37:59.091Z'), # Time | Use `updated_after` to search for contacts that have been updated after the date you specify. To search for updated contacts within a date range, specify both `updated_after` and `updated_before` dates. Accepts ISO-8601 formatted dates.
  updated_before: Time.parse('2022-07-16T16:37:59.091Z'), # Time | Use `updated_before` to search for contacts that have been updated before a specified date. To search for updated contacts within a date range, specify both `updated_after` and `updated_before` dates. Accepts ISO-8601 formatted dates.
  created_after: Time.parse('2021-01-01T16:37:59.091Z'), # Time | Use `created_after` to search for contacts created after a specified date. To search for contacts created within a date range, specify both `created_after` and `created_before` dates. Accepts ISO-8601 formatted dates.
  created_before: Time.parse('2022-07-16T16:37:59.091Z'), # Time | Use `created_before` to search for contacts created before a specified date. To search for contacts created within a date range, specify both `created_after` and `created_before` dates. Accepts ISO-8601 formatted dates.
  optout_after: Time.parse('2022-11-16T16:20:59.091Z'), # Time | Use `optout_after` to search for contacts that unsubscribed after a specified date.
  optout_before: Time.parse('2022-11-16T16:20:59.091Z'), # Time | Use `optout_before` to search for contacts that unsubscribed before a specified date.
  include: 'custom_fields', # String | Use `include` to specify which contact sub-resources to include in the response. Use a comma to separate multiple sub-resources. Valid values: `custom_fields`, `list_memberships`, `taggings`, `notes`,`phone_numbers`, `street_addresses`, `sms_channel`.
  sms_status: 'all', # String | Use to get contacts by their SMS status. This parameter accepts one or more comma separated values: `all`, `explicit`, `unsubscribed`, `pending_confirmation`, `not_set`.
  include_count: true, # Boolean | Set `include_count=true` to include the total number of contacts (`contacts_count`) that meet all search criteria in the response body.
  limit: 25 # Integer | Specifies the number of results displayed per page of output in the response, from 1 - 500, default = 50.
}

begin
  # GET Contacts Collection
  result = api_instance.get_all_contacts(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contacts: #{e}"
end
```

#### Using the get_all_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllContacts200Response>, Integer, Hash)> get_all_contacts_with_http_info(opts)

```ruby
begin
  # GET Contacts Collection
  data, status_code, headers = api_instance.get_all_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllContacts200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_all_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Use the &#x60;status&#x60; query parameter to search for contacts by status. This parameter accepts one or more comma separated values: &#x60;all&#x60;, &#x60;active&#x60;, &#x60;deleted&#x60;, &#x60;not_set&#x60;, &#x60;pending_confirmation&#x60;, &#x60;temp_hold&#x60;, and &#x60;unsubscribed&#x60;. | [optional] |
| **email** | **String** | Use the &#x60;email&#x60; query parameter to search for a contact using a specific email address. | [optional] |
| **lists** | **String** | Use the &#x60;lists&#x60; query parameter to search for contacts that are members of one or more specified lists. Use a comma to separate multiple &#x60;list_id&#x60; values, up to a maximum of 25. | [optional] |
| **segment_id** | **String** | Use to get contacts that meet the segment criteria for a single specified &#x60;segment_id&#x60;. This query parameter can only be combined with the limit query parameter. When using the &#x60;segment_id&#x60; query parameter, the V3 API may return a 202 response code instead of a 200 response. The 202 response code indicates that your request has been accepted, but not fully completed. Retry sending your API request to return the completed results and a 200 response code. | [optional] |
| **tags** | **String** | Use to get contact details for up to 50 specified tags. Use a comma to separate each &#x60;tag_id&#x60;. | [optional] |
| **updated_after** | **Time** | Use &#x60;updated_after&#x60; to search for contacts that have been updated after the date you specify. To search for updated contacts within a date range, specify both &#x60;updated_after&#x60; and &#x60;updated_before&#x60; dates. Accepts ISO-8601 formatted dates. | [optional] |
| **updated_before** | **Time** | Use &#x60;updated_before&#x60; to search for contacts that have been updated before a specified date. To search for updated contacts within a date range, specify both &#x60;updated_after&#x60; and &#x60;updated_before&#x60; dates. Accepts ISO-8601 formatted dates. | [optional] |
| **created_after** | **Time** | Use &#x60;created_after&#x60; to search for contacts created after a specified date. To search for contacts created within a date range, specify both &#x60;created_after&#x60; and &#x60;created_before&#x60; dates. Accepts ISO-8601 formatted dates. | [optional] |
| **created_before** | **Time** | Use &#x60;created_before&#x60; to search for contacts created before a specified date. To search for contacts created within a date range, specify both &#x60;created_after&#x60; and &#x60;created_before&#x60; dates. Accepts ISO-8601 formatted dates. | [optional] |
| **optout_after** | **Time** | Use &#x60;optout_after&#x60; to search for contacts that unsubscribed after a specified date. | [optional] |
| **optout_before** | **Time** | Use &#x60;optout_before&#x60; to search for contacts that unsubscribed before a specified date. | [optional] |
| **include** | **String** | Use &#x60;include&#x60; to specify which contact sub-resources to include in the response. Use a comma to separate multiple sub-resources. Valid values: &#x60;custom_fields&#x60;, &#x60;list_memberships&#x60;, &#x60;taggings&#x60;, &#x60;notes&#x60;,&#x60;phone_numbers&#x60;, &#x60;street_addresses&#x60;, &#x60;sms_channel&#x60;. | [optional] |
| **sms_status** | **String** | Use to get contacts by their SMS status. This parameter accepts one or more comma separated values: &#x60;all&#x60;, &#x60;explicit&#x60;, &#x60;unsubscribed&#x60;, &#x60;pending_confirmation&#x60;, &#x60;not_set&#x60;. | [optional] |
| **include_count** | **Boolean** | Set &#x60;include_count&#x3D;true&#x60; to include the total number of contacts (&#x60;contacts_count&#x60;) that meet all search criteria in the response body. | [optional] |
| **limit** | **Integer** | Specifies the number of results displayed per page of output in the response, from 1 - 500, default &#x3D; 50. | [optional][default to 50] |

### Return type

[**GetAllContacts200Response**](GetAllContacts200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_by_id

> <GetContactById200Response> get_contact_by_id(contact_id, opts)

GET a Contact

This endpoint GETs a specific contact resource (contact_id). Use the `include` query parameter to add any of the available contact sub-resources to the response payload.

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

api_instance = ConstantContactClient::ContactsApi.new
contact_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | Unique ID of contact to GET
opts = {
  include: 'custom_fields' # String | Use `include` to specify which contact sub-resources to include in the response. Use a comma to separate multiple sub-resources. Valid values: `custom_fields`, `list_memberships`, `phone_numbers`, `street_addresses`, `notes`, `sms_channel`, and `taggings`.
}

begin
  # GET a Contact
  result = api_instance.get_contact_by_id(contact_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_by_id: #{e}"
end
```

#### Using the get_contact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactById200Response>, Integer, Hash)> get_contact_by_id_with_http_info(contact_id, opts)

```ruby
begin
  # GET a Contact
  data, status_code, headers = api_instance.get_contact_by_id_with_http_info(contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactById200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Unique ID of contact to GET |  |
| **include** | **String** | Use &#x60;include&#x60; to specify which contact sub-resources to include in the response. Use a comma to separate multiple sub-resources. Valid values: &#x60;custom_fields&#x60;, &#x60;list_memberships&#x60;, &#x60;phone_numbers&#x60;, &#x60;street_addresses&#x60;, &#x60;notes&#x60;, &#x60;sms_channel&#x60;, and &#x60;taggings&#x60;. | [optional] |

### Return type

[**GetContactById200Response**](GetContactById200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_counts

> <GetContactCounts200Response> get_contact_counts(opts)

GET Contact Consent Counts

Use to get the total contacts count for the account and the total contact-consent counts for each consent state. Optionally, to include the total number of contacts that subscribed within the last 30 days in the results, use `new_subscribers` in the `include` query parameter. To optimize open rates, reduce spam reports, and help grow your business,  you must value your contact's consent to receive or to not receive your emails.

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

api_instance = ConstantContactClient::ContactsApi.new
opts = {
  include: 'new_subscriber' # String | Use to return the total number of contacts that subscribed within the last 30 days in the results.
}

begin
  # GET Contact Consent Counts
  result = api_instance.get_contact_counts(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_counts: #{e}"
end
```

#### Using the get_contact_counts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactCounts200Response>, Integer, Hash)> get_contact_counts_with_http_info(opts)

```ruby
begin
  # GET Contact Consent Counts
  data, status_code, headers = api_instance.get_contact_counts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactCounts200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_counts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | **String** | Use to return the total number of contacts that subscribed within the last 30 days in the results. | [optional] |

### Return type

[**GetContactCounts200Response**](GetContactCounts200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_id_xrefs

> <GetContactIdXrefs200Response> get_contact_id_xrefs(sequence_ids)

GET a collection of V2 and V3 API contact IDs

<div class=\"Msg Msg--warning\"><p class=\"note-text\">Use this endpoint to migrate your locally stored V2 contact ids to the new V3 format. Developers are expected to use this endpoint sparingly. This endpoint is NOT intended for regular or repeated use. Constant Contact will eventually deprecate and remove this endpoint.</p></div>  This GET call retrieves a collection of cross-referenced contact sequence IDs (`id` used in the V2 API) and UUIDs (`contact_id` used in the V3 API). This endpoint is intended for developers who have an existing V2 API integration, and are migrating their users to a new V3 API integration. The V2 and V3 APIs use different resource ID formats. Use the `sequence_ids` query parameter to specify a set of comma delimited V2 contacts ids to cross-referenced with their V3 `contact_ids`. See [Migrating to V3](/api_guide/migration_overview.html) to learn more.

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

api_instance = ConstantContactClient::ContactsApi.new
sequence_ids = '1995998026,1882999944,1775099999' # String | Comma delimited list of V2 API contact `ids` to cross-reference with the V3 API `contact_id` value. Endpoint accepts a maximum of 500 ids at a time.

begin
  # GET a collection of V2 and V3 API contact IDs
  result = api_instance.get_contact_id_xrefs(sequence_ids)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_id_xrefs: #{e}"
end
```

#### Using the get_contact_id_xrefs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactIdXrefs200Response>, Integer, Hash)> get_contact_id_xrefs_with_http_info(sequence_ids)

```ruby
begin
  # GET a collection of V2 and V3 API contact IDs
  data, status_code, headers = api_instance.get_contact_id_xrefs_with_http_info(sequence_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactIdXrefs200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_contact_id_xrefs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sequence_ids** | **String** | Comma delimited list of V2 API contact &#x60;ids&#x60; to cross-reference with the V3 API &#x60;contact_id&#x60; value. Endpoint accepts a maximum of 500 ids at a time. |  |

### Return type

[**GetContactIdXrefs200Response**](GetContactIdXrefs200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_sms_engagement_history

> <Array<GetSmsEngagementHistory200ResponseInner>> get_sms_engagement_history(contact_id)

GET SMS Engagement History for a Contact

Use this method to return SMS engagement details for a contact, such as SMS consent and advertising frequency details.

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

api_instance = ConstantContactClient::ContactsApi.new
contact_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | The contact's unique ID.

begin
  # GET SMS Engagement History for a Contact
  result = api_instance.get_sms_engagement_history(contact_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_sms_engagement_history: #{e}"
end
```

#### Using the get_sms_engagement_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetSmsEngagementHistory200ResponseInner>>, Integer, Hash)> get_sms_engagement_history_with_http_info(contact_id)

```ruby
begin
  # GET SMS Engagement History for a Contact
  data, status_code, headers = api_instance.get_sms_engagement_history_with_http_info(contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetSmsEngagementHistory200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->get_sms_engagement_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | The contact&#39;s unique ID. |  |

### Return type

[**Array&lt;GetSmsEngagementHistory200ResponseInner&gt;**](GetSmsEngagementHistory200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact

> <GetContactById200Response> update_contact(contact_id, update_contact_request)

PUT (update) a Contact

The PUT method updates an existing contact. You must include the `update_source` property in the PUT request payload. To restore  a deleted contact you must specify the `update_source` as `Account`. When updating any resource using PUT, all properties are updated, overwriting all previous values. Any properties left blank or not included in the request are overwritten with null value - however this does not apply to contact subresources. Add or change any of the subresources by including them in the PUT request payload. Omitted subresources are not overwritten with null. If the contact being updated is deleted, the contact will be revived.

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

api_instance = ConstantContactClient::ContactsApi.new
contact_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | Unique ID of contact to update
update_contact_request = ConstantContactClient::UpdateContactRequest.new({update_source: 'Account'}) # UpdateContactRequest | JSON payload defining the contact object, with updates. Any properties left blank or not included in the PUT payload are overwritten with null value - does not apply to contact subresources.

begin
  # PUT (update) a Contact
  result = api_instance.update_contact(contact_id, update_contact_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->update_contact: #{e}"
end
```

#### Using the update_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetContactById200Response>, Integer, Hash)> update_contact_with_http_info(contact_id, update_contact_request)

```ruby
begin
  # PUT (update) a Contact
  data, status_code, headers = api_instance.update_contact_with_http_info(contact_id, update_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetContactById200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsApi->update_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_id** | **String** | Unique ID of contact to update |  |
| **update_contact_request** | [**UpdateContactRequest**](UpdateContactRequest.md) | JSON payload defining the contact object, with updates. Any properties left blank or not included in the PUT payload are overwritten with null value - does not apply to contact subresources. |  |

### Return type

[**GetContactById200Response**](GetContactById200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

