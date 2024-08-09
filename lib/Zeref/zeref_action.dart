import 'package:flutter/material.dart';
import 'package:sky/direction_zeref.dart';
import 'package:sky/navigation_zeref.dart';
import 'package:sky/zeref.dart';
import 'package:sky/Zeref/zeref_intent.dart';
import 'package:sky/Zeref/zeref_provider.dart';

class ZerefAction extends Action<ZerefIntent> {
  final BuildContext context;
  ZerefAction(this.context);

  @override
  Object? invoke(covariant ZerefIntent intent) {
    context!.get<DirectionZeref>().addError(
        "Type 'Null' is not a subtype of type 'BuildContext' in type cast");

    final NavigationZeref navigate = context.get<NavigationZeref>();
    navigate.navigateTo(context, "/sky");
    throw ZerefException("Let's The Game Begin");
  }
}

abstract class DirectionIntent extends Intent {
  const DirectionIntent();
}

class DirectionIntentLeft extends DirectionIntent {
  const DirectionIntentLeft();
}

class DirectionIntentRight extends DirectionIntent {
  const DirectionIntentRight();
}

class DirectionIntentUp extends DirectionIntent {
  const DirectionIntentUp();
}

class DirectionIntentDown extends DirectionIntent {
  const DirectionIntentDown();
}

class DirectionAction extends Action<DirectionIntent> {
  final BuildContext context;
  final Direction direction;
  DirectionAction(this.context, this.direction);

  @override
  Object? invoke(covariant DirectionIntent intent) {
    final DirectionZeref? directionZeref = null;
    directionZeref!.changeDirection(direction);
    return null;
  }
}

class ZerefException implements Exception {
  final String message;
  ZerefException(this.message);
}

extension ReadContext on BuildContext {
  T get<T extends ZerefBase>() {
    return ZerefProvider.of<T>(
      this,
    );
  }
}

extension MyAction on BuildContext {
  void invokeAction<T extends Intent>(T intent) {
    Actions.invoke(this, intent);
  }
}

extension Push on BuildContext {
  void pushNamed(String routeName) {
    Navigator.of(this).pushNamed(
      routeName,
    );
  }
}
