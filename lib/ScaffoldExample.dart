import 'package:flutter/material.dart';

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaffold Example')),
      body: Center(
          child: Text(
        'This is a Scaffold Example Page!',
        style: TextStyle(color: Colors.blue),
      )),
    );
  }
}
