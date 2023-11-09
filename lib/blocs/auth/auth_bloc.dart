import 'dart:convert';
import 'package:countryinfo/data/models/user.dart';
import 'package:http/http.dart' as http;

class Authenticator {
  Future<dynamic> authenticate(String username, String password) async {
    print(username);
    print(password);
    final apiUrl = Uri.parse('https://dummyjson.com/auth/login');
    final response = await http.post(
      apiUrl,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': username,
        'password': password,
      }),
    );
    print(response.statusCode);

    if (response.statusCode == 200) {
      User user = User.fromJson(jsonDecode(response.body));
      return user;
    } else {
      return false;
    }
  }
}
