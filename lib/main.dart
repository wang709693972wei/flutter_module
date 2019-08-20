import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_module/home_page.dart';
import 'package:flutter_module/main_tab.dart';
import 'package:flutter_module/project/gank_girl_display.dart';

import 'demo/demo_route/transmit_param_demo.dart';
import 'demo/demo_route/two_route_demo.dart';
import 'demo/demo_route/unknow_router.dart';
import 'demo/main_detail_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/main': (context) => MainTab(),
        '/detail': (context) => MainDetailDemo(
            desc: '详情',
            url:
                'https://ws1.sinaimg.cn/large/0065oQSqly1fytdr77urlj30sg10najf.jpg'),
        '/twoRouter': (context) => TwoRouteDemo(),
        '/gridDisplay': (context) => GankGirlDemo(),
        '/transmit_param': (context) => TransmitParam(),

      },
      // 错误路由处理，统一返回 UnknownPage
      onUnknownRoute: (RouteSettings setting) =>
          MaterialPageRoute(builder: (context) => UnKnowRouter()),
      home: widgetForRoute(window.defaultRouteName),
    );
  }
}

Widget widgetForRoute(String route) {
  switch (route) {
    case 'route1':
      return MyHomePage(title: 'Flutter  Home Page1');
    case 'route2':
      return MyHomePage(title: 'Flutter  Home Page2---');
    default:
      return MyHomePage(title: 'Flutter  Home Page2--defeat');
  }
}
