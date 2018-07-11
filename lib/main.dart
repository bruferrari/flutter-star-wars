import 'package:flutter/material.dart';
import 'ui/movies_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MoviesList(title: 'Star Wars Demo'),
    );
  }
}

