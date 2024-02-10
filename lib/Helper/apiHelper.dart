import 'dart:io';

import 'package:http/http.dart' as http;

class ApiHelper {
  final client = http.Client();

  Future<http.Response> getData({required String url}) async {
    try {
      final response = await client.get(Uri.parse(url),
          headers: <String, String>{
            "Content-Type": "application/x-www-form-urlencoded"
          });
      return response;
    } on FormatException {
      throw FormatException('format exception');
    } on SocketException {
      throw SocketException('no internet');
    }
  }
}
