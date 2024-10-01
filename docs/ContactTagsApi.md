# ConstantContactClient::ContactTagsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_tag**](ContactTagsApi.md#delete_tag) | **DELETE** /contact_tags/{tag_id} | DELETE a Tag |
| [**get_all_tags**](ContactTagsApi.md#get_all_tags) | **GET** /contact_tags | GET Details for All Tags |
| [**get_tag**](ContactTagsApi.md#get_tag) | **GET** /contact_tags/{tag_id} | GET Tag Details |
| [**post_tag**](ContactTagsApi.md#post_tag) | **POST** /contact_tags | POST (Create) a Tag |
| [**put_tag**](ContactTagsApi.md#put_tag) | **PUT** /contact_tags/{tag_id} | PUT (Update) a Tag |


## delete_tag

> <DeleteTag202Response> delete_tag(tag_id)

DELETE a Tag

Use this method to create an activity used to un-assign a tag from all assigned contacts and delete the tag. This is an asynchronous activity. To view activity details for the delete request, use the href link returned in the response. [Learn more](/api_guide/tags_delete.html).

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

api_instance = ConstantContactClient::ContactTagsApi.new
tag_id = '30c97dd0-332e-11eb-923c-fa163e595327' # String | The ID that uniquely identifies a tag in UUID format.

begin
  # DELETE a Tag
  result = api_instance.delete_tag(tag_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->delete_tag: #{e}"
end
```

#### Using the delete_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTag202Response>, Integer, Hash)> delete_tag_with_http_info(tag_id)

```ruby
begin
  # DELETE a Tag
  data, status_code, headers = api_instance.delete_tag_with_http_info(tag_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTag202Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->delete_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The ID that uniquely identifies a tag in UUID format. |  |

### Return type

[**DeleteTag202Response**](DeleteTag202Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_tags

> <GetAllTags200Response> get_all_tags(opts)

GET Details for All Tags

Use this endpoint to get details for all tags in your account. Use the <code>include_count</code> query parameter to include the total number of contacts assigned each tag. Use the <code>limit</code> query parameter to limit the number of tag results returned per page. To get the next page of results, copy the <code>cursor={the cursor ID}</code> from the resulting href link and add it (<code>&</code>) to the URL. For example:  <p><code>/v3/contact_tags?limit=1&cursor=</code></p><p><code>bGltaXQ9MSZuZXh0PTJjZDgwMjdhLTc4YzAtMTFlOS1iZmQwLWZhMTYzZTZiMDFjMQ=</code></p> To learn more, see [Get Tags](/api_guide/tags_get.html).

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

api_instance = ConstantContactClient::ContactTagsApi.new
opts = {
  limit: 25, # Integer | Use to specify the number of tag results (up to `500`) to display per page of output. The default is `50`.
  include_count: true # Boolean | Returns the total number of contacts (`contacts_count`) to which a tag applies.
}

begin
  # GET Details for All Tags
  result = api_instance.get_all_tags(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->get_all_tags: #{e}"
end
```

#### Using the get_all_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllTags200Response>, Integer, Hash)> get_all_tags_with_http_info(opts)

```ruby
begin
  # GET Details for All Tags
  data, status_code, headers = api_instance.get_all_tags_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllTags200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->get_all_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Use to specify the number of tag results (up to &#x60;500&#x60;) to display per page of output. The default is &#x60;50&#x60;. | [optional][default to 50] |
| **include_count** | **Boolean** | Returns the total number of contacts (&#x60;contacts_count&#x60;) to which a tag applies. | [optional][default to false] |

### Return type

[**GetAllTags200Response**](GetAllTags200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tag

> <GetTag200Response> get_tag(tag_id, opts)

GET Tag Details

Use this method to get tag details for a specified `tag_id`. Use the `include_count` query parameter to include or exclude the total number of contacts to which this tag is assigned. To learn more, see  [Get a Tag's Details](/api_guide/tags_get_single.html).

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

api_instance = ConstantContactClient::ContactTagsApi.new
tag_id = 'd938260a-af1e-11e9-a540-fa163e595123' # String | The ID that uniquely identifies a tag (UUID format).
opts = {
  include_count: true # Boolean | Use to include (`true`) or exclude (`false`) the total number of tagged contacts (`contacts_count`) from the results.
}

begin
  # GET Tag Details
  result = api_instance.get_tag(tag_id, opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->get_tag: #{e}"
end
```

#### Using the get_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTag200Response>, Integer, Hash)> get_tag_with_http_info(tag_id, opts)

```ruby
begin
  # GET Tag Details
  data, status_code, headers = api_instance.get_tag_with_http_info(tag_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTag200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->get_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The ID that uniquely identifies a tag (UUID format). |  |
| **include_count** | **Boolean** | Use to include (&#x60;true&#x60;) or exclude (&#x60;false&#x60;) the total number of tagged contacts (&#x60;contacts_count&#x60;) from the results. | [optional][default to false] |

### Return type

[**GetTag200Response**](GetTag200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_tag

> <GetTag200Response> post_tag(post_tag_request)

POST (Create) a Tag

Use this method to create a new tag. The tag `name` is required and must be unique and can include most common keyboard symbols. Optionally, when creating a new tag you can specify the source (`tag_source`) used to identify the contacts to tag in the request body. [Learn more](/api_guide/tags_create.html).

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

api_instance = ConstantContactClient::ContactTagsApi.new
post_tag_request = ConstantContactClient::PostTagRequest.new({name: 'Silver card member'}) # PostTagRequest | The JSON payload to use to create a new tag.

begin
  # POST (Create) a Tag
  result = api_instance.post_tag(post_tag_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->post_tag: #{e}"
end
```

#### Using the post_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTag200Response>, Integer, Hash)> post_tag_with_http_info(post_tag_request)

```ruby
begin
  # POST (Create) a Tag
  data, status_code, headers = api_instance.post_tag_with_http_info(post_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTag200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->post_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_tag_request** | [**PostTagRequest**](PostTagRequest.md) | The JSON payload to use to create a new tag. |  |

### Return type

[**GetTag200Response**](GetTag200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_tag

> <GetTag200Response> put_tag(tag_id, put_tag_request)

PUT (Update) a Tag

Use this method to rename an existing tag to a new unique tag name (`name`). The maximum length is 255 characters. The `tag_source` value cannot be updated using this method. You can set the `tag_source` value using the `POST contact_tags method`. [Learn more](/api_guide/tags_update.html)

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

api_instance = ConstantContactClient::ContactTagsApi.new
tag_id = '30c97dd0-332e-11eb-923c-fa163e595327' # String | The system generated ID used to uniquely identify the tag that you want to rename (UUID format).
put_tag_request = ConstantContactClient::PutTagRequest.new({name: 'Bronze card member'}) # PutTagRequest | The JSON payload used to update the tag name (`name`).

begin
  # PUT (Update) a Tag
  result = api_instance.put_tag(tag_id, put_tag_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->put_tag: #{e}"
end
```

#### Using the put_tag_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTag200Response>, Integer, Hash)> put_tag_with_http_info(tag_id, put_tag_request)

```ruby
begin
  # PUT (Update) a Tag
  data, status_code, headers = api_instance.put_tag_with_http_info(tag_id, put_tag_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTag200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling ContactTagsApi->put_tag_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag_id** | **String** | The system generated ID used to uniquely identify the tag that you want to rename (UUID format). |  |
| **put_tag_request** | [**PutTagRequest**](PutTagRequest.md) | The JSON payload used to update the tag name (&#x60;name&#x60;). |  |

### Return type

[**GetTag200Response**](GetTag200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

