

import 'package:flutter/material.dart';

import 'package:sky/logging_action_dispatcher.dart';
import 'package:sky/platform.dart';
import 'package:sky/Zeref/zeref_action.dart';
import 'package:sky/Zeref/zeref_intent.dart';

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Actions(
      dispatcher: LoggingActionDispatcher(),
      actions: {ZerefIntent: ZerefAction(context)},
      child: Builder(builder: (context) {
        return Focus(
          autofocus: true,
          child: GestureDetector(
            onVerticalDragDown: (details) {
              if (getCurrentPlatform() == PlatformType.mobile) {
                // navigate to the sky using zeref navigation
              }
            },
            child: Scaffold(
                body: Center(
              child: getCurrentPlatform() == PlatformType.mobile
                  ? const Text('Swipe down to navigate to sky')
                  : const Text('Click the right shortcut to navigate to sky'),
            )),
          ),
        );
      }),
    );
  }
}
