import 'package:flutter/material.dart';
import 'package:quiz/about.dart';

void main() {
  runApp(about());
}

class about extends StatelessWidget {
  final List<String> categories = [
    'Abdo: 10',
    'Sakr: 5',
    '3eno: 6',
    'Bros: 6',
    'Kimo: 3',
    'Ehab:3',
    'Junior:30',
    'Nazo: 4',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Categories'),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2.0,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 24.0,
                  ),
                  leading: Icon(Icons.category, size: 32.0),
                  title: Text(
                    categories[index],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    print('Selected category: ${categories[index]}');
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}