import 'package:flutter/material.dart';

class DataAndTable extends StatefulWidget {
  DataAndTable({Key key}) : super(key: key);

  @override
  DataTableState createState() => DataTableState();
}

class DataTableState extends State<DataAndTable> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('dataAndTablePage'),
    );
  }
}
