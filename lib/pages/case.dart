import 'package:flutter/material.dart';
import 'package:demo_app/pages/itemDropMenuButton.dart';
import 'package:demo_app/pages/attrDropMenuButton.dart';

class Case extends StatefulWidget {
  Case({Key key}) : super(key: key);

  @override
  _CaseState createState() => _CaseState();
}

class _CaseState extends State<Case> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0xffDEDEDE),width: 1.0))
        ),
        child: Column(
          children: <Widget>[
            MySearch(),
            MyList(),
          ],
        )
    );
  }
}

// 头部筛选
class MySearch extends StatelessWidget{

  @override
  Widget build(BuildContext context){
      return Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xffDEDEDE),width: 1.0))
          ),
          child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Container(
                      child: ItemDropMenuButton(),
                      alignment: Alignment.center,
                    ),
                    flex: 1
                ),
                Expanded(
                  child: Container(
                    child: AttrDropMenuButton(),
                    alignment: Alignment.center,
                  ),
                  flex: 1,
                ),
              ]
          )
      );
  }
}

// 案例列表
class MyList extends StatelessWidget{

  List dataList = [
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    },
    {
      'user_name': '颜末',
      'user_avatar': 'https://img2.soyoung.com/message/ios/20180716/9/ad41c1d603c746554c59fe8f0dbf129e_100_100.jpg',
      'hospital_name': '新氧云诊所丽阳店',
      'update_time': '2017-8-12',
      'before': 'https://img2.soyoung.com/tieba/ios/20180606/5/7b715331a1923293a3fea8f39a313ae4_301_301.jpg',
      'after': 'https://img2.soyoung.com/tieba/ios/20180606/9/97f28c16610aa705a612a7cf5ca21f9b_301_301.jpg',
      'diary_num': 413,
      'img_num': 214,
      'before_img': 513,
      'product': {},
      'menu_items': [
        {
          'menu_id': 2001,
          'menu_name': '假体隆鼻'
        },
        {
          'menu_id': 2002,
          'menu_name': '自体耳软骨垫鼻尖'
        }
      ],
      'saw_num': 256,
      'comment_num': 256,
      'zan_num': 256
    }
  ];

  @override
  Widget build(BuildContext context){
    return Expanded(
        child: ListView.builder(
            itemCount: dataList.length,
            itemBuilder: (context, index){
              // 每个案例
              return Container(
                  margin: EdgeInsets.only(top: 10.0, left: 0.0),
                  padding: EdgeInsets.only(top: 10.0, right: 15.0, bottom: 5.0, left: 15.0 ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffDEDEDE),width: 1.0)
                  ),
                  // 结构分为四大横排，每个横排之内再做细分
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        // 头像、姓名、医院、操作
                        Container(
                          child: Row(
                              children: <Widget>[
                                // 头像
                                Expanded(
                                    child: ClipOval(
                                      child: new FadeInImage.assetNetwork(
                                        placeholder: "images/normal_user_icon.webp",//预览图
                                        fit: BoxFit.fitWidth,
                                        image: '${dataList[index]['user_avatar']}',
                                        width: 45.0,
                                        height: 45.0,
                                      ),
                                    ),
                                    flex: 1
                                ),
                                // 用户名称和案例所属机构
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.topLeft,
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('${dataList[index]['user_name']}',
                                            textAlign: TextAlign.left,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Container(
                                          alignment: Alignment.topLeft,
                                          child: Text('${dataList[index]['hospital_name']}',
                                            textAlign: TextAlign.left,
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    )
                                  ),
                                  flex: 4,
                                ),
                                // 操作按钮及更新日期
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      textDirection: TextDirection.rtl,
                                      children: <Widget>[
                                        // 操作按钮
                                        Container(
                                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: <Widget>[
                                                // 手势控制，此处为处理按钮点击事件
                                                GestureDetector(
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    // 背景装饰
                                                    decoration: BoxDecoration(
                                                      // 渐变色
                                                      gradient: LinearGradient(
                                                        colors: [Color(0xffAB99FA), Color(0xff5D7BFC)],
                                                        begin: Alignment.topLeft,
                                                        end: Alignment.bottomRight,
                                                      )
                                                    ),
                                                    width: 30.0,
                                                    height: 17.0,
                                                    child: Text('可见',style: TextStyle(color: Colors.white,fontSize: 10.0)),
                                                  ),
                                                  onTap: () => {
                                                    showDialog<Null>(
                                                      context: context,
                                                      barrierDismissible: false,
                                                      builder: (BuildContext context) {
                                                        return new AlertDialog(
                                                          title: new Text('标题'),
                                                          content: new SingleChildScrollView(
                                                            child: new ListBody(
                                                              children: <Widget>[
                                                                new Text('设置该案例为可见'),
                                                              ],
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            new FlatButton(
                                                              child: new Text('确定'),
                                                              onPressed: () {
                                                                Navigator.of(context).pop();
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ).then((val) {
                                                      print(val);
                                                    })
                                                  },//点击
                                                  onDoubleTap: () => {}, //双击
                                                  onLongPress: () => {}, //长按
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    margin: EdgeInsets.only(left: 5.0),
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                          colors: [Color(0xffFBA68D), Color(0xffFF4C7A)],
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                        )
                                                    ),
                                                    width: 30.0,
                                                    height: 17.0,
                                                    child: Text('通过',style: TextStyle(color: Colors.white,fontSize: 10.0)),
                                                  ),
                                                  onTap: () => {
                                                    showDialog<Null>(
                                                      context: context,
                                                      barrierDismissible: false,
                                                      builder: (BuildContext context) {
                                                        return new AlertDialog(
                                                          title: new Text('标题'),
                                                          content: new SingleChildScrollView(
                                                            child: new ListBody(
                                                              children: <Widget>[
                                                                new Text('已通过该案例的审核'),
                                                              ],
                                                            ),
                                                          ),
                                                          actions: <Widget>[
                                                            new FlatButton(
                                                              child: new Text('我知道了',textAlign: TextAlign.center,),
                                                              onPressed: () {
                                                                Navigator.of(context).pop();
                                                              },
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    ).then((val) {
                                                      print(val);
                                                    })
                                                  },//点击
                                                  onDoubleTap: () => {}, //双击
                                                  onLongPress: () => {}, //长按
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    margin: EdgeInsets.only(left: 5.0),
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                          colors: [Color(0xff53E2C0), Color(0xff31CAC4)],
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                        )
                                                    ),
                                                    width: 30.0,
                                                    height: 17.0,
                                                    child: Text('置顶',style: TextStyle(color: Colors.white,fontSize: 10.0)),
                                                  ),
                                                  onTap: () => {},//点击
                                                  onDoubleTap: () => {}, //双击
                                                  onLongPress: () => {}, //长按
                                                ),
                                                GestureDetector(
                                                  child: Container(
                                                    margin: EdgeInsets.only(left: 5.0),
                                                    alignment: Alignment.center,
                                                    decoration: BoxDecoration(
                                                        gradient: LinearGradient(
                                                          colors: [Color(0xffFFC082), Color(0xffFFA886)],
                                                          begin: Alignment.topLeft,
                                                          end: Alignment.bottomRight,
                                                        )
                                                    ),
                                                    width: 30.0,
                                                    height: 17.0,
                                                    child: Text('广告',style: TextStyle(color: Colors.white,fontSize: 10.0)),
                                                  ),
                                                  onTap: () => {},//点击
                                                  onDoubleTap: () => {}, //双击
                                                  onLongPress: () => {}, //长按
                                                ),
                                              ]
                                          ),
                                        ),
                                        // 更新日期
                                        Container(
                                          alignment: Alignment.bottomRight,
                                          child: Text('${dataList[index]['update_time']}更新',style: TextStyle(fontSize: 12.0, color: Color(0xffAEAEAE)),),
                                        )
                                      ],
                                    )
                                  ),
                                  flex: 4,
                                ),
                              ]
                          )
                        ),

                        // 照片
                        Container(
                          margin: EdgeInsets.only(top: 5.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  height: 110.0,
                                  width: 110.0,
                                  // 有元素覆盖情况，此处使用层叠布局
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: <Widget>[
                                      Container(
                                        height: 110.0,
                                        width: 110.0,
                                        child: Image.network('${dataList[index]['before']}'),
                                      ),
                                      // 类似于web的绝对定位
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: Container(
                                          height: 16.0,
                                          width: 54.0,
                                          padding: EdgeInsets.only(top: 1.0,right: 2.0, bottom: 1.0, left: 4.0),
                                          decoration: BoxDecoration(
                                            color: Color.fromRGBO(0, 0, 0, 0.45),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(10))
                                          ),
                                          child: Text('Before',style: TextStyle(color: Colors.white, fontSize: 14.0),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                flex: 1
                              ),
                              Expanded(
                                child: Container(
                                  height: 110.0,
                                  width: 110.0,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: <Widget>[
                                      Container(
                                        height: 110.0,
                                        width: 110.0,
                                        child: Image.network('${dataList[index]['after']}'),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 0,
                                        child: Container(
                                          height: 16.0,
                                          width: 54.0,
                                          padding: EdgeInsets.only(top: 1.0,right: 2.0, bottom: 1.0, left: 4.0),
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(0, 0, 0, 0.45),
                                              borderRadius: BorderRadius.only(topRight: Radius.circular(10))
                                          ),
                                          child: Text('After',style: TextStyle(color: Colors.white, fontSize: 14.0),),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                  height: 110.0,
                                  width: 110.0,
                                  padding: EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 1.0, color: Color(0xffCECECE))
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('日记篇数', style: TextStyle(color: Color(0xff777777), fontSize: 12.0)),
                                              alignment: Alignment.centerLeft,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('${dataList[index]['diary_num']}', style: TextStyle(color: Color(0xff4A79E2), fontSize: 12.0), textAlign: TextAlign.right,),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('图片总数', style: TextStyle(color: Color(0xff777777), fontSize: 12.0)),
                                              alignment: Alignment.centerLeft,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('${dataList[index]['diary_num']}', style: TextStyle(color: Color(0xff4A79E2), fontSize: 12.0), textAlign: TextAlign.right,),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('术前照片', style: TextStyle(color: Color(0xff777777), fontSize: 12.0)),
                                              alignment: Alignment.centerLeft,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('${dataList[index]['diary_num']}', style: TextStyle(color: Color(0xff4A79E2), fontSize: 12.0), textAlign: TextAlign.right,),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('商品', style: TextStyle(color: Color(0xff777777), fontSize: 12.0)),
                                              alignment: Alignment.centerLeft,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              child: Text('关联', style: TextStyle(color: Color(0xff4A79E2), fontSize: 12.0), textAlign: TextAlign.right,),
                                              alignment: Alignment.centerRight,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                flex: 1,
                              ),
                            ]
                          )
                        ),
                        Container(
                          height: 26,
                          width: 30,
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Color(0xffDEDEDE),width: 1.0))
                          ),
                          margin: EdgeInsets.only(top: 5.0),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dataList[index]['menu_items'].length,
                              itemBuilder: (BuildContext context1, int index1) {
                                if(index1==0){
                                  return Container(
                                    child: Text('# ${dataList[index]['menu_items'][index1]['menu_name']}', style: TextStyle(color: Color(0xff4A79E2), fontSize: 13.0,),),
                                    margin: EdgeInsets.only(right: 10.0),
                                  );
                                }else{
                                  return Container(
                                    child: Text('${dataList[index]['menu_items'][index1]['menu_name']}', style: TextStyle(color: Color(0xff4A79E2), fontSize: 13.0,),),
                                    margin: EdgeInsets.only(right: 10.0),
                                  );
                                }
                              }
                          )
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5.0,),
                          child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(IconData(58391, fontFamily: 'MaterialIcons'),size: 12.0,),
                                          Text(' 浏览 ${dataList[index]["saw_num"]}',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                        ],
                                      )
                                    ),
                                    onTap: () => {},//点击
                                    onDoubleTap: () => {}, //双击
                                    onLongPress: () => {}, //长按
                                  ),
                                  flex: 1
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(IconData(57932, fontFamily: 'MaterialIcons'),size: 12.0,),
                                            Text(' 评论 ${dataList[index]["comment_num"]}',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                          ],
                                        )
                                    ),
                                    onTap: () => {},//点击
                                    onDoubleTap: () => {}, //双击
                                    onLongPress: () => {}, //长按
                                  ),
                                  flex: 1
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    child: Container(
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(IconData(59612, fontFamily: 'MaterialIcons'),size: 12.0,),
                                            Text(' 点赞 ${dataList[index]["zan_num"]}',style: TextStyle(color: Colors.black,fontSize: 10.0)),
                                          ],
                                        )
                                    ),
                                    onTap: () => {},//点击
                                    onDoubleTap: () => {}, //双击
                                    onLongPress: () => {}, //长按
                                  ),
                                  flex: 1
                                ),
                              ]
                          )
                        ),
                      ]
                  )
              );
            }
        ),
    );
  }
}