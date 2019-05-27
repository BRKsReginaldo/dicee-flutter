import 'dart:math';

class RandomInteger {
  final Random random = Random.secure();

  int between(int min, int max) {
    return random.nextInt((max + 1) - min) + min;
  }
}
