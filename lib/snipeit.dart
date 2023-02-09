import 'package:http/http.dart' as http;

class SnipeIT {
  String url;
  String token;
  http.Client _client;

  /// Represents a SnipeIT installation
  ///
  /// [url] the baseurl to perform REST API calls against
  /// [token] the API token
  SnipeIT({required this.url, required this.token, http.Client? client})
      : _client = client ?? http.Client();


}
