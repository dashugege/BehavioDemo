import 'package:demo_app/pages/dataAndTable.dart';
import 'package:demo_app/pages/homeTabViews.dart';
import 'package:demo_app/pages/login.dart';
import 'package:demo_app/pages/me.dart';
import 'package:demo_app/model/appState.dart';
import 'package:demo_app/redux/reducers.dart';
import 'package:demo_app/redux/actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';
import 'package:redux_persist/redux_persist.dart';

void main() async{
  final persistor = Persistor<AppState>(
    storage:FlutterStorage(),
    serializer:JsonSerializer<AppState>(AppState.fromJson)
  );

  final initialState =  await persistor.load();

  final store = Store<AppState>(
    appStateReducers, 
    initialState: initialState,
    middleware: [persistor.createMiddleware()]
  );

  runApp(MyApp(store:store));
}

class MyApp extends StatelessWidget {

  Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context){
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'demo app',
        theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFFFFFF),),
        debugShowCheckedModeBanner: false,
        home: StoreBuilder<AppState>(
          onInit: (store) => store.dispatch(IfLoginAction(store.state.loginToken)),
          builder: (contex,store){
            var loginToken = store.state.loginToken;
            if(loginToken != null){
              return MyHomePage();
            }else{
              return LoginPage();
            }
          },
        )
      )
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

  final _pageList = <Widget>[HomeTabViews(), DataAndTable(), Me()];

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
