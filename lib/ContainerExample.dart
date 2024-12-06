import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Example')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 300,
            padding: EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.red, width: 2),
            ),
            child: Text('This is a Container Example!'),
          ),
          Container(
            width: 300,
            height: 300,
            padding: EdgeInsets.all(10),
            child: Text("Hello"),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }
}
