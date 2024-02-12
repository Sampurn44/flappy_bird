import 'dart:async';

import 'package:flame/game.dart';
import 'package:flappy_bird/components/background.dart';
import 'package:flappy_bird/components/bird.dart';
import 'package:flappy_bird/components/ground.dart';

class FlappyBird extends FlameGame {
  late Bird bird;
  @override
  Future<void> onLoad() async {
    addAll(
      [
        Background(),
        Ground(),
        bird = Bird(),
      ],
    );
  }
}
