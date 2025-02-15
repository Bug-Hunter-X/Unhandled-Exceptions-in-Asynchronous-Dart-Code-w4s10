```dart
import 'dart:async';

Future<void> fetchData() async {
  // Simulate an asynchronous operation that might throw an exception
  try {
    await Future.delayed(Duration(seconds: 2));
    //throw Exception('Network Error!'); //Uncomment for testing
    print('Data fetched successfully!');
  } on TimeoutException catch (e) {
    print('Timeout Exception: $e');
  } on SocketException catch (e) {
    print('SocketException: $e');
  } on Exception catch (e) {
    print('An unexpected error occurred: $e');
    //rethrow;
  } catch (e) {
    print('An unknown error occurred: $e');
  }
}

void main() async {
  await fetchData();
}
```