import 'package:demo_app/pages/dashboard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  final List<Tab> _homeTabs = <Tab>[
    Tab(text: '仪表盘'),
    Tab(text: 'KPI'),
    Tab(text: '预警'),
    Tab(text: '直通车'),
    Tab(text: '退款'),
    Tab(text: '跟踪'),
  ];
  final List<Widget> _tabViews = <Widget>[
    Dashboard(),
    Text('KPI页面组件占位'),
    Text('预警页面组件占位'),
    Text('直通车页面组件占位'),
    Text('退款页面组件占位'),
    Text('跟踪页面组件占位'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _homeTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TabBar(
          tabs: _homeTabs,
          controller: _tabController,
          isScrollable: true,
          indicatorColor: Color(0xFF4A79E2),
          indicatorWeight: 3.0,
          labelColor: Color(0xFF4A79E2),
          unselectedLabelColor: Color(0xFF555555),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: _tabViews,
          ),
        )
      ],
    ));
  }
}
