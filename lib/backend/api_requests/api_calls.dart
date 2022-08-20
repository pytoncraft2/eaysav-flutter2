import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetMarquesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Marques',
      apiUrl: 'http://192.168.1.15:8000/api/marques',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetModelesCall {
  static Future<ApiCallResponse> call({
    String? marque = '',
    String? equipement = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Modeles',
      apiUrl: 'http://192.168.1.15:8000/api/${equipement}/${marque}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
