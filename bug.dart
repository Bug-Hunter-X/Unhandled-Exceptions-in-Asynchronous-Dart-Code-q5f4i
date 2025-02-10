```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success
      print('Success');
    } else {
      // Error handling is missing here!
      print('Request failed with status: ${response.statusCode}.');
    }
  } catch (e) {
    // Exception handling is also missing!
    print('An error occurred: $e');
  }
}
```