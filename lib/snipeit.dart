import 'dart:convert';

import 'package:http/http.dart' as http;

class SnipeIT {
  Uri _url;
  String accessToken;
  http.Client _client;
  final String apiPrefix = "api/v1";

  /// Represents a SnipeIT installation
  ///
  /// [url] the baseurl to perform REST API calls against
  /// [accessToken] the API Key for authenticating with the API
  /// [client] an (optional) HTTP client to use for accessing the API. Useful for unit testing.
  SnipeIT({required String url, required this.accessToken, http.Client? client})
      : _url = Uri.parse(url),
        _client = client ?? http.Client();

  Map<String, String> _getHeaders() {
    return {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $accessToken'
    };
  }
}
