# ConstantContactClient::BulkActivitiesApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_csv_import_activity**](BulkActivitiesApi.md#create_csv_import_activity) | **POST** /activities/contacts_file_import | Import Contacts using a CSV File |
| [**create_delete_activity**](BulkActivitiesApi.md#create_delete_activity) | **POST** /activities/contact_delete | Delete Contacts in Bulk |
| [**create_export_activity**](BulkActivitiesApi.md#create_export_activity) | **POST** /activities/contact_exports | Export Contacts to a File |
| [**create_import_json_activity**](BulkActivitiesApi.md#create_import_json_activity) | **POST** /activities/contacts_json_import | Import Contacts using a JSON Payload |
| [**create_list_add_activity**](BulkActivitiesApi.md#create_list_add_activity) | **POST** /activities/add_list_memberships | Add Contacts to Lists |
| [**create_list_delete_activity**](BulkActivitiesApi.md#create_list_delete_activity) | **POST** /activities/list_delete | Delete Contact Lists |
| [**create_list_remove_activity**](BulkActivitiesApi.md#create_list_remove_activity) | **POST** /activities/remove_list_memberships | Remove Contacts from Lists |
| [**create_tag_add_contact_activity**](BulkActivitiesApi.md#create_tag_add_contact_activity) | **POST** /activities/contacts_taggings_add | Add Tags to Contacts |
| [**create_tag_delete_activity**](BulkActivitiesApi.md#create_tag_delete_activity) | **POST** /activities/contacts_tags_delete | Delete Tags |
| [**create_tag_remove_activity**](BulkActivitiesApi.md#create_tag_remove_activity) | **POST** /activities/contacts_taggings_remove | Remove Tags from Contacts |
| [**get_activity_by_id**](BulkActivitiesApi.md#get_activity_by_id) | **GET** /activities/{activity_id} | GET an Activity Status |
| [**get_all_activities**](BulkActivitiesApi.md#get_all_activities) | **GET** /activities | GET Activity Status Collection |
| [**get_csv_export_file**](BulkActivitiesApi.md#get_csv_export_file) | **GET** /contact_exports/{file_export_id} | Retrieve Exported Contacts File |
| [**post_custom_field_delete**](BulkActivitiesApi.md#post_custom_field_delete) | **POST** /activities/custom_fields_delete | Delete Custom Fields |


## create_csv_import_activity

> <CreateCSVImportActivity201Response> create_csv_import_activity(file, list_ids)

Import Contacts using a CSV File

This multipart method creates an asynchronous background job that adds or updates contacts by importing a CSV file containing contact information. Do not use a Content-Type header value with this method.  Importing a new contact automatically sets the contact's `permission_to_send` property as `implicit` and the `opt_in_source` property as `Account`. Importing an existing contact only updates the contact properties you include in the request.  The CSV file has a maximum of 40,000 lines including the header row (39,999 contacts) and a maximum file size of 4 megabytes (MB).  Lines above the 40,000 line maximum are not processed. If the request body exceeds 4 MB, only the contacts contained in the first 4 MB are imported and the remaining data is dropped.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
file = File.new('/path/to/some/file') # File | The CSV file you are importing. The column headings that you can use in the file are: `first_name`, `last_name`, `email`, `phone`, `job_title`, `anniversary`, `birthday_day`, `birthday_month`, `company_name`, `street`, `street2`, `city`, `state`, `zip`, and `country`. The only required column heading is `email`.  You can also use custom fields as column headings. Enter the custom field name prefixed with `cf:` as the column heading. For example, use `cf:first_name` as the header name if you have a custom field named \\\"first_name\\\". The custom field must already exist in the Constant Contact account you are using. Depending on the custom field data type, you can enter dates or strings as the value of the custom field. Each contact can contain up to 25 different custom fields.
list_ids = ['inner_example'] # Array<String> | Specify which contact lists you are adding all imported contacts to as an array of up to 50 contact `list_id` values.

begin
  # Import Contacts using a CSV File
  result = api_instance.create_csv_import_activity(file, list_ids)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_csv_import_activity: #{e}"
end
```

#### Using the create_csv_import_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCSVImportActivity201Response>, Integer, Hash)> create_csv_import_activity_with_http_info(file, list_ids)

```ruby
begin
  # Import Contacts using a CSV File
  data, status_code, headers = api_instance.create_csv_import_activity_with_http_info(file, list_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCSVImportActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_csv_import_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The CSV file you are importing. The column headings that you can use in the file are: &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;phone&#x60;, &#x60;job_title&#x60;, &#x60;anniversary&#x60;, &#x60;birthday_day&#x60;, &#x60;birthday_month&#x60;, &#x60;company_name&#x60;, &#x60;street&#x60;, &#x60;street2&#x60;, &#x60;city&#x60;, &#x60;state&#x60;, &#x60;zip&#x60;, and &#x60;country&#x60;. The only required column heading is &#x60;email&#x60;.  You can also use custom fields as column headings. Enter the custom field name prefixed with &#x60;cf:&#x60; as the column heading. For example, use &#x60;cf:first_name&#x60; as the header name if you have a custom field named \\\&quot;first_name\\\&quot;. The custom field must already exist in the Constant Contact account you are using. Depending on the custom field data type, you can enter dates or strings as the value of the custom field. Each contact can contain up to 25 different custom fields. |  |
| **list_ids** | [**Array&lt;String&gt;**](String.md) | Specify which contact lists you are adding all imported contacts to as an array of up to 50 contact &#x60;list_id&#x60; values. |  |

### Return type

[**CreateCSVImportActivity201Response**](CreateCSVImportActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## create_delete_activity

> <CreateDeleteActivity201Response> create_delete_activity(create_delete_activity_request)

Delete Contacts in Bulk

Use this endpoint to bulk delete contacts in an account. Contacts to delete are specified by contact_id (up to 500), or by list_id (up to 50 lists); all contacts that are members of the list_ids are deleted. Deleted contacts won’t receive email from you, and they don’t count as active contacts. Unlike unsubscribed contacts, deleted contacts can be added back to an account. [Learn how to revive deleted contacts](/api_guide/contacts_delete.html#revive).

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_delete_activity_request = ConstantContactClient::CreateDeleteActivityRequest.new # CreateDeleteActivityRequest | The request body contains an array of contact_ids <em>or</em> list_ids. All contact_ids provided are deleted, or all members of each specified list_id are deleted.

begin
  # Delete Contacts in Bulk
  result = api_instance.create_delete_activity(create_delete_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_delete_activity: #{e}"
end
```

#### Using the create_delete_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDeleteActivity201Response>, Integer, Hash)> create_delete_activity_with_http_info(create_delete_activity_request)

```ruby
begin
  # Delete Contacts in Bulk
  data, status_code, headers = api_instance.create_delete_activity_with_http_info(create_delete_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDeleteActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_delete_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_delete_activity_request** | [**CreateDeleteActivityRequest**](CreateDeleteActivityRequest.md) | The request body contains an array of contact_ids &lt;em&gt;or&lt;/em&gt; list_ids. All contact_ids provided are deleted, or all members of each specified list_id are deleted. |  |

### Return type

[**CreateDeleteActivity201Response**](CreateDeleteActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_export_activity

> <CreateExportActivity201Response> create_export_activity(create_export_activity_request)

Export Contacts to a File

Use this method to create an activity that exports contacts and contact details to a CSV file. By default, all contacts are exported. To filter contacts to export, specify the source to use, `contact_id`, `list_id`, or `segment_id` (all mutually exclusive). By default, all contact related fields are exported. Use the fields array to only export specific contact fields. You must export `email_address` to successfully export `email_optin_source`, `email_optin_date`, `email_optout_source`, `email_optout_date`, or `email_optout_reason`. After Constant Contact finishes processing the activity, use the `results` link in the response body to retrieve the CSV file.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_export_activity_request = ConstantContactClient::CreateExportActivityRequest.new # CreateExportActivityRequest | A JSON payload that specifies the contacts (rows in the CSV file) and contact properties (columns in the CSV file) you want to export.

begin
  # Export Contacts to a File
  result = api_instance.create_export_activity(create_export_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_export_activity: #{e}"
end
```

#### Using the create_export_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateExportActivity201Response>, Integer, Hash)> create_export_activity_with_http_info(create_export_activity_request)

```ruby
begin
  # Export Contacts to a File
  data, status_code, headers = api_instance.create_export_activity_with_http_info(create_export_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateExportActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_export_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_export_activity_request** | [**CreateExportActivityRequest**](CreateExportActivityRequest.md) | A JSON payload that specifies the contacts (rows in the CSV file) and contact properties (columns in the CSV file) you want to export. |  |

### Return type

[**CreateExportActivity201Response**](CreateExportActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_import_json_activity

> <CreateCSVImportActivity201Response> create_import_json_activity(create_import_json_activity_request)

Import Contacts using a JSON Payload

Use this method to create an asynchronous background job that adds new contacts or updates existing contacts by importing a JSON payload. This method requires a request body that contains the contact data you are importing and the contact lists to which you want to add the imported contacts. Importing a new contact automatically sets the contact's `permission_to_send` property as `implicit` and the `opt_in_source` property as `Account`. Importing an existing contact only updates the contact properties you include in the request. For each contact, you can import up to three addresses and three phone numbers. International phone numbers are currently not supported. To import custom fields, prefix the custom field name with `cf:` and add it as a contact property. For example, use the property name `cf:first_name` if you have a custom field named first_name. The custom field must already exist in the Constant Contact account you are using. Each contact can contain up to 25 custom fields.  The request body payload has a maximum size of 4 megabytes (MB). If the request body exceeds 4 MB, this method only imports the first 4 MB and drops the remaining data. Use the activity URL to check the status of the import activity request.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_import_json_activity_request = ConstantContactClient::CreateImportJSONActivityRequest.new({import_data: [ConstantContactClient::CreateImportJSONActivityRequestImportDataInner.new({email: 'joe.jones@example.com'})], list_ids: ['04fe9a97-a579-43c5-bb1a-58ed29bf0a6a']}) # CreateImportJSONActivityRequest | The JSON request payload that contains the contact data and contact lists for the import.

begin
  # Import Contacts using a JSON Payload
  result = api_instance.create_import_json_activity(create_import_json_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_import_json_activity: #{e}"
end
```

#### Using the create_import_json_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCSVImportActivity201Response>, Integer, Hash)> create_import_json_activity_with_http_info(create_import_json_activity_request)

```ruby
begin
  # Import Contacts using a JSON Payload
  data, status_code, headers = api_instance.create_import_json_activity_with_http_info(create_import_json_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCSVImportActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_import_json_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_import_json_activity_request** | [**CreateImportJSONActivityRequest**](CreateImportJSONActivityRequest.md) | The JSON request payload that contains the contact data and contact lists for the import. |  |

### Return type

[**CreateCSVImportActivity201Response**](CreateCSVImportActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_list_add_activity

> <CreateListRemoveActivity201Response> create_list_add_activity(create_list_add_activity_request)

Add Contacts to Lists

Use this method to create an activity that adds contacts to one or more lists. Each contact can be a member of up to 50 lists. Use the properties in the `source` object to specify the contacts you want to add to lists. Use the `list_ids` array to specify which lists you want to add your source contacts to.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_list_add_activity_request = ConstantContactClient::CreateListAddActivityRequest.new({source: ConstantContactClient::CreateListAddActivityRequestSource.new, list_ids: ['04fe9a97-a579-43c5-bb1a-58ed29bf0a6a']}) # CreateListAddActivityRequest | The JSON payload used to create the 'add contacts to lists' activity

begin
  # Add Contacts to Lists
  result = api_instance.create_list_add_activity(create_list_add_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_list_add_activity: #{e}"
end
```

#### Using the create_list_add_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListRemoveActivity201Response>, Integer, Hash)> create_list_add_activity_with_http_info(create_list_add_activity_request)

```ruby
begin
  # Add Contacts to Lists
  data, status_code, headers = api_instance.create_list_add_activity_with_http_info(create_list_add_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListRemoveActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_list_add_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_list_add_activity_request** | [**CreateListAddActivityRequest**](CreateListAddActivityRequest.md) | The JSON payload used to create the &#39;add contacts to lists&#39; activity |  |

### Return type

[**CreateListRemoveActivity201Response**](CreateListRemoveActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_list_delete_activity

> <CreateListDeleteActivity201Response> create_list_delete_activity(create_list_delete_activity_request)

Delete Contact Lists

Use this endpoint to delete up to 100 contact lists in an account. 

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_list_delete_activity_request = ConstantContactClient::CreateListDeleteActivityRequest.new({list_ids: ['04fe9a97-a579-43c5-bb1a-58ed29bf0a6a']}) # CreateListDeleteActivityRequest | An array of `list_id`'s to delete.

begin
  # Delete Contact Lists
  result = api_instance.create_list_delete_activity(create_list_delete_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_list_delete_activity: #{e}"
end
```

#### Using the create_list_delete_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListDeleteActivity201Response>, Integer, Hash)> create_list_delete_activity_with_http_info(create_list_delete_activity_request)

```ruby
begin
  # Delete Contact Lists
  data, status_code, headers = api_instance.create_list_delete_activity_with_http_info(create_list_delete_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListDeleteActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_list_delete_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_list_delete_activity_request** | [**CreateListDeleteActivityRequest**](CreateListDeleteActivityRequest.md) | An array of &#x60;list_id&#x60;&#39;s to delete. |  |

### Return type

[**CreateListDeleteActivity201Response**](CreateListDeleteActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_list_remove_activity

> <CreateListRemoveActivity201Response> create_list_remove_activity(create_list_remove_activity_request)

Remove Contacts from Lists

Use this method to create an activity that removes contacts from one or more contact lists. Use the properties in the `source` object to remove specific contacts from your lists. Use the `list_ids` array to specify the target lists from which contacts are removed. Optionally, if the source is  `all_active_contacts` (billable) or `list_ids`, use the `exclude` object to exclude specific contacts from being removed from the destination lists.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_list_remove_activity_request = ConstantContactClient::CreateListRemoveActivityRequest.new({source: ConstantContactClient::CreateListRemoveActivityRequestSource.new, list_ids: ['04fe9a97-a579-43c5-bb1a-58ed29bf0a6a']}) # CreateListRemoveActivityRequest | The JSON payload used to create the Remove Contacts from Lists' activity

begin
  # Remove Contacts from Lists
  result = api_instance.create_list_remove_activity(create_list_remove_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_list_remove_activity: #{e}"
end
```

#### Using the create_list_remove_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateListRemoveActivity201Response>, Integer, Hash)> create_list_remove_activity_with_http_info(create_list_remove_activity_request)

```ruby
begin
  # Remove Contacts from Lists
  data, status_code, headers = api_instance.create_list_remove_activity_with_http_info(create_list_remove_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateListRemoveActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_list_remove_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_list_remove_activity_request** | [**CreateListRemoveActivityRequest**](CreateListRemoveActivityRequest.md) | The JSON payload used to create the Remove Contacts from Lists&#39; activity |  |

### Return type

[**CreateListRemoveActivity201Response**](CreateListRemoveActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag_add_contact_activity

> <CreateTagRemoveActivity201Response> create_tag_add_contact_activity(create_tag_remove_activity_request)

Add Tags to Contacts

Use this method to create an asynchronous activity that adds one or more tags to all contacts meeting your contact filtering criteria. Use the `source` type to identify contacts from which the specified tags (`tag_id`) are added. Source criteria are mutually exclusive. If the source is `all_active_contacts` or `list_ids`, you can optionally choose to `exclude` contacts by `contact_id`. Use the activity link in the results to check the status of your request. For more use case information, see \"[Add Tags to Contacts](/api_guide/add_tagging_activity.html)

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_tag_remove_activity_request = ConstantContactClient::CreateTagRemoveActivityRequest.new({source: ConstantContactClient::CreateTagRemoveActivityRequestSource.new, tag_ids: ['5bbf758c-d8ce-11e9-8d3a-fa163e56c9b0']}) # CreateTagRemoveActivityRequest | The JSON payload used to create an asynchronous activity that adds tags to contacts that meet your specified contact filtering criteria.

begin
  # Add Tags to Contacts
  result = api_instance.create_tag_add_contact_activity(create_tag_remove_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_tag_add_contact_activity: #{e}"
end
```

#### Using the create_tag_add_contact_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTagRemoveActivity201Response>, Integer, Hash)> create_tag_add_contact_activity_with_http_info(create_tag_remove_activity_request)

```ruby
begin
  # Add Tags to Contacts
  data, status_code, headers = api_instance.create_tag_add_contact_activity_with_http_info(create_tag_remove_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTagRemoveActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_tag_add_contact_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag_remove_activity_request** | [**CreateTagRemoveActivityRequest**](CreateTagRemoveActivityRequest.md) | The JSON payload used to create an asynchronous activity that adds tags to contacts that meet your specified contact filtering criteria. |  |

### Return type

[**CreateTagRemoveActivity201Response**](CreateTagRemoveActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag_delete_activity

> <CreateTagRemoveActivity201Response> create_tag_delete_activity(create_tag_delete_activity_request)

Delete Tags

Use this method to create an asynchronous activity that deletes up to 500 tags. Deleted tags are automatically removed from tagged contacts. Use the `tag_ids` array of string values in the request body to specify which tags to delete.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_tag_delete_activity_request = ConstantContactClient::CreateTagDeleteActivityRequest.new({tag_ids: ['00e4429c-3beb-11eb-9f34-fa163e56c9b9']}) # CreateTagDeleteActivityRequest | An array of string values (`tag_id`s) to delete.

begin
  # Delete Tags
  result = api_instance.create_tag_delete_activity(create_tag_delete_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_tag_delete_activity: #{e}"
end
```

#### Using the create_tag_delete_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTagRemoveActivity201Response>, Integer, Hash)> create_tag_delete_activity_with_http_info(create_tag_delete_activity_request)

```ruby
begin
  # Delete Tags
  data, status_code, headers = api_instance.create_tag_delete_activity_with_http_info(create_tag_delete_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTagRemoveActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_tag_delete_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag_delete_activity_request** | [**CreateTagDeleteActivityRequest**](CreateTagDeleteActivityRequest.md) | An array of string values (&#x60;tag_id&#x60;s) to delete. |  |

### Return type

[**CreateTagRemoveActivity201Response**](CreateTagRemoveActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tag_remove_activity

> <CreateTagRemoveActivity201Response> create_tag_remove_activity(create_tag_remove_activity_request)

Remove Tags from Contacts

Use this method to create an asynchronous activity that removes one or more tags from all contacts meeting your contact filtering criteria. Filtering criteria must include the `source` type used to identify contacts from which the specified tags (`tag_id`) are removed. Source types are mutually exclusive. If the specified source is either `all_active_contacts` or `list_ids`, you can optionally choose to `exclude` specified contacts by `contact_id`. Use the activity link in the results to check the status of your request.\" For more use case information, see \"[Remove Tags from Contacts](/api_guide/remove_tagging_activity.html)

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
create_tag_remove_activity_request = ConstantContactClient::CreateTagRemoveActivityRequest.new({source: ConstantContactClient::CreateTagRemoveActivityRequestSource.new, tag_ids: ['5bbf758c-d8ce-11e9-8d3a-fa163e56c9b0']}) # CreateTagRemoveActivityRequest | The JSON payload used to create an asynchronous activity that removes tags from contacts meeting your specified contact filtering criteria.

begin
  # Remove Tags from Contacts
  result = api_instance.create_tag_remove_activity(create_tag_remove_activity_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_tag_remove_activity: #{e}"
end
```

#### Using the create_tag_remove_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTagRemoveActivity201Response>, Integer, Hash)> create_tag_remove_activity_with_http_info(create_tag_remove_activity_request)

```ruby
begin
  # Remove Tags from Contacts
  data, status_code, headers = api_instance.create_tag_remove_activity_with_http_info(create_tag_remove_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTagRemoveActivity201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->create_tag_remove_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_tag_remove_activity_request** | [**CreateTagRemoveActivityRequest**](CreateTagRemoveActivityRequest.md) | The JSON payload used to create an asynchronous activity that removes tags from contacts meeting your specified contact filtering criteria. |  |

### Return type

[**CreateTagRemoveActivity201Response**](CreateTagRemoveActivity201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_activity_by_id

> <GetActivityById200Response> get_activity_by_id(activity_id)

GET an Activity Status

This endpoint returns an activity status report.

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
activity_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | The unique ID of the activity to GET

begin
  # GET an Activity Status
  result = api_instance.get_activity_by_id(activity_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->get_activity_by_id: #{e}"
end
```

#### Using the get_activity_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetActivityById200Response>, Integer, Hash)> get_activity_by_id_with_http_info(activity_id)

```ruby
begin
  # GET an Activity Status
  data, status_code, headers = api_instance.get_activity_by_id_with_http_info(activity_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetActivityById200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->get_activity_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activity_id** | **String** | The unique ID of the activity to GET |  |

### Return type

[**GetActivityById200Response**](GetActivityById200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_activities

> <GetAllActivities200Response> get_all_activities(opts)

GET Activity Status Collection

This endpoint returns a collection of activities. Use the state query parameter to include only activities with a specific status (processing, completed, cancelled, failed, or time_out). Use the limit query parameter to define the number of activities returned per page. Learn [more](/api_guide/activity_status.html).

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
opts = {
  limit: 25, # Integer | Specifies the number of results displayed per page of output, from 1 - 500, default = 50.
  state: 'processing' # String | Use this parameter to filter the response to include only activities in one of the following states: cancelled, completed, failed, processing, or timed_out.
}

begin
  # GET Activity Status Collection
  result = api_instance.get_all_activities(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->get_all_activities: #{e}"
end
```

#### Using the get_all_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllActivities200Response>, Integer, Hash)> get_all_activities_with_http_info(opts)

```ruby
begin
  # GET Activity Status Collection
  data, status_code, headers = api_instance.get_all_activities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllActivities200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->get_all_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Specifies the number of results displayed per page of output, from 1 - 500, default &#x3D; 50. | [optional][default to 50] |
| **state** | **String** | Use this parameter to filter the response to include only activities in one of the following states: cancelled, completed, failed, processing, or timed_out. | [optional] |

### Return type

[**GetAllActivities200Response**](GetAllActivities200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_csv_export_file

> String get_csv_export_file(file_export_id)

Retrieve Exported Contacts File

Use this endpoint to retrieve (GET) a CSV file containing exported contacts by providing the `activity_id` of a completed CSV export activity.  

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
file_export_id = '04fe9a-a579-43c5-bb1a-58ed29bf0a6a' # String | The unique ID of the exported file provided in the results: section of the export contacts activity response.

begin
  # Retrieve Exported Contacts File
  result = api_instance.get_csv_export_file(file_export_id)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->get_csv_export_file: #{e}"
end
```

#### Using the get_csv_export_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_csv_export_file_with_http_info(file_export_id)

```ruby
begin
  # Retrieve Exported Contacts File
  data, status_code, headers = api_instance.get_csv_export_file_with_http_info(file_export_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->get_csv_export_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_export_id** | **String** | The unique ID of the exported file provided in the results: section of the export contacts activity response. |  |

### Return type

**String**

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/csv


## post_custom_field_delete

> <PostCustomFieldDelete201Response> post_custom_field_delete(post_custom_field_delete_request)

Delete Custom Fields

Use this endpoint to delete up to 100 custom fields for an account. 

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

api_instance = ConstantContactClient::BulkActivitiesApi.new
post_custom_field_delete_request = ConstantContactClient::PostCustomFieldDeleteRequest.new({custom_field_ids: ['04fe9a97-a579-43c5-bb1a-58ed29bf0a6a']}) # PostCustomFieldDeleteRequest | An array of `custom_field_id`'s to delete.

begin
  # Delete Custom Fields
  result = api_instance.post_custom_field_delete(post_custom_field_delete_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->post_custom_field_delete: #{e}"
end
```

#### Using the post_custom_field_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostCustomFieldDelete201Response>, Integer, Hash)> post_custom_field_delete_with_http_info(post_custom_field_delete_request)

```ruby
begin
  # Delete Custom Fields
  data, status_code, headers = api_instance.post_custom_field_delete_with_http_info(post_custom_field_delete_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostCustomFieldDelete201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling BulkActivitiesApi->post_custom_field_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_custom_field_delete_request** | [**PostCustomFieldDeleteRequest**](PostCustomFieldDeleteRequest.md) | An array of &#x60;custom_field_id&#x60;&#39;s to delete. |  |

### Return type

[**PostCustomFieldDelete201Response**](PostCustomFieldDelete201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

