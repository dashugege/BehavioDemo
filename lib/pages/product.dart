import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              children: <Widget>[
                TopModule(),
                Divider(),
                DataModule(title: "当月销量", list: [
                  {"name": "GMU(支付)", "num": "265.00"},
                  {"name": "佣金(验证)", "num": "3458.00"},
                  {"name": "支付订单数", "num": "26665"},
                  {"name": "GMU(验证)", "num": "265.00"},
                  {"name": "验证订单数", "num": "456"},
                  {"name": "退款订单数", "num": "26665"},
                  {"name": "退款率", "num": "5%"},
                ])
              ],
            ),
          ),
          Container(
            height: 10.0,
            color: Color(0xFFe8e8e8),
          ),
          DataModule(title: "流量", list: [
            {"name": "商品详情页PV", "num": "345"},
            {"name": "商品详情页UV", "num": "69"},
            {"name": "支付成功率", "num": "16%"},
          ]),
          Container(
            height: 10.0,
            color: Color(0xFFe8e8e8),
          ),
          DataModule(title: "涉及范围", list: [
            {"name": "案例数", "num": "35647"},
            {"name": "参与专场次数", "num": "69"},
            {"name": "日记评分", "num": "100分"},
            {"name": "ARPU值", "num": "12600"},
          ]),
          Container(
            height: 10.0,
            color: Color(0xFFe8e8e8),
          ),
          TableModule()
        ],
      ),
    );
  }
}

class TopModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            padding: EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 0.3),
            ),
            child: FadeInImage.memoryNetwork(
              width: 80.0,
              placeholder: kTransparentImage,
              image:
                  'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epU0V5NLFTZx1JbiakGyMaIVVVl7mtUCjhde5Ria7YWCqCpJqics9FSjFl5CFFvewDHXSuq7dbFCVqug/0',
            )),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          "伊婉玻尿酸1ML 韩国进口伊婉C玻尿酸 逆转肌肤年龄 私信即送美肤季卡",
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              wordSpacing: 6.0,
              letterSpacing: 0.5),
        ),
        Text("初次上架时间：2017-11-09"),
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                color: Colors.lightBlue,
                child: Text("商品详情页"),
              ),
            )
          ],
        )
      ],
    );
  }
}

class DataModule extends StatelessWidget {
  final String title;
  final List<Map> list;
  DataModule({Key key, this.title, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 25.0,
              height: 0.5,
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
              child: Text(
                this.title,
                style:
                    TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
              ),
            ),
            Container(
              width: 25.0,
              height: 0.5,
              color: Colors.grey,
            )
          ],
        ),
        Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            children: this.list.map((i) {
              return Container(
                  width: (MediaQuery.of(context).size.width - 40.0) / 3,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border(
                    bottom: BorderSide(width: 0.5, color: Colors.black26),
                  )),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(i["name"]),
                        Text(
                          i["num"],
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ));
            }).toList())
      ],
    );
  }
}

class TableModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 25.0,
                height: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                child: Text(
                  "同项目本月竞争力分析",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, letterSpacing: 0.5),
                ),
              ),
              Container(
                width: 25.0,
                height: 0.5,
                color: Colors.grey,
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Table(
                border: TableBorder.all(width: 1.0, color: Colors.grey),
                children: [
                  TableRow(
                      decoration: BoxDecoration(color: Color(0xFFDEDEDE)),
                      children: [
                        TableCell(
                          child: Container(
                              height: 30.0,
                              child: Center(
                                child: Text("指标对比"),
                              )),
                        ),
                        TableCell(
                          child: Container(
                              height: 30.0,
                              child: Center(
                                child: Text("来源(UV)"),
                              )),
                        ),
                        TableCell(
                          child: Container(
                              height: 30.0,
                              child: Center(
                                child: Text("商品详情页(UV)"),
                              )),
                        ),
                      ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                          height: 30.0,
                          child: Center(
                            child: Text("GMV(验证)"),
                          )),
                    ),
                    TableCell(
                      child: Container(
                          height: 30.0,
                          child: Center(
                            child: Text("13467.00"),
                          )),
                    ),
                    TableCell(
                      child: Container(
                          height: 30.0,
                          child: Center(
                            child: Text("13467.00"),
                          )),
                    ),
                  ]),
                  TableRow(
                      decoration: BoxDecoration(color: Color(0xFFDEDEDE)),
                      children: [
                        TableCell(
                          child: Container(
                              height: 30.0,
                              child: Center(
                                child: Text("佣金(验证)"),
                              )),
                        ),
                        TableCell(
                          child: Container(
                              height: 30.0,
                              child: Center(
                                child: Text("13467.00"),
                              )),
                        ),
                        TableCell(
                          child: Container(
                              height: 30.0,
                              child: Center(
                                child: Text("13467.00"),
                              )),
                        ),
                      ]),
                  TableRow(children: [
                    TableCell(
                      child: Container(
                          height: 30.0,
                          child: Center(
                            child: Text("支付订单数"),
                          )),
                    ),
                    TableCell(
                      child: Container(
                          height: 30.0,
                          child: Center(
                            child: Text("13467.00"),
                          )),
                    ),
                    TableCell(
                      child: Container(
                          height: 30.0,
                          child: Center(
                            child: Text("13467.00"),
                          )),
                    ),
                  ]),
                ],
              )),
        ],
      ),
    );
  }
}
