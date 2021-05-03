# cowin_api.api.AppointmentAvailabilityAPIsApi

## Load the API package
```dart
import 'package:cowin_api/api.dart';
```

All URIs are relative to *https://cdn-api.co-vin.in/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calendarByDistrict**](AppointmentAvailabilityAPIsApi.md#calendarbydistrict) | **get** /v2/appointment/sessions/public/calendarByDistrict | Get vaccination sessions by district for 7 days
[**calendarByPin**](AppointmentAvailabilityAPIsApi.md#calendarbypin) | **get** /v2/appointment/sessions/public/calendarByPin | Get vaccination sessions by PIN for 7 days
[**findByDistrict**](AppointmentAvailabilityAPIsApi.md#findbydistrict) | **get** /v2/appointment/sessions/public/findByDistrict | Get vaccination sessions by district
[**findByPin**](AppointmentAvailabilityAPIsApi.md#findbypin) | **get** /v2/appointment/sessions/public/findByPin | Get vaccination sessions by PIN


# **calendarByDistrict**
> JsonObject calendarByDistrict(districtId, date, acceptLanguage)

Get vaccination sessions by district for 7 days

API to get planned vaccination sessions for 7 days from a specific date in a given district.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new AppointmentAvailabilityAPIsApi();
var districtId = 512; // String | 
var date = 31-03-2021; // String | 
var acceptLanguage = hi_IN; // String | The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text.

try { 
    var result = api_instance.calendarByDistrict(districtId, date, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentAvailabilityAPIsApi->calendarByDistrict: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtId** | **String**|  | 
 **date** | **String**|  | 
 **acceptLanguage** | **String**| The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text. | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **calendarByPin**
> JsonObject calendarByPin(pincode, date, acceptLanguage)

Get vaccination sessions by PIN for 7 days

API to get planned vaccination sessions for 7 days from a specific date in a given pin.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new AppointmentAvailabilityAPIsApi();
var pincode = 110001; // String | 
var date = 31-03-2021; // String | 
var acceptLanguage = hi_IN; // String | The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text.

try { 
    var result = api_instance.calendarByPin(pincode, date, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentAvailabilityAPIsApi->calendarByPin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pincode** | **String**|  | 
 **date** | **String**|  | 
 **acceptLanguage** | **String**| The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text. | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findByDistrict**
> JsonObject findByDistrict(districtId, date, acceptLanguage)

Get vaccination sessions by district

API to get planned vaccination sessions on a specific date in a given district.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new AppointmentAvailabilityAPIsApi();
var districtId = 512; // String | 
var date = 31-03-2021; // String | 
var acceptLanguage = hi_IN; // String | The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text.

try { 
    var result = api_instance.findByDistrict(districtId, date, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentAvailabilityAPIsApi->findByDistrict: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **districtId** | **String**|  | 
 **date** | **String**|  | 
 **acceptLanguage** | **String**| The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text. | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findByPin**
> JsonObject findByPin(pincode, date, acceptLanguage)

Get vaccination sessions by PIN

API to get planned vaccination sessions on a specific date in a given pin.

### Example 
```dart
import 'package:cowin_api/api.dart';

var api_instance = new AppointmentAvailabilityAPIsApi();
var pincode = 110001; // String | 
var date = 31-03-2021; // String | 
var acceptLanguage = hi_IN; // String | The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text.

try { 
    var result = api_instance.findByPin(pincode, date, acceptLanguage);
    print(result);
} catch (e) {
    print('Exception when calling AppointmentAvailabilityAPIsApi->findByPin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pincode** | **String**|  | 
 **date** | **String**|  | 
 **acceptLanguage** | **String**| The locate code of the preferred language such as en_US. The text data will be returned in the preferred language along with default English text. | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

