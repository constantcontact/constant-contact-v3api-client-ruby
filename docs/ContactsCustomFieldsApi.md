# ConstantContactClient::ContactsCustomFieldsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_custom_fields**](ContactsCustomFieldsApi.md#create_custom_fields) | **POST** /contact_custom_fields | POST (create) a custom_field |
| [**delete_custom_field**](ContactsCustomFieldsApi.md#delete_custom_field) | **DELETE** /contact_custom_fields/{custom_field_id} | DELETE a custom_field |
| [**get_all_custom_fields**](ContactsCustomFieldsApi.md#get_all_custom_fields) | **GET** /contact_custom_fields | GET custom_fields Collection |
| [**get_custom_field**](ContactsCustomFieldsApi.md#get_custom_field) | **GET** /contact_custom_fields/{custom_field_id} | GET a custom_field |
| [**update_custom_field**](ContactsCustomFieldsApi.md#update_custom_field) | **PUT** /contact_custom_fields/{custom_field_id} | PUT (update) a custom_field |


## create_custom_fields

> <GetCustomField200Response> create_custom_fields(update_custom_field_request)

POST (create) a custom_field

This POST request adds a new `custom_field` to the user's account. A user can configure up to 100 `custom_fields` in their account.

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

api_instance = ConstantContactClient::ContactsCustomFieldsApi.new
update_custom_field_request = ConstantContactClient::UpdateCustomFieldRequest.new({label: 'Vehicle make and model year', type: 'string'}) # UpdateCustomFieldRequest | The JSON payload required to create a new `custom_field`

begin
  # POST (create) a custom_field
  result = api_instance.create_custom_fields(update_custom_field_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->create_custom_fields: #{e}"
end
```

#### Using the create_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomField200Response>, Integer, Hash)> create_custom_fields_with_http_info(update_custom_field_request)

```ruby
begin
  # POST (create) a custom_field
  data, status_code, headers = api_instance.create_custom_fields_with_http_info(update_custom_field_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomField200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->create_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_custom_field_request** | [**UpdateCustomFieldRequest**](UpdateCustomFieldRequest.md) | The JSON payload required to create a new &#x60;custom_field&#x60; |  |

### Return type

[**GetCustomField200Response**](GetCustomField200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_field

> delete_custom_field(custom_field_id)

DELETE a custom_field

This DELETE request deletes a custom_field from the user's account

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

api_instance = ConstantContactClient::ContactsCustomFieldsApi.new
custom_field_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | Unique ID of the custom_field on which to operate.

begin
  # DELETE a custom_field
  api_instance.delete_custom_field(custom_field_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->delete_custom_field: #{e}"
end
```

#### Using the delete_custom_field_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_field_with_http_info(custom_field_id)

```ruby
begin
  # DELETE a custom_field
  data, status_code, headers = api_instance.delete_custom_field_with_http_info(custom_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->delete_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_id** | **String** | Unique ID of the custom_field on which to operate. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_custom_fields

> <GetAllCustomFields200Response> get_all_custom_fields(opts)

GET custom_fields Collection

This GET request returns all `custom_fields` defined in the user's account. <div class=\"Msg\"><p class=\"note-text\">This method does not currently support filtering results using the custom field update date.</p></div>

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

api_instance = ConstantContactClient::ContactsCustomFieldsApi.new
opts = {
  limit: 56 # Integer | Specifies the number of results displayed per page of output, from 1 - 100, default = 50.
}

begin
  # GET custom_fields Collection
  result = api_instance.get_all_custom_fields(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->get_all_custom_fields: #{e}"
end
```

#### Using the get_all_custom_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllCustomFields200Response>, Integer, Hash)> get_all_custom_fields_with_http_info(opts)

```ruby
begin
  # GET custom_fields Collection
  data, status_code, headers = api_instance.get_all_custom_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllCustomFields200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->get_all_custom_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Specifies the number of results displayed per page of output, from 1 - 100, default &#x3D; 50. | [optional][default to 50] |

### Return type

[**GetAllCustomFields200Response**](GetAllCustomFields200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_custom_field

> <GetCustomField200Response> get_custom_field(custom_field_id)

GET a custom_field

This GET call retrieves a `custom_field` resource, specified by `custom_field_id`.

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

api_instance = ConstantContactClient::ContactsCustomFieldsApi.new
custom_field_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | Unique ID of the `custom_field` on which to operate.

begin
  # GET a custom_field
  result = api_instance.get_custom_field(custom_field_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->get_custom_field: #{e}"
end
```

#### Using the get_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomField200Response>, Integer, Hash)> get_custom_field_with_http_info(custom_field_id)

```ruby
begin
  # GET a custom_field
  data, status_code, headers = api_instance.get_custom_field_with_http_info(custom_field_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomField200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->get_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_id** | **String** | Unique ID of the &#x60;custom_field&#x60; on which to operate. |  |

### Return type

[**GetCustomField200Response**](GetCustomField200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_custom_field

> <GetCustomField200Response> update_custom_field(custom_field_id, update_custom_field_request)

PUT (update) a custom_field

This PUT request updates an existing `custom_field` object.

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

api_instance = ConstantContactClient::ContactsCustomFieldsApi.new
custom_field_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | Unique ID of the `custom_field` on which to operate.
update_custom_field_request = ConstantContactClient::UpdateCustomFieldRequest.new({label: 'Vehicle make and model year', type: 'string'}) # UpdateCustomFieldRequest | The JSON payload used to update an existing custom field. Any properties omitted in the PUT request are overwritten with a null value.

begin
  # PUT (update) a custom_field
  result = api_instance.update_custom_field(custom_field_id, update_custom_field_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->update_custom_field: #{e}"
end
```

#### Using the update_custom_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCustomField200Response>, Integer, Hash)> update_custom_field_with_http_info(custom_field_id, update_custom_field_request)

```ruby
begin
  # PUT (update) a custom_field
  data, status_code, headers = api_instance.update_custom_field_with_http_info(custom_field_id, update_custom_field_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCustomField200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactsCustomFieldsApi->update_custom_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_field_id** | **String** | Unique ID of the &#x60;custom_field&#x60; on which to operate. |  |
| **update_custom_field_request** | [**UpdateCustomFieldRequest**](UpdateCustomFieldRequest.md) | The JSON payload used to update an existing custom field. Any properties omitted in the PUT request are overwritten with a null value. |  |

### Return type

[**GetCustomField200Response**](GetCustomField200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

