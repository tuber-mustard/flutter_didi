
import 'package:didi/pages/index/index_page.dart';
import 'package:didi/routers/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Routes {
  static String index = '/index';
  static List<Register> _list = [];

  static void configureRoutes(Router router) {
    router.define(index, handler: Handler(
      handlerFunc: (BuildContext context, Map<String, List<String>> params) => IndexPage()
    ));

    _list.clear();
    // 各自路由由各自模块管理，统一在此添加初始化 _list.add(LoginRouter());

    _list.forEach((route) {
      route.register(router);
    });
  }
}