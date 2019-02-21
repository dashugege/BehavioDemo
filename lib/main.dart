import 'package:demo_app/app_model.dart';
import 'package:demo_app/pages/dataAndTable.dart';
import 'package:demo_app/pages/home.dart';
import 'package:demo_app/pages/me.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(ScopedModel(model: AppModel(), child: MyApp()));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _navItemIndex = 0;
  void _onNavItemTap(int index) {
    setState(() {
      _navItemIndex = index;
    });
  }

  Widget generateNavItemIcon(bool iconStatus, String iconType) {
    String status = (iconStatus ? '-act' : '');
    return Padding(
      padding: EdgeInsets.only(bottom: 5.0),
      child: Image.asset(
        'assets/images/tab-$iconType$status.png',
        width: 19.0,
      ),
    );
  }

  final _pageList = <Widget>[Home(), DataAndTable(), Me()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_navItemIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: generateNavItemIcon(false, 'home'),
              activeIcon: generateNavItemIcon(true, 'home'),
              title: Text(
                '工作',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: generateNavItemIcon(false, 'data'),
              activeIcon: generateNavItemIcon(true, 'data'),
              title: Text(
                '数据与报表',
                style: TextStyle(fontSize: 12.0),
              )),
          BottomNavigationBarItem(
              icon: generateNavItemIcon(false, 'me'),
              activeIcon: generateNavItemIcon(true, 'me'),
              title: Text(
                '我的',
                style: TextStyle(fontSize: 12.0),
              )),
        ],
        fixedColor: Color(0xFF4A79E2),
        currentIndex: _navItemIndex,
        onTap: _onNavItemTap,
      ),
    );
  }
}
