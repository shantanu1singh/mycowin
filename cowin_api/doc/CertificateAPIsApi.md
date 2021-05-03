# cowin_api.api.CertificateAPIsApi

## Load the API package
```dart
import 'package:cowin_api/api.dart';
```

All URIs are relative to *https://cdn-api.co-vin.in/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download**](CertificateAPIsApi.md#download) | **get** /v2/registration/certificate/public/download | Download vaccination certificate in PDF format by beneficiary reference id


# **download**
> Uint8List download(beneficiaryReferenceId)

Download vaccination certificate in PDF format by beneficiary reference id

API to download vaccination certificate in PDF format by beneficiary reference id. This API requires a <i>Bearer</i> token acquired with user mobile OTP validation as defined in User Authentication APIs.

### Example 
```dart
import 'package:cowin_api/api.dart';
// TODO Configure HTTP basic authorization: BearerAuth
//defaultApiClient.getAuthentication<HttpBasicAuth>('BearerAuth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('BearerAuth').password = 'YOUR_PASSWORD';

var api_instance = new CertificateAPIsApi();
var beneficiaryReferenceId = 1234567890123; // String | 

try { 
    var result = api_instance.download(beneficiaryReferenceId);
    print(result);
} catch (e) {
    print('Exception when calling CertificateAPIsApi->download: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **beneficiaryReferenceId** | **String**|  | 

### Return type

[**Uint8List**](Uint8List.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

