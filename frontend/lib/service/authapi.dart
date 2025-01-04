import 'dart:convert';
import 'package:frontend/maharani/screens/authScreens/forgotpasswordscreen.dart';
import 'package:http/http.dart' as http;

class AuthAPI {
  static const String baseUrl = 'http://localhost:8081/api/users';

  //SignupAPI
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

  //LoginAPI

  static Future<Map<String, dynamic>> login(
      String email, String password) async {
    final url = Uri.parse('$baseUrl/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': email, 'password': password});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(jsonDecode(response.body)['message']);
      }
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  //ForgotPasswordAPI

  static Future<Map<String, dynamic>> forgotpassword(String email) async {
    final url = Uri.parse('$baseUrl/forgot-password');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({'email': email});

    try {
      final response = await http.post(url, headers: headers, body: body);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        final errorData = jsonDecode(response.body);
        throw Exception(
            errorData['message'] ?? 'Failed to send password reset request');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
