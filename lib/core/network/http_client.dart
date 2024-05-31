import 'package:http/http.dart' as http;

class HttpClient {
  final _baseUrl = 'https://run.mocky.io';

  HttpClient._();

  static final HttpClient _instance = HttpClient._();

  factory HttpClient() {
    return _instance;
  }

  Future<http.Response> get({required String endpoint}) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return response;
  }
}
