

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sky/home.dart';
import 'package:sky/sky.dart';
import 'package:sky/Zeref/zeref_intent.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Shortcuts(
        shortcuts: {
          LogicalKeySet(
            LogicalKeyboardKey.control,
            LogicalKeyboardKey.keyG,
            LogicalKeyboardKey.keyD,
          ): const ZerefIntent(),
        },
        child: const Home(),
      ),
      routes: {
        '/sky': (_) => const Sky(),
      },
    );
  }
}




