# ConstantContactClient::ContactListsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_list**](ContactListsApi.md#create_list) | **POST** /contact_lists | POST (create) a List |
| [**delete_list**](ContactListsApi.md#delete_list) | **DELETE** /contact_lists/{list_id} | DELETE a List |
| [**get_all_lists**](ContactListsApi.md#get_all_lists) | **GET** /contact_lists | GET Lists Collection |
| [**get_list**](ContactListsApi.md#get_list) | **GET** /contact_lists/{list_id} | GET a List |
| [**get_list_id_xrefs**](ContactListsApi.md#get_list_id_xrefs) | **GET** /contact_lists/list_id_xrefs | GET a collection of V2 and V3 API List IDs |
| [**update_list**](ContactListsApi.md#update_list) | **PUT** /contact_lists/{list_id} | PUT (update) a List |


## create_list

> <UpdateList200Response> create_list(update_list_request)

POST (create) a List

Create a new contact list resource

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

api_instance = ConstantContactClient::ContactListsApi.new
update_list_request = ConstantContactClient::UpdateListRequest.new({name: 'Multiple purchases'}) # UpdateListRequest | JSON payload defining the new contact list

begin
  # POST (create) a List
  result = api_instance.create_list(update_list_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->create_list: #{e}"
end
```

#### Using the create_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateList200Response>, Integer, Hash)> create_list_with_http_info(update_list_request)

```ruby
begin
  # POST (create) a List
  data, status_code, headers = api_instance.create_list_with_http_info(update_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateList200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->create_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_list_request** | [**UpdateListRequest**](UpdateListRequest.md) | JSON payload defining the new contact list |  |

### Return type

[**UpdateList200Response**](UpdateList200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_list

> <DeleteList202Response> delete_list(list_id)

DELETE a List

Deletes the specified contact list and its membership. DELETE List requests are processed asynchronously, and you can track the status of the request by making a GET call to the URI shown in the `_links` property in the response.

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

api_instance = ConstantContactClient::ContactListsApi.new
list_id = 'cbc05bac-6a41-46fa-a063-79961763bf4b' # String | Unique ID of the list to delete

begin
  # DELETE a List
  result = api_instance.delete_list(list_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->delete_list: #{e}"
end
```

#### Using the delete_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteList202Response>, Integer, Hash)> delete_list_with_http_info(list_id)

```ruby
begin
  # DELETE a List
  data, status_code, headers = api_instance.delete_list_with_http_info(list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteList202Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->delete_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | Unique ID of the list to delete |  |

### Return type

[**DeleteList202Response**](DeleteList202Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lists

> <GetAllLists200Response> get_all_lists(opts)

GET Lists Collection

Use this method to return details about all contact lists for the account. <div class=\"Msg\"><p class=\"note-text\">This method does not currently support filtering results using the contact list update date.</p></div>

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

api_instance = ConstantContactClient::ContactListsApi.new
opts = {
  limit: 56, # Integer | Use to specify the number of results displayed per page of output, from 1 - 500, default = 50.
  include_count: true, # Boolean | Set `include_count` to `true` to return the total number of contact lists that meet your selection criteria.
  include_membership_count: 'all', # String | Use to include the total number of contacts per list. Set to  `active`, to count only active (mailable) contacts, or `all` to count all contacts.
  name: 'TopTier', # String | Use to get details for a single list by entering the full name of the list.
  status: 'all' # String | Use to get lists by status. Accepts comma-separated status values.
}

begin
  # GET Lists Collection
  result = api_instance.get_all_lists(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->get_all_lists: #{e}"
end
```

#### Using the get_all_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllLists200Response>, Integer, Hash)> get_all_lists_with_http_info(opts)

```ruby
begin
  # GET Lists Collection
  data, status_code, headers = api_instance.get_all_lists_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllLists200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->get_all_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Use to specify the number of results displayed per page of output, from 1 - 500, default &#x3D; 50. | [optional][default to 50] |
| **include_count** | **Boolean** | Set &#x60;include_count&#x60; to &#x60;true&#x60; to return the total number of contact lists that meet your selection criteria. | [optional][default to false] |
| **include_membership_count** | **String** | Use to include the total number of contacts per list. Set to  &#x60;active&#x60;, to count only active (mailable) contacts, or &#x60;all&#x60; to count all contacts. | [optional] |
| **name** | **String** | Use to get details for a single list by entering the full name of the list. | [optional] |
| **status** | **String** | Use to get lists by status. Accepts comma-separated status values. | [optional] |

### Return type

[**GetAllLists200Response**](GetAllLists200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_list

> <GetList200Response> get_list(list_id, opts)

GET a List

Use this method to get details about a specific contact list (`list_id`).

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

api_instance = ConstantContactClient::ContactListsApi.new
list_id = 'cbc05bac-6a41-46fa-a063-79961763bf4b' # String | The system generated ID that uniquely identifies a contact list.
opts = {
  include_membership_count: 'all' # String | Returns the total number of contacts per list that meet your selection criteria. Set the `include_membership_count` to `active`, to count only active contacts, or `all` to include all contacts in the count.
}

begin
  # GET a List
  result = api_instance.get_list(list_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->get_list: #{e}"
end
```

#### Using the get_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetList200Response>, Integer, Hash)> get_list_with_http_info(list_id, opts)

```ruby
begin
  # GET a List
  data, status_code, headers = api_instance.get_list_with_http_info(list_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetList200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->get_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | The system generated ID that uniquely identifies a contact list. |  |
| **include_membership_count** | **String** | Returns the total number of contacts per list that meet your selection criteria. Set the &#x60;include_membership_count&#x60; to &#x60;active&#x60;, to count only active contacts, or &#x60;all&#x60; to include all contacts in the count. | [optional] |

### Return type

[**GetList200Response**](GetList200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_list_id_xrefs

> <GetListIdXrefs200Response> get_list_id_xrefs(sequence_ids)

GET a collection of V2 and V3 API List IDs

<div class=\"Msg Msg--warning\"><p class=\"note-text\">Use this endpoint to migrate your locally stored V2 contact list data to the new V3 format. Developers are expected to use this endpoint sparingly. This endpoint is NOT intended for regular or repeated use. Constant Contact will eventually deprecate and remove this endpoint.</p></div>  This GET call retrieves a collection of cross-referenced list sequence IDs (`id` used in the V2 API) and UUIDs (`list_id` used in the V3 API). This endpoint is intended for developers who have an existing V2 API integration, and are migrating their users to a new V3 API integration. The V2 and V3 APIs use different resource ID formats. Use the `sequence_ids` query parameter to specify a set of comma delimited V2 list ids to cross-reference. See [Migrating Apps and Data to V3](/api_guide/migration_overview.html) to learn more.\"

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

api_instance = ConstantContactClient::ContactListsApi.new
sequence_ids = '1995998026,1882999944,1775099999' # String | Comma delimited list of V2 API list `ids` to cross-reference with the V3 API `list_id` value. Endpoint accepts a maximum of 500 ids at a time.

begin
  # GET a collection of V2 and V3 API List IDs
  result = api_instance.get_list_id_xrefs(sequence_ids)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->get_list_id_xrefs: #{e}"
end
```

#### Using the get_list_id_xrefs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetListIdXrefs200Response>, Integer, Hash)> get_list_id_xrefs_with_http_info(sequence_ids)

```ruby
begin
  # GET a collection of V2 and V3 API List IDs
  data, status_code, headers = api_instance.get_list_id_xrefs_with_http_info(sequence_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetListIdXrefs200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->get_list_id_xrefs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sequence_ids** | **String** | Comma delimited list of V2 API list &#x60;ids&#x60; to cross-reference with the V3 API &#x60;list_id&#x60; value. Endpoint accepts a maximum of 500 ids at a time. |  |

### Return type

[**GetListIdXrefs200Response**](GetListIdXrefs200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_list

> <UpdateList200Response> update_list(list_id, update_list_request)

PUT (update) a List

Updates an existing contact list resource, specified by `list_id`

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

api_instance = ConstantContactClient::ContactListsApi.new
list_id = 'cbc05bac-6a41-46fa-a063-79961763bf4b' # String | Unique ID of the contact list to update
update_list_request = ConstantContactClient::UpdateListRequest.new({name: 'Multiple purchases'}) # UpdateListRequest | JSON payload containing updates to the specified contact list

begin
  # PUT (update) a List
  result = api_instance.update_list(list_id, update_list_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->update_list: #{e}"
end
```

#### Using the update_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateList200Response>, Integer, Hash)> update_list_with_http_info(list_id, update_list_request)

```ruby
begin
  # PUT (update) a List
  data, status_code, headers = api_instance.update_list_with_http_info(list_id, update_list_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateList200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactListsApi->update_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **String** | Unique ID of the contact list to update |  |
| **update_list_request** | [**UpdateListRequest**](UpdateListRequest.md) | JSON payload containing updates to the specified contact list |  |

### Return type

[**UpdateList200Response**](UpdateList200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

