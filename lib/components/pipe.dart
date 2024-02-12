import 'dart:async';

import 'package:flame/components.dart';
import 'package:flappy_bird/game/flappy_game.dart';

class Pipe extends SpriteComponent with HasGameRef<FlappyBird> {
  Pipe(this.height, this.pipePosition);
  final double height;
  final double pipePosition;
  @override
  FutureOr<void> onLoad() {
    // TODO: implement onLoad
    return super.onLoad();
  }
}
