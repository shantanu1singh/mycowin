# cowin_api.api.MetadataAPIsApi

## Load the API package
```dart
import 'package:cowin_api/api.dart';
```

All URIs are relative to *https://cdn-api.co-vin.in/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**districts**](MetadataAPIsApi.md#districts) | **get** /v2/admin/location/districts/{state_id} | Get list of districts
[**states**](MetadataAPIsApi.md#states) | **get** /v2/admin/location/states | Get states


# **districts**
> InlineResponse2003 districts(stateId, acceptLanguage)

Get list of districts

API to get all the districts.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new MetadataAPIsApi();
var stateId = 16; // String | 
var acceptLanguage = hi_IN; // String | The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text.

try { 
    var result = api_instance.districts(stateId, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MetadataAPIsApi->districts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stateId** | **String**|  | 
 **acceptLanguage** | **String**| The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text. | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, examples

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **states**
> InlineResponse2002 states(acceptLanguage)

Get states

API to get all the states in India.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new MetadataAPIsApi();
var acceptLanguage = hi_IN; // String | The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text.

try { 
    var result = api_instance.states(acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling MetadataAPIsApi->states: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptLanguage** | **String**| The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text. | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, examples

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

