import 'package:flutter/material.dart';
import 'package:sky/zeref.dart';

import 'package:sky/Zeref/zeref_action.dart';
class NavigationZeref extends Zeref<void> {
  NavigationZeref() : super(null);

  void navigateTo(BuildContext context, String routeName) {
    dispose();
    context.pushNamed(routeName);
  }
}
