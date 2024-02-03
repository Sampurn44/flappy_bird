import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappy_bird/game/assets.dart';

class Background extends SpriteComponent {
  Background();

  @override
  Future<void> onLoad() async {
    await Flame.images.load(Assests.background);
  }
}
