import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;
  final Map<String, String> defaultHeaders;

  const ApiService({required this.baseUrl, this.defaultHeaders = const {}});

  Future<http.Response> get(String path, {Map<String, String>? headers}) async {
    return http.get(Uri.parse('$baseUrl$path'), headers: _mergeHeaders(headers));
  }

  Future<http.Response> post(String path, {Map<String, String>? headers, Object? body}) async {
    final merged = _mergeHeaders(headers);
    final encodedBody = body is String ? body : jsonEncode(body);
    return http.post(Uri.parse('$baseUrl$path'), headers: merged, body: encodedBody);
  }

  Map<String, String> _jsonHeaders() => const {'Content-Type': 'application/json'};

  Map<String, String> _mergeHeaders(Map<String, String>? headers) {
    return {
      ..._jsonHeaders(),
      ...defaultHeaders,
      ...?headers,
    };
  }
}


