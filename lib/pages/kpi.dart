import 'package:flutter/material.dart';

const blueColor = Color.fromRGBO(74, 121, 226, 1);

class Kpi extends StatefulWidget {
  Kpi({Key key}) : super(key: key);

  @override
  _KpiState createState() => _KpiState();
}

class _KpiState extends State<Kpi> {
  @override
  Widget build(BuildContext context) {
    Widget _headerWidget = Container(
        margin: EdgeInsets.only(bottom: 10),
        color: Colors.white,
        height: 60,
        child: Row(
          children: <Widget>[Text('2017-4 👇'), Text('退款原因')],
          mainAxisAlignment: MainAxisAlignment.spaceAround,
        ));
    List cardList = [
      {
        'main': {'title': '佣金完成额', 'value': '68.67%', 'text': '本期目标值：30000'},
        'detail': [
          {'title': '佣金完成额(本月)', 'value': '832'},
          {'title': '佣金完成额(上月)', 'value': '69'},
          {'title': '同比上月', 'value': '30%'}
        ]
      },
      {
        'main': {'title': '广告资源完成额', 'value': '79.67%', 'text': '本期目标值：30000'},
        'detail': [
          {'title': '广告资源完成额(本月)', 'value': '832'},
          {'title': '广告资源完成额(上月)', 'value': '69'},
          {'title': '同比上月', 'value': '30%'}
        ]
      },
      {
        'main': {'title': '充值金额', 'value': '324589.00'},
        'detail': [
          {'title': '环比上周期', 'value': '30%'},
          {'title': '上周期金额', 'value': '199456.00'}
        ]
      },
      {
        'main': {'title': '充值金额', 'value': '324589.00'},
        'detail': [
          {'title': '环比上周期', 'value': '30%'},
          {'title': '上周期金额', 'value': '199456.00'}
        ]
      },
    ];
    Widget _cardsDataWidget = Column(
        children: cardList
            .map<Widget>((item) => Container(
                color: Colors.white,
                margin: EdgeInsets.only(bottom: 10.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1.0, color: Color(0xFFDEDEDE)))),
                      child: Flex(
                        children: <Widget>[
                          Text(
                            item['main']['title'],
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            item['main']['value'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: blueColor,
                                fontSize: 35),
                          ),
                          item['main'].containsKey('text')
                              ? Text(
                                  item['main']['text'],
                                  style:
                                      TextStyle(color: blueColor, fontSize: 12),
                                )
                              : Container(width: 0, height: 0),
                        ],
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Container(
                        height: 65,
                        padding: EdgeInsets.only(top: 15),
                        child: Flex(
                          children: item['detail']
                              .map<Widget>((detailItem) => Flex(
                                    children: <Widget>[
                                      Text(
                                        detailItem['title'],
                                        style:
                                            TextStyle(color: Color(0xFF555555)),
                                      ),
                                      Text(
                                        detailItem['value'],
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF555555)),
                                      )
                                    ],
                                    direction: Axis.vertical,
                                  ))
                              .toList(),
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ))
                  ],
                )))
            .toList());
    return SingleChildScrollView(
        child: Container(
            color: Color(0xFFF2F5F9),
            child:
                Column(children: <Widget>[_headerWidget, _cardsDataWidget])));
  }
}
