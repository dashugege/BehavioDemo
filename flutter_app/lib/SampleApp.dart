import 'package:flutter/material.dart';


class SampleApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'sample app title',
      theme: ThemeData(
          primarySwatch: Colors.blue

      ),
      home: SampleAppPage(),
    );
  }


}


class SampleAppPage extends StatefulWidget {

  SampleAppPage({Key key}):super(key:key);

  @override
  _SampleAppPageState createState() {
    return _SampleAppPageState();
  }

}

class _SampleAppPageState extends State<SampleAppPage> {

  String textToshow = 'I Like Flutter' ;

  void _updateText(){
    setState(() {
      textToshow = 'I Like Flutter State' ;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple App'),
      ),
      body: Center(
        child: Text(textToshow),
      ),
        floatingActionButton:FloatingActionButton(onPressed: _updateText,
          tooltip: 'update text',
          child: Icon(Icons.update))
    );
  }

}