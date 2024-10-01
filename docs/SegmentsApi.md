# ConstantContactClient::SegmentsApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_segment**](SegmentsApi.md#create_segment) | **POST** /segments | POST (create) a Segment |
| [**delete_segment**](SegmentsApi.md#delete_segment) | **DELETE** /segments/{segment_id} | DELETE a Segment |
| [**get_all_segments**](SegmentsApi.md#get_all_segments) | **GET** /segments | GET all Segments |
| [**get_segment_by_id**](SegmentsApi.md#get_segment_by_id) | **GET** /segments/{segment_id} | GET a Segment&#39;s Details |
| [**update_segment**](SegmentsApi.md#update_segment) | **PUT** /segments/{segment_id} | PUT (update) a Segment |
| [**update_segment_name**](SegmentsApi.md#update_segment_name) | **PATCH** /segments/{segment_id}/name | PATCH (rename) a Segment |


## create_segment

> <CreateSegment201Response> create_segment(create_segment_request)

POST (create) a Segment

Use this method to create a new segment. You create segments to target a subset of your contacts that meet your specific criteria for a marketing campaign. The segment `name` must be unique. The `segment_criteria` requires single-string escaped JSON. Constant Contact uses the contact data that you specify in the `segment_criteria` to evaluate and identify the contacts you want to target. Contact data can be grouped from different data sources, including:    -  **`tracking`**: Supports **or** and **and** groups.     -  **`contact`**: Supports **or** and **and** groups.     -  **`list_membership`**: Supports **or** groups.    -  **`tags`**: Supports **or** groups.  If you do not specify `list_membership` as criteria, Constant Contact evaluates all contacts in your account. To avoid returning a 400 error response, when specifying the `segment_criteria` do not request more than 500 email campaigns or a date range greater than 1825 days (5 years) be evaluated.  For more use case information, see the [Segments Overview](/api_guide/segments_overview.html) in the API guide.

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

api_instance = ConstantContactClient::SegmentsApi.new
create_segment_request = ConstantContactClient::CreateSegmentRequest.new({name: 'Re-engage contacts who did not open the last 5 email campaign activities.', segment_criteria: '{"version":"1.0.0","criteria":{"type":"and","group":[{"source":"tracking","field":"not_opened","op":"contains-any","const_value":"last-n-campaigns","param":"5"}]}}'}) # CreateSegmentRequest | The segment `name` and `segment_criteria` (requires single-string escaped JSON).

begin
  # POST (create) a Segment
  result = api_instance.create_segment(create_segment_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->create_segment: #{e}"
end
```

#### Using the create_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSegment201Response>, Integer, Hash)> create_segment_with_http_info(create_segment_request)

```ruby
begin
  # POST (create) a Segment
  data, status_code, headers = api_instance.create_segment_with_http_info(create_segment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSegment201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->create_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_segment_request** | [**CreateSegmentRequest**](CreateSegmentRequest.md) | The segment &#x60;name&#x60; and &#x60;segment_criteria&#x60; (requires single-string escaped JSON). |  |

### Return type

[**CreateSegment201Response**](CreateSegment201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_segment

> delete_segment(segment_id)

DELETE a Segment

Use this method to delete a segment from your account. Before deleting a segment, verify that the segment is not associated with a scheduled campaign.  Deleted segments do not display in the results when using the `GET /segments` endpoint. If you know the `segment_id`, you can use the `GET /segments/{segment_id}` endpoint to view the deleted segment's details. A segment's details are preserved for external reference purposes, such as displaying the segment name in a campaign's history. For more use case information, see [Delete a Segment](/api_guide/segment_delete.html) in the API guide.

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

api_instance = ConstantContactClient::SegmentsApi.new
segment_id = 14 # Integer | The system generated ID that uniquely identifies the segment.

begin
  # DELETE a Segment
  api_instance.delete_segment(segment_id)
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment: #{e}"
end
```

#### Using the delete_segment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_segment_with_http_info(segment_id)

```ruby
begin
  # DELETE a Segment
  data, status_code, headers = api_instance.delete_segment_with_http_info(segment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->delete_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **Integer** | The system generated ID that uniquely identifies the segment. |  |

### Return type

nil (empty response body)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_all_segments

> <GetAllSegments200Response> get_all_segments(opts)

GET all Segments

Use this method to get a list of all segments associated with the account. You can sort segment results and limit the number of segments that display per page. Deleted segments are excluded from the results. For more use case information, see [Get All Segments](/api_guide/segment_get_all.html) in the API guide.

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

api_instance = ConstantContactClient::SegmentsApi.new
opts = {
  limit: '1000', # String | The number of segments to return on a page.
  sort_by: 'sort_by=date' # String | Specify the segment sort order to use. Sort by name (`sort_by=name`) in ascending order, or sort by date (`sort_by=date`) in descending order with the most recently updated segments listed first.
}

begin
  # GET all Segments
  result = api_instance.get_all_segments(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->get_all_segments: #{e}"
end
```

#### Using the get_all_segments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllSegments200Response>, Integer, Hash)> get_all_segments_with_http_info(opts)

```ruby
begin
  # GET all Segments
  data, status_code, headers = api_instance.get_all_segments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllSegments200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->get_all_segments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **String** | The number of segments to return on a page. | [optional][default to &#39;1000&#39;] |
| **sort_by** | **String** | Specify the segment sort order to use. Sort by name (&#x60;sort_by&#x3D;name&#x60;) in ascending order, or sort by date (&#x60;sort_by&#x3D;date&#x60;) in descending order with the most recently updated segments listed first. | [optional][default to &#39;date&#39;] |

### Return type

[**GetAllSegments200Response**](GetAllSegments200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_segment_by_id

> <CreateSegment201Response> get_segment_by_id(segment_id)

GET a Segment's Details

Use this method to get details about a segment, including the segment criteria. If you know the `segment_id` You can also use this method to get details about a deleted segment. For more use case information, see [Get a Segment's Details](/api_guide/segment_get.html) in the API guide.

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

api_instance = ConstantContactClient::SegmentsApi.new
segment_id = 14 # Integer | The system-generated unique ID that identifies a segment.

begin
  # GET a Segment's Details
  result = api_instance.get_segment_by_id(segment_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_by_id: #{e}"
end
```

#### Using the get_segment_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSegment201Response>, Integer, Hash)> get_segment_by_id_with_http_info(segment_id)

```ruby
begin
  # GET a Segment's Details
  data, status_code, headers = api_instance.get_segment_by_id_with_http_info(segment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSegment201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->get_segment_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **Integer** | The system-generated unique ID that identifies a segment. |  |

### Return type

[**CreateSegment201Response**](CreateSegment201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_segment

> <CreateSegment201Response> update_segment(segment_id, create_segment_request)

PUT (update) a Segment

Use this method to update an existing segment's name (`name`) and/or contact selection criteria (`segment_criteria`). You must specify both the `name` and the `segment_criteria` in the request body, even if you don't plan to update both. The segment's name must be unique and the JSON must be valid (requires single-string escaped JSON). To avoid returning a 400 error response, when specifying the `segment_criteria` do not request more than 500 email campaigns or a date range greater than 1825 days (5 years) be evaluated. For more use case information, see [Update Segment Details](/api_guide/segment_update.html) in the API guide.

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

api_instance = ConstantContactClient::SegmentsApi.new
segment_id = 14 # Integer | The system generated ID that uniquely identifies the segment that you want to modify.
create_segment_request = ConstantContactClient::CreateSegmentRequest.new({name: 'Re-engage contacts who did not open the last 5 email campaign activities.', segment_criteria: '{"version":"1.0.0","criteria":{"type":"and","group":[{"source":"tracking","field":"not_opened","op":"contains-any","const_value":"last-n-campaigns","param":"5"}]}}'}) # CreateSegmentRequest | Include both the `name` and `segment_criteria` (single-string escaped JSON) in the body request, then make updates to either or both.

begin
  # PUT (update) a Segment
  result = api_instance.update_segment(segment_id, create_segment_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->update_segment: #{e}"
end
```

#### Using the update_segment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSegment201Response>, Integer, Hash)> update_segment_with_http_info(segment_id, create_segment_request)

```ruby
begin
  # PUT (update) a Segment
  data, status_code, headers = api_instance.update_segment_with_http_info(segment_id, create_segment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSegment201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->update_segment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **Integer** | The system generated ID that uniquely identifies the segment that you want to modify. |  |
| **create_segment_request** | [**CreateSegmentRequest**](CreateSegmentRequest.md) | Include both the &#x60;name&#x60; and &#x60;segment_criteria&#x60; (single-string escaped JSON) in the body request, then make updates to either or both. |  |

### Return type

[**CreateSegment201Response**](CreateSegment201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_segment_name

> <CreateSegment201Response> update_segment_name(segment_id, update_segment_name_request)

PATCH (rename) a Segment

Use this method to update an existing segment `name` with a new unique name in the request body. For more use case information, see [Rename a Segment](/api_guide/segment_rename.html) in the API guide.

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

api_instance = ConstantContactClient::SegmentsApi.new
segment_id = 14 # Integer | The system generated ID that uniquely identifies the segment that you want to modify.
update_segment_name_request = ConstantContactClient::UpdateSegmentNameRequest.new({name: 'Contacts who did not open any email campaign within the last 100 days.'}) # UpdateSegmentNameRequest | Include the existing segment `name` in the body request, then rename the segment using a unique new name.

begin
  # PATCH (rename) a Segment
  result = api_instance.update_segment_name(segment_id, update_segment_name_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->update_segment_name: #{e}"
end
```

#### Using the update_segment_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSegment201Response>, Integer, Hash)> update_segment_name_with_http_info(segment_id, update_segment_name_request)

```ruby
begin
  # PATCH (rename) a Segment
  data, status_code, headers = api_instance.update_segment_name_with_http_info(segment_id, update_segment_name_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSegment201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling SegmentsApi->update_segment_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segment_id** | **Integer** | The system generated ID that uniquely identifies the segment that you want to modify. |  |
| **update_segment_name_request** | [**UpdateSegmentNameRequest**](UpdateSegmentNameRequest.md) | Include the existing segment &#x60;name&#x60; in the body request, then rename the segment using a unique new name. |  |

### Return type

[**CreateSegment201Response**](CreateSegment201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

