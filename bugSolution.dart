```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      final jsonData = jsonDecode(response.body);
      print('Success: $jsonData');
    } else {
      // Handle HTTP errors
      throw Exception('Request failed with status: ${response.statusCode}. Response body: ${response.body}');
    }
  } catch (e) {
    // Handle exceptions
    print('An error occurred: $e');
    // Consider more robust error reporting, logging, or user feedback here.
  }
}
```