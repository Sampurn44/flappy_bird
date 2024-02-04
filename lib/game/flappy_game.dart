import 'dart:async';

import 'package:flame/game.dart';
import 'package:flappy_bird/components/background.dart';

class FlappyBird extends FlameGame {
  @override
  FutureOr<void> onLoad() {
    add(Background());
  }
}
