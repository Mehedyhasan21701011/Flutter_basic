import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Example')),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: Text('This is a Container Example!'),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 300,
                height: 300,
                padding: EdgeInsets.all(10),
                child: Text("Hello"),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
              Icon(Icons.alarm),
              Icon(Icons.star)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                size: 50,
                color: Colors.red,
              ),
              Icon(Icons.alarm),
              Icon(Icons.star)
            ],
          )
        ],
      ),
    );
  }
}
