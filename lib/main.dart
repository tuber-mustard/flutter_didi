import 'package:didi/pages/index/splash_page.dart';
import 'package:didi/provider/store.dart';
import 'package:didi/routers/application.dart';
import 'package:didi/routers/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  App() {
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return Store.init(
      context: context,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        theme: ThemeData(
          primaryColor: Colors.grey[200]
        ),
        builder: (BuildContext context, Widget child) {
          return MediaQuery(data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0), child: child);
        },
      )
    );
  }
}
