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
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      'assets/images/icon1.png',
                      width: 17.0,
                      height: 17.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Text(
                    '今日实时数据',
                    style: TextStyle(color: Color(0xFF333333), fontSize: 16.0),
                  )
                ],
              ),
              Image.asset(
                'assets/images/icon2.png',
                width: 16.0,
                height: 16.0,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 31.0, bottom: 31.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'GMA (支付)',
                      style: TextStyle(
                        color: Color(0xFF3333333),
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '3000.00',
                      style: TextStyle(
                        color: Color(0xFF4A79E2),
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 36.0, right: 36.0),
                  height: 20,
                  decoration: BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Color(0xFFDEDEDE)))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '佣金 (使用)',
                      style: TextStyle(
                        color: Color(0xFF3333333),
                        fontSize: 12.0,
                      ),
                    ),
                    Text(
                      '6480.00',
                      style: TextStyle(
                        color: Color(0xFF4A79E2),
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 1,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '支付订单数',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '833',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Color(0xFFDEDEDE)))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '订单数（验证）',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '833',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  decoration: BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Color(0xFFDEDEDE)))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'GMV（验证）',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '833',
                      style: TextStyle(
                        color: Color(0xFF555555),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ));
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      color: Color(0xFFE8E8E8),
      child: Column(
        children: <Widget>[
          _realDataWidget,
          Container(
            // A fixed-height child.
            color: Colors.red,
            height: 220.0,
          ),
          Container(
            // A fixed-height child.
            color: Colors.black,
            height: 220.0,
          ),
        ],
      ),
    ));
  }
}
