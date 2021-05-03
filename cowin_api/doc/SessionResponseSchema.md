# cowin_api.model.SessionResponseSchema

## Load the model package
```dart
import 'package:cowin_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**centerId** | **num** |  | 
**name** | **String** |  | 
**nameL** | **String** | Name in preferred language as specified in Accept-Language header parameter. | [optional] 
**stateName** | **String** |  | 
**stateNameL** | **String** | State name in preferred language as specified in Accept-Language header parameter. | [optional] 
**districtName** | **String** |  | 
**districtNameL** | **String** | District name in preferred language as specified in Accept-Language header parameter. | [optional] 
**blockName** | **String** |  | 
**blockNameL** | **String** | Block name in preferred language as specified in Accept-Language header parameter. | [optional] 
**pincode** | **String** |  | 
**lat** | **double** |  | [optional] 
**long** | **double** |  | [optional] 
**from** | **String** |  | 
**to** | **String** |  | 
**feeType** | **String** | Fee charged for vaccination | 
**fee** | **String** |  | 
**sessionId** | **String** |  | 
**date** | **String** |  | 
**availableCapacity** | **num** |  | 
**minAgeLimit** | **num** |  | 
**vaccine** | **String** |  | 
**slots** | **BuiltSet<String>** | Array of slot names | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


