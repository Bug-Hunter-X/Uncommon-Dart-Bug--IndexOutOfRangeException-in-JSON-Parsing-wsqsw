```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON array
      final List<dynamic> data = jsonDecode(response.body);
      // Accessing the first element without checking if it exists
      final firstElement = data[0]; //This line can throw an exception
      print(firstElement); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```