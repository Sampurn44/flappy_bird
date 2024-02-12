import 'dart:async';

import 'package:flame/components.dart';
import 'package:flappy_bird/game/assets.dart';
import 'package:flappy_bird/game/bird_movments.dart';
import 'package:flappy_bird/game/flappy_game.dart';

class Bird extends SpriteGroupComponent<BirdMoment>
    with HasGameRef<FlappyBird> {
  Bird();
  @override
  FutureOr<void> onLoad() async {
    final birdMidFlap = await gameRef.loadSprite(Assests.birdmid);
    final birdUpFlap = await gameRef.loadSprite(Assests.birdup);
    final birdDownFlap = await gameRef.loadSprite(Assests.birddown);
    size = Vector2(50, 40);
    current = BirdMoment.middle;
    position = Vector2(
      50,
      gameRef.size.y / 2 - size.y / 2,
    );
    sprites = {
      BirdMoment.middle: birdMidFlap,
      BirdMoment.up: birdUpFlap,
      BirdMoment.down: birdDownFlap
    };
  }
}
