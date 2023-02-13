import 'dart:convert';

import 'package:http/http.dart' as http;

import 'models/location.dart';
import 'models/category.dart';

export 'package:snipeit/models/location.dart' show Location;
export 'package:snipeit/models/category.dart' show Category;

class SnipeIT {
  Uri _url;
  String accessToken;
  http.Client _client;
  final String apiPrefix = "api/v1/";

  /// Represents a SnipeIT installation
  ///
  /// [url] the baseurl to perform REST API calls against
  /// [accessToken] the API Key for authenticating with the API
  /// [client] an (optional) HTTP client to use for accessing the API. Useful for unit testing.
  SnipeIT({required String url, required this.accessToken, http.Client? client})
      : _url = Uri.parse(url),
        _client = client ?? http.Client() {
    _url = _url.resolve(apiPrefix);
  }

  Map<String, String> _getHeaders() {
    return {
      'Content-type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $accessToken'
    };
  }

  List<Map<String, dynamic>> _unwrapResponse(Map<String, dynamic> json) {
    return json["rows"];
  }

  Future<List<Map<String, dynamic>>> _fetchJson(pathname) async {
    var response =
        await _client.get(_url.resolve(pathname), headers: _getHeaders());
    var decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    return _unwrapResponse(decodedResponse);
  }

  Future<List<Location>> getLocations() async {
    var response = await _fetchJson("locations");

    return response.map<Location>((l) => Location.fromJson(l)).toList();
  }

  Future<List<Category>> getCategories() async {
    var response = await _fetchJson("categories");

    return response.map<Category>((l) => Category.fromJson(l)).toList();
  }

  void dispose() {
    _client.close();
  }
}
