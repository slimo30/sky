import 'package:sky/zeref.dart';

enum Direction {
  left,
  right,
  up,
  down,
}

class DirectionZeref extends Zeref<Direction> {
  DirectionZeref() : super(Direction.down);

  void changeDirection(Direction direction) {
    emit(direction);
  }

  void changeDirectionLeft() {
    emit(Direction.left);
  }

  void changeDirectionRight() {
    emit(Direction.right);
  }

  void changeDirectionUp() {
    emit(Direction.up);
  }

  void changeDirectionDown() {
    emit(Direction.down);
  }
}

int getDeriction(Direction direction) {
  switch (direction) {
    case Direction.left:
      return 0;
    case Direction.right:
      return 0;
    case Direction.up:
      return 0;
    case Direction.down:
      return 0;
  }
}
