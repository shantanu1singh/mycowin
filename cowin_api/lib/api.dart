//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library cowin_api.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:cowin_api/serializers.dart';
import 'package:cowin_api/auth/api_key_auth.dart';
import 'package:cowin_api/auth/basic_auth.dart';
import 'package:cowin_api/auth/oauth.dart';
import 'package:cowin_api/api/appointment_availability_apis_api.dart';
import 'package:cowin_api/api/certificate_apis_api.dart';
import 'package:cowin_api/api/metadata_apis_api.dart';
import 'package:cowin_api/api/user_authentication_apis_api.dart';


final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor(),
];

class CowinApi {

    static const String basePath = r'https://cdn-api.co-vin.in/api';

    final Dio dio;

    final Serializers serializers;

    CowinApi({
      Dio dio,
      Serializers serializers,
      String basePathOverride,
      List<Interceptor> interceptors,
    })  : this.serializers = serializers ?? standardSerializers,
          this.dio = dio ??
              Dio(BaseOptions(
                baseUrl: basePathOverride ?? basePath,
                connectTimeout: 5000,
                receiveTimeout: 3000,
              )) {
      if (interceptors == null) {
        this.dio.interceptors.addAll(_defaultInterceptors);
      } else {
        this.dio.interceptors.addAll(interceptors);
      }
    }

    void setOAuthToken(String name, String token) {
        (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor, orElse: null) as OAuthInterceptor)?.tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (this.dio.interceptors.firstWhere((element) => element is BasicAuthInterceptor, orElse: null) as BasicAuthInterceptor)?.authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor, orElse: null) as ApiKeyAuthInterceptor)?.apiKeys[name] = apiKey;
    }


    /**
    * Get AppointmentAvailabilityAPIsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AppointmentAvailabilityAPIsApi getAppointmentAvailabilityAPIsApi() {
    return AppointmentAvailabilityAPIsApi(dio, serializers);
    }


    /**
    * Get CertificateAPIsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    CertificateAPIsApi getCertificateAPIsApi() {
    return CertificateAPIsApi(dio, serializers);
    }


    /**
    * Get MetadataAPIsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    MetadataAPIsApi getMetadataAPIsApi() {
    return MetadataAPIsApi(dio, serializers);
    }


    /**
    * Get UserAuthenticationAPIsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    UserAuthenticationAPIsApi getUserAuthenticationAPIsApi() {
    return UserAuthenticationAPIsApi(dio, serializers);
    }


}
