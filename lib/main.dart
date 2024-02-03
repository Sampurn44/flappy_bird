import 'package:flame/game.dart';
import 'package:flappy_bird/game/flappy_game.dart';
import 'package:flutter/material.dart';

final game = FlappyBird();
void main() {
  runApp(GameWidget(
    game: game,
  ));
}
