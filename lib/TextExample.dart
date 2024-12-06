import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Example'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello, Flutter!', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Text('This is a sample text.', style: TextStyle(fontSize: 16)),
            SizedBox(height: 16),
            Text(
                'Flutter is a popular framework for building cross-platform apps.',
                style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
