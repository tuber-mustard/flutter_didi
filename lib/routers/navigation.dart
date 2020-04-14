
import 'package:didi/routers/application.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Navigation {
  static void push(
    BuildContext context,
    String path, 
    {
      bool replace = false, 
      bool clearStack = false, 
      transition: TransitionType.native
    }) {
    FocusScope.of(context).unfocus();
    Application.router.navigateTo(
      context, 
      path, 
      replace: replace, 
      clearStack: clearStack, 
      transition: transition
    );
  }

  static void back(BuildContext context) {
    FocusScope.of(context).unfocus();
    Navigator.pop(context);
  }
}