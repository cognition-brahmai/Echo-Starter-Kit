import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  var url = 'https://api.echo.inferx.in/v1/speech/generate';
  var headers = {
    'ECHO-API-KEY': 'your_api_key',
    'Content-Type': 'application/json'
  };
  var body = jsonEncode({
    'text': 'Hello world!',
    'voice_id': 'af_alloy',
    'advanced_mode': false,
    'speed': 1.0
  });

  var response = await http.post(Uri.parse(url), headers: headers, body: body);
  print(response.body);
}