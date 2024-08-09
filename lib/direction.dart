import 'package:flutter/material.dart';

import 'package:sky/direction_zeref.dart';

Offset getOffset(
    Direction direction, Animation<double> animation, double dx, double dy,
    {double scale = 2000}) {
  switch (direction) {
    case Direction.left:
      return Offset(scale * animation.value, 0);
    case Direction.right:
      return Offset(scale * animation.value, 0);
    case Direction.up:
      return Offset(0, scale * animation.value);
    case Direction.down:
      return Offset(0, scale * animation.value);
  }
}

double getDxDirection(Direction direction, double dx) {
  switch (direction) {
    case Direction.left:
      return dx;
    case Direction.right:
      return dx;
    case Direction.up:
      return dx;
    case Direction.down:
      return dx;
  }
}

double getDyDirection(Direction direction, double dy) {
  switch (direction) {
    case Direction.left:
      return dy;
    case Direction.right:
      return dy;
    case Direction.up:
      return dy;
    case Direction.down:
      return dy;
  }
}
