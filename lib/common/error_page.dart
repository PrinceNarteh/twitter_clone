import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  final String error;
  const ErrorText({required this.error, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(error),
    );
  }
}

class ErrorPage extends StatelessWidget {
  final String error;
  const ErrorPage({required this.error, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ErrorText(
        error: error,
      ),
    );
  }
}
