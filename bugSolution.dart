```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    await Future.delayed(Duration(seconds: 2));
    //throw Exception('Network Error!'); //Uncomment for testing
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Timeout Exception: $e');
  } on SocketException catch (e) {
    print('SocketException: $e');
  } catch (e, s) {
    // More robust error handling that includes stack trace 
    print('An unexpected error occurred: $e');
    print('Stack Trace: $s');
  }
}

void main() async {
  await fetchData();
}
```