import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:flappy_bird/game/assets.dart';
import 'package:flappy_bird/game/configuration.dart';

class Ground extends ParallaxComponent {
  @override
  FutureOr<void> onLoad() async {
    final ground = await Flame.images.load(Assests.ground);
    parallax = Parallax(
      [
        ParallaxLayer(ParallaxImage(ground, fill: LayerFill.none)),
      ],
    );
  }

  @override
  void update(double dt) {
    super.update(dt);
    parallax?.baseVelocity.x = Config.gamespeed;
  }
}
