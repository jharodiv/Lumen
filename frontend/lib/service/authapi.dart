import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthAPI {
  static const String baseUrl = 'http://localhost:8081/api/users';

  static Future<Map<String, dynamic>> signup(
      String username, String email, String password) async {
    final url = Uri.parse('$baseUrl/signup');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode(
        {'username': username, 'email': email, 'password': password});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 201) {
        return jsonDecode(response.body); // Return success response
      } else {
        throw Exception(jsonDecode(response.body)['message']);
      }
    } catch (e) {
      throw Exception('Signup failed: $e');
    }
  }
}
