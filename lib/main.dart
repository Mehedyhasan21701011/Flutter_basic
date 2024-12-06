import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListView Navigation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  // List of pages and their titles
  final List<Map<String, dynamic>> pages = [
    {'title': 'Scaffold Example', 'page': ScaffoldExample()},
    {'title': 'Container Example', 'page': ContainerExample()},
    {'title': 'Row Example', 'page': RowExample()},
    // {'title': 'Text Example', 'page': TextExample()},
    // {'title': 'SizedBox Example', 'page': SizedBoxExample()},
    // {'title': 'Center Example', 'page': CenterExample()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widgets List')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index]['title']),
            onTap: () {
              // Navigate to the selected page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pages[index]['page']),
              );
            },
          );
        },
      ),
    );
  }
}

class ScaffoldExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaffold Example')),
      body: Center(child: Text('This is a Scaffold Example Page!')),
    );
  }
}

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

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.star, color: Colors.yellow),
            Text('Row Example'),
            Icon(Icons.star, color: Colors.green),
          ],
        ),
      ),
    );
  }
}
