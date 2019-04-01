import 'package:demo_app/pages/dashboard.dart';
import 'package:demo_app/pages/kpi.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/pages/product.dart';
import 'package:demo_app/pages/case.dart';

class HomeTabViews extends StatefulWidget {
  HomeTabViews({Key key}) : super(key: key);

  @override
  _HomeTabViewsState createState() => _HomeTabViewsState();
}

class _HomeTabViewsState extends State<HomeTabViews> with SingleTickerProviderStateMixin {
  final List<Tab> _homeTabs = <Tab>[
    Tab(text: '仪表盘'),
    Tab(text: 'KPI'),
    Tab(text: '案例'),
    Tab(text: '预警'),
    Tab(text: '直通车'),
    Tab(text: '退款'),
    Tab(text: '跟踪'),
  ];
  final List<Widget> _tabViews = <Widget>[
    Dashboard(),
    Kpi(),
    Case(),
    ProductDetail(),
    Text('预警页面组件占位'),
    Text('直通车页面组件占位'),
    Text('退款页面组件占位'),
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
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 3.0,
          labelColor: Color(0xFF4A79E2),
          unselectedLabelColor: Color(0xFF555555),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 0.5, color: Color(0xFFDEDEDE)))),
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
