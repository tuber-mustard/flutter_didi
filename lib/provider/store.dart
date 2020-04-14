
import 'package:didi/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Store {
  static BuildContext context;

  static init({context, child}) {
    return MultiProvider(
      child: child,
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),


      ],
    );
  }

  // 通过Provider.value<T>(context)获取状态数据
  static T value<T>(context, {listen: true}) {
    return Provider.of(context, listen: listen);
  }

  // 通过Consumer获取状态数据
  static Consumer connect<T>({builder, child}) {
    return Consumer<T>(builder: builder, child: child);
  }

}