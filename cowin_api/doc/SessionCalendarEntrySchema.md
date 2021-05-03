# cowin_api.model.SessionCalendarEntrySchema

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
**vaccineFees** | [**BuiltSet<VaccineFeeSchema>**](VaccineFeeSchema.md) |  | [optional] 
**sessions** | [**BuiltList<SessionCalendarEntrySchemaSessions>**](SessionCalendarEntrySchemaSessions.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


