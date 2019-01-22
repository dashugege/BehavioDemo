import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // 仪表盘今日实时数据卡片
  Widget _realDataWidget = Container(
    padding: EdgeInsets.all(15.0),
    margin: EdgeInsets.only(bottom: 10.0),
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _realDataWidget,
      ],
    );
  }
}
