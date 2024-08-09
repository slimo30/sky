import 'package:flutter/material.dart';
import 'package:sky/zeref.dart';
import 'dart:async';


import 'package:sky/Zeref/zeref_action.dart';

class ZerefBuilder<T extends Zeref> extends StatelessWidget {
  final Widget Function(BuildContext context, T value) builder;
  const ZerefBuilder({Key? key, required this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    T value = context.get<T>();
    Stream stream = value as Stream;

    return StreamBuilder(
      stream: stream,
      builder: (context, snapshot) {
        return builder(context, value);
      },
    );
  }
}
