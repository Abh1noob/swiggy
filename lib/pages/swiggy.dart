import 'package:flutter/material.dart';

class Swiggy extends StatelessWidget {
  const Swiggy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back to login'),
        ),
      ),
    );
  }
}
