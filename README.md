# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common error in Dart: incomplete exception handling in asynchronous operations.  The `fetchData` function attempts to fetch data asynchronously, but only handles specific exception types (`TimeoutException`, `SocketException`, and a generic `Exception`).  This leaves room for other unexpected errors to crash the application.

The `bug.dart` file shows the incomplete error handling, while `bugSolution.dart` provides a more robust solution.

## How to reproduce the bug:

1.  Run `bug.dart`.  It will usually print "Data fetched successfully!"
2.  Uncomment `throw Exception('Network Error!');` in `fetchData()` in `bug.dart` and run it again. Note that this specific `Exception` is caught and handled.
3.  Introduce other types of exceptions, not explicitly handled, within the asynchronous operation to observe the program's behavior.  The program might crash without proper error handling.

## Solution:

The `bugSolution.dart` demonstrates the improved handling of exceptions. It uses a more comprehensive `catch` block to handle any unexpected errors more gracefully, preventing the application from crashing.