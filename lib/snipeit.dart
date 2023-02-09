import 'package:http/http.dart' as http;

class SnipeIT {
  String url;
  String accessToken;
  http.Client _client;

  /// Represents a SnipeIT installation
  ///
  /// [url] the baseurl to perform REST API calls against
  /// [accessToken] the API Key for authenticating with the API
  /// [client] an (optional) HTTP client to use for accessing the API. Useful for unit testing.
  SnipeIT({required this.url, required this.accessToken, http.Client? client})
      : _client = client ?? http.Client();


}
