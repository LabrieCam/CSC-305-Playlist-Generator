import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GenerateDailyPlaylistCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'BQDvIdxfikhy6ydjIJgQWo_7igWhL2o88hbXrGh2JYJtvS0z1tvNsuJm2e_I3Lay0Zmw-Hko0G3rcTg9dy0EXXNG-4wZxRKuhJoPXcKrm6edSVLGa_I8DOrPVFk37dNpn2iGk8e34e1bdASpEobZxqJ-PLy_JKXKFO5tq5DiaiSS4AFjBB0QKvN2I1XPHeYtQqdTbVh1um4vJtBXU9cgcx-iAXXZlD_BXDiVFvpofk-PKdAFDjOqy7lV',
    String? genre = 'rock',
    bool? filterExplicit,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'generateDailyPlaylist',
      apiUrl: 'https://api-nmrs3g4o3q-uc.a.run.app/generateDailyPlaylist',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'genre': genre,
        'accessToken': accessToken,
        'filterExplicit': filterExplicit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? dailylink(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.playlistLink''',
      ));
}

class GeneratePlaylistCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'BQCqJiINdr5fj0mwxOsz5V4H-F2dPHfR96GVV29jxJVQlxPanB7n6-LEzU9bCMfhH-uQ7tWfEN0VQ__ol2ZX0gIgK5-Tz6oZjcc3laIHxBzzQ4rQl0IX6iKOFRo3xIJs8aPsjcDc-UwuuYKIdJEV56FBzsr1Q8oor6H1zkyA0tDt3KFdnyjGK2DFIyUSGInXeBwuYyAmpI0AfQeDPF8VmzSmrvek_gqcou2FpeI4KK1DAW4Ns83EZXRT',
    String? genre = 'rock',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'generatePlaylist',
      apiUrl: 'https://api-nmrs3g4o3q-uc.a.run.app/generatePlaylist',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'genre': genre,
        'accessToken': accessToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? customPlaylist(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.playlistLink''',
      ));
}

class GetAccessTokenCall {
  static Future<ApiCallResponse> call({
    String? refreshToken = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getAccessToken',
      apiUrl: 'https://api-nmrs3g4o3q-uc.a.run.app/refreshToken',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'refreshToken': refreshToken,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class AIgeneratePlaylistCall {
  static Future<ApiCallResponse> call({
    String? genreOrMood = 'grass',
    String? accessToken =
        'BQDGCETUilyFlGl5olLyaZUJ3ppKb6zU2dyo0ZHfmP3JS_pDRv43-vBESW3Fuz3MipYA4C4p-Lw65LPZUZgFzFZ8ApfD2XkRcgYLES1Fi29Jzj3KfzP2z_jbEiDiQd4KLkgWBupNtSpD6OxFaAtWkskrHKMFIVmqlmrPsSiEzwQyw9DiG4Vc-_3lviiLiZi5a2sKeP0UvM9HLacWKYxRfy-oWq21_B3J9CDliLCBPHM6i_4zZso7pMYS',
    bool? filterExplicit = false,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'AIgeneratePlaylist',
      apiUrl: 'https://api-nmrs3g4o3q-uc.a.run.app//AIPlaylist',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'genreOrMood': genreOrMood,
        'accessToken': accessToken,
        'filterExplicit': filterExplicit,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? playlistURL(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.playlistLink''',
      ));
  static String? error(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.error''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
