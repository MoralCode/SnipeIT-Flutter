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

  Future<List<String>> getLocations() async {
    var response =
        await _client.get(_url.resolve('locations'), headers: _getHeaders());
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, String>;
    print(decodedResponse);
    print(decodedResponse["rows"]);

    // if (decodedResponse["rows"] != null){
    //   return decodedResponse["rows"]!.entries.map((row) => {'id': row["id"], 'name': row["name"]});
    // }
    return ["1", "2"];
  }

  void dispose() {
    _client.close();
  }
}
