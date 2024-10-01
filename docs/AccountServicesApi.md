# ConstantContactClient::AccountServicesApi

All URIs are relative to *https://api.cc.email/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_account_email_address**](AccountServicesApi.md#add_account_email_address) | **POST** /account/emails | POST Add an Account Email Address |
| [**add_physical_address**](AccountServicesApi.md#add_physical_address) | **POST** /account/summary/physical_address | POST the Physical Address for the Account |
| [**get_account_details**](AccountServicesApi.md#get_account_details) | **GET** /account/summary | GET a Summary of Account Details |
| [**get_account_physical_address**](AccountServicesApi.md#get_account_physical_address) | **GET** /account/summary/physical_address | GET the Physical Address for the Account |
| [**get_all_account_email_addresses**](AccountServicesApi.md#get_all_account_email_addresses) | **GET** /account/emails | GET a Collection of Account Email Addresses |
| [**get_user_privileges**](AccountServicesApi.md#get_user_privileges) | **GET** /account/user/privileges | GET User Privileges |
| [**update_account**](AccountServicesApi.md#update_account) | **PUT** /account/summary | PUT (update) Account Details |
| [**update_account_physical_address**](AccountServicesApi.md#update_account_physical_address) | **PUT** /account/summary/physical_address | PUT (update) the Physical Address for an Account |


## add_account_email_address

> <AddAccountEmailAddress201Response> add_account_email_address(add_account_email_address_request)

POST Add an Account Email Address

Use this method to add a new email address to a Constant Contact account. If the email address you are adding already exists in the account the API will return a 409 conflict error.   When you add a new email address to an account, Constant Contact automatically sends an email to that address with a link to confirm it. After a user clicks that link, the account email status changes from `UNCONFIRMED` to `CONFIRMED`. You can use confirmed account email addresses in the email campaign `from_email` and `reply_to_email` headers. For more use case information, see [Add an Account Email Address](/api_guide/account_post_emails.html) in the API guide.  

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

api_instance = ConstantContactClient::AccountServicesApi.new
add_account_email_address_request = ConstantContactClient::AddAccountEmailAddressRequest.new # AddAccountEmailAddressRequest | A JSON request payload containing the new email address you want to add to the Constant Contact account.

begin
  # POST Add an Account Email Address
  result = api_instance.add_account_email_address(add_account_email_address_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->add_account_email_address: #{e}"
end
```

#### Using the add_account_email_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddAccountEmailAddress201Response>, Integer, Hash)> add_account_email_address_with_http_info(add_account_email_address_request)

```ruby
begin
  # POST Add an Account Email Address
  data, status_code, headers = api_instance.add_account_email_address_with_http_info(add_account_email_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddAccountEmailAddress201Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->add_account_email_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_account_email_address_request** | [**AddAccountEmailAddressRequest**](AddAccountEmailAddressRequest.md) | A JSON request payload containing the new email address you want to add to the Constant Contact account. |  |

### Return type

[**AddAccountEmailAddress201Response**](AddAccountEmailAddress201Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_physical_address

> <GetAccountDetails200ResponsePhysicalAddress> add_physical_address(get_account_details200_response_physical_address)

POST the Physical Address for the Account

Use this method to add the address where the account's organization physically resides. The physical address is required to send emails and displays on the footer of every email that is sent from the account. The country (<code>country_code</code>) where the account organization resides determines whether you use the <code>state_code</code> to specify United States (<code>US</code>) and Canada (<code>CA</code>) addresses, or use the <code>state_name</code> to specify all other countries.

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

api_instance = ConstantContactClient::AccountServicesApi.new
get_account_details200_response_physical_address = ConstantContactClient::GetAccountDetails200ResponsePhysicalAddress.new({address_line1: '123 Maple Street', city: 'Boston', country_code: 'US'}) # GetAccountDetails200ResponsePhysicalAddress | Include all `AccountPhysicalAddress` properties required for the specified `country_code` and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address.

begin
  # POST the Physical Address for the Account
  result = api_instance.add_physical_address(get_account_details200_response_physical_address)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->add_physical_address: #{e}"
end
```

#### Using the add_physical_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountDetails200ResponsePhysicalAddress>, Integer, Hash)> add_physical_address_with_http_info(get_account_details200_response_physical_address)

```ruby
begin
  # POST the Physical Address for the Account
  data, status_code, headers = api_instance.add_physical_address_with_http_info(get_account_details200_response_physical_address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountDetails200ResponsePhysicalAddress>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->add_physical_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_account_details200_response_physical_address** | [**GetAccountDetails200ResponsePhysicalAddress**](GetAccountDetails200ResponsePhysicalAddress.md) | Include all &#x60;AccountPhysicalAddress&#x60; properties required for the specified &#x60;country_code&#x60; and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address. |  |

### Return type

[**GetAccountDetails200ResponsePhysicalAddress**](GetAccountDetails200ResponsePhysicalAddress.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_account_details

> <GetAccountDetails200Response> get_account_details(opts)

GET a Summary of Account Details

Get account related details for a Constant Contact user account. Use the `extra_fields` query parameter to include the `company_logo` and/or `physical_address` details in the response body. For more details, see [Get Account Summary Details](/api_guide/account_details_get.html).

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

api_instance = ConstantContactClient::AccountServicesApi.new
opts = {
  extra_fields: 'physical_address' # String | Use the `extra_fields` query parameter to include the `physical_address` and/or `company_logo` details in the response body. Use a comma separated list to include both (physical_address, company logo).
}

begin
  # GET a Summary of Account Details
  result = api_instance.get_account_details(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_account_details: #{e}"
end
```

#### Using the get_account_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountDetails200Response>, Integer, Hash)> get_account_details_with_http_info(opts)

```ruby
begin
  # GET a Summary of Account Details
  data, status_code, headers = api_instance.get_account_details_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountDetails200Response>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_account_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **extra_fields** | **String** | Use the &#x60;extra_fields&#x60; query parameter to include the &#x60;physical_address&#x60; and/or &#x60;company_logo&#x60; details in the response body. Use a comma separated list to include both (physical_address, company logo). | [optional] |

### Return type

[**GetAccountDetails200Response**](GetAccountDetails200Response.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_account_physical_address

> <GetAccountDetails200ResponsePhysicalAddress> get_account_physical_address

GET the Physical Address for the Account

Use this method to get the address where the account's organization physically resides. The physical address is required to send emails and displays on the footer of every email that is sent from the account.

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

api_instance = ConstantContactClient::AccountServicesApi.new

begin
  # GET the Physical Address for the Account
  result = api_instance.get_account_physical_address
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_account_physical_address: #{e}"
end
```

#### Using the get_account_physical_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountDetails200ResponsePhysicalAddress>, Integer, Hash)> get_account_physical_address_with_http_info

```ruby
begin
  # GET the Physical Address for the Account
  data, status_code, headers = api_instance.get_account_physical_address_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountDetails200ResponsePhysicalAddress>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_account_physical_address_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAccountDetails200ResponsePhysicalAddress**](GetAccountDetails200ResponsePhysicalAddress.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_account_email_addresses

> <Array<GetAllAccountEmailAddresses200ResponseInner>> get_all_account_email_addresses(opts)

GET a Collection of Account Email Addresses

Use this method to return a collection of email addresses for the account associated with your access token. When you <a href=\"https://v3.developer.constantcontact.com/api_reference/index.html#!/Email_Campaigns/createEmailCampaignUsingPOST\" target=\"_blank\">Create an Email Campaign<a/>, you must use an account email address with a `CONFIRMED` status in the email campaign `from_email` and `reply_to_email` headers.         Use the query parameters to filter results. You can filter using `confirm_status`, `role_code`, or `email_address`. For example, searching with `confirm_status=CONFIRMED` returns all confirmed email addresses in the account. This method only supports one query parameter at a time. 

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

api_instance = ConstantContactClient::AccountServicesApi.new
opts = {
  confirm_status: 'CONFIRMED', # String | Use the `confirm_status` query parameter to search for account emails using the email status. Possible values are `CONFIRMED` or `UNCONFIRMED`. You can also abbreviate the values of this query parameter and use `C` or `U`. 
  role_code: 'CONTACT', # String | Use the `role_code` query parameter to search for account emails that have a specific role. Each each email address in an account can have multiple roles or no role. Possible values are `CONTACT`, `BILLING`, `REPLY_TO`, `JOURNALING`, or `OTHER`. You can also abbreviate the value of this query parameter and use `C`,`B`,`R`,`J`, or `O`.
  email_address: 'email_address_example' # String | Use the `email_address` query parameter to search for a specific account email address.
}

begin
  # GET a Collection of Account Email Addresses
  result = api_instance.get_all_account_email_addresses(opts)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_all_account_email_addresses: #{e}"
end
```

#### Using the get_all_account_email_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetAllAccountEmailAddresses200ResponseInner>>, Integer, Hash)> get_all_account_email_addresses_with_http_info(opts)

```ruby
begin
  # GET a Collection of Account Email Addresses
  data, status_code, headers = api_instance.get_all_account_email_addresses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetAllAccountEmailAddresses200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_all_account_email_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirm_status** | **String** | Use the &#x60;confirm_status&#x60; query parameter to search for account emails using the email status. Possible values are &#x60;CONFIRMED&#x60; or &#x60;UNCONFIRMED&#x60;. You can also abbreviate the values of this query parameter and use &#x60;C&#x60; or &#x60;U&#x60;.  | [optional] |
| **role_code** | **String** | Use the &#x60;role_code&#x60; query parameter to search for account emails that have a specific role. Each each email address in an account can have multiple roles or no role. Possible values are &#x60;CONTACT&#x60;, &#x60;BILLING&#x60;, &#x60;REPLY_TO&#x60;, &#x60;JOURNALING&#x60;, or &#x60;OTHER&#x60;. You can also abbreviate the value of this query parameter and use &#x60;C&#x60;,&#x60;B&#x60;,&#x60;R&#x60;,&#x60;J&#x60;, or &#x60;O&#x60;. | [optional] |
| **email_address** | **String** | Use the &#x60;email_address&#x60; query parameter to search for a specific account email address. | [optional] |

### Return type

[**Array&lt;GetAllAccountEmailAddresses200ResponseInner&gt;**](GetAllAccountEmailAddresses200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_privileges

> <Array<GetUserPrivileges200ResponseInner>> get_user_privileges

GET User Privileges

Use this method to return the user privileges associated with your access token as an array of objects. This method returns all user privileges, including privileges the V3 API does not currently use. Constant Contact requires specific user privileges to make requests using the V3 API. For more information, see the [User Privileges and Roles Overview](/api_guide/user_privileges.html).

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

api_instance = ConstantContactClient::AccountServicesApi.new

begin
  # GET User Privileges
  result = api_instance.get_user_privileges
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_user_privileges: #{e}"
end
```

#### Using the get_user_privileges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GetUserPrivileges200ResponseInner>>, Integer, Hash)> get_user_privileges_with_http_info

```ruby
begin
  # GET User Privileges
  data, status_code, headers = api_instance.get_user_privileges_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GetUserPrivileges200ResponseInner>>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->get_user_privileges_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;GetUserPrivileges200ResponseInner&gt;**](GetUserPrivileges200ResponseInner.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_account

> <UpdateAccountRequest> update_account(update_account_request)

PUT (update) Account Details

Use this method to update account details for a Constant Contact account, such as the email address or phone number. This PUT method provides a partial update where only valid properties that you include in the request body are updated and excluded properties are not overwritten. For more details, see [Put (update) Account Summary Details](/api_guide/account_details_put.html).

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

api_instance = ConstantContactClient::AccountServicesApi.new
update_account_request = ConstantContactClient::UpdateAccountRequest.new # UpdateAccountRequest | In the request body, specify changes to account details by including and modifying all or select `CustomerPut` properties. Changes to read-only fields (`encoded_account_id`) are ignored.

begin
  # PUT (update) Account Details
  result = api_instance.update_account(update_account_request)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->update_account: #{e}"
end
```

#### Using the update_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAccountRequest>, Integer, Hash)> update_account_with_http_info(update_account_request)

```ruby
begin
  # PUT (update) Account Details
  data, status_code, headers = api_instance.update_account_with_http_info(update_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAccountRequest>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->update_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_account_request** | [**UpdateAccountRequest**](UpdateAccountRequest.md) | In the request body, specify changes to account details by including and modifying all or select &#x60;CustomerPut&#x60; properties. Changes to read-only fields (&#x60;encoded_account_id&#x60;) are ignored. |  |

### Return type

[**UpdateAccountRequest**](UpdateAccountRequest.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_account_physical_address

> <GetAccountDetails200ResponsePhysicalAddress> update_account_physical_address(get_account_details200_response_physical_address)

PUT (update) the Physical Address for an Account

Use this method to update the organization's physical address for the Constant Contact user account. The physical address is required to send emails and displays on the footer of every email that is sent from the account. To get the current physical address, make a GET call to `/account/summary/physical_address`. The country (<code>country_code</code>) where the account organization resides determines whether you use the <code>state_code</code> to specify United States (<code>US</code>) and Canada (<code>CA</code>) addresses, or use the <code>state_name</code> to specify all other countries. For more details, see [Put (update) the Physical Address for the Account](/api_guide/account_address_put.html). You must have the role of Account Owner assigned to update account level details. 

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

api_instance = ConstantContactClient::AccountServicesApi.new
get_account_details200_response_physical_address = ConstantContactClient::GetAccountDetails200ResponsePhysicalAddress.new({address_line1: '123 Maple Street', city: 'Boston', country_code: 'US'}) # GetAccountDetails200ResponsePhysicalAddress | Include all `AccountPhysicalAddress` properties required for the specified `country_code` and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address.

begin
  # PUT (update) the Physical Address for an Account
  result = api_instance.update_account_physical_address(get_account_details200_response_physical_address)
  p result
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->update_account_physical_address: #{e}"
end
```

#### Using the update_account_physical_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAccountDetails200ResponsePhysicalAddress>, Integer, Hash)> update_account_physical_address_with_http_info(get_account_details200_response_physical_address)

```ruby
begin
  # PUT (update) the Physical Address for an Account
  data, status_code, headers = api_instance.update_account_physical_address_with_http_info(get_account_details200_response_physical_address)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAccountDetails200ResponsePhysicalAddress>
rescue ConstantContactClient::ApiError => e
  puts "Error when calling AccountServicesApi->update_account_physical_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **get_account_details200_response_physical_address** | [**GetAccountDetails200ResponsePhysicalAddress**](GetAccountDetails200ResponsePhysicalAddress.md) | Include all &#x60;AccountPhysicalAddress&#x60; properties required for the specified &#x60;country_code&#x60; and then update only those properties that you want to change. Excluding a non-read only field from the request body removes it from the physical address. |  |

### Return type

[**GetAccountDetails200ResponsePhysicalAddress**](GetAccountDetails200ResponsePhysicalAddress.md)

### Authorization

[oauth2_access_code](../README.md#oauth2_access_code), [oauth2_implicit](../README.md#oauth2_implicit)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

