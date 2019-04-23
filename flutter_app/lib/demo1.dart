import 'package:flutter/material.dart';


void main() => runApp(Demo());

class Demo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Startup Name Generator'),
        ),
        body: Text('i like flutter',style: TextStyle(fontWeight:FontWeight.bold)),
      ),
    );
  }



}