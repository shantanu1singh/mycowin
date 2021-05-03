# cowin_api.api.UserAuthenticationAPIsApi

## Load the API package
```dart
import 'package:cowin_api/api.dart';
```

All URIs are relative to *https://cdn-api.co-vin.in/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmOTP**](UserAuthenticationAPIsApi.md#confirmotp) | **post** /v2/auth/public/confirmOTP | Confirm mobile OTP for authentication
[**generateOTP**](UserAuthenticationAPIsApi.md#generateotp) | **post** /v2/auth/public/generateOTP | Authenticate a beneficiary by Mobile/OTP


# **confirmOTP**
> InlineResponse2001 confirmOTP(inlineObject1)

Confirm mobile OTP for authentication

API to confirm the OTP for authentication.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new UserAuthenticationAPIsApi();
var inlineObject1 = new InlineObject1(); // InlineObject1 | 

try { 
    var result = api_instance.confirmOTP(inlineObject1);
    print(result);
} catch (e) {
    print('Exception when calling UserAuthenticationAPIsApi->confirmOTP: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject1** | [**InlineObject1**](InlineObject1.md)|  | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateOTP**
> InlineResponse200 generateOTP(inlineObject)

Authenticate a beneficiary by Mobile/OTP

Initiate beneficiary authentication using mobile and OTP

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new UserAuthenticationAPIsApi();
var inlineObject = new InlineObject(); // InlineObject | 

try { 
    var result = api_instance.generateOTP(inlineObject);
    print(result);
} catch (e) {
    print('Exception when calling UserAuthenticationAPIsApi->generateOTP: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inlineObject** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

