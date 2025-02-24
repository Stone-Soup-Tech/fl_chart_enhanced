import 'dart:ui';

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.from(
      alpha: a,
      red: r * value,
      green: g * value,
      blue: b * value,
    );
  }

  Color lighten([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = percent / 100;
    return Color.from(
      alpha: a,
      red: r + ((1.0 - r) * value),
      green: g + ((1.0 - g) * value),
      blue: b + ((1.0 - b) * value),
    );
  }

  Color avg(Color other) {
    return Color.from(
      alpha: (a + other.a) / 2,
      red: (r + other.r) / 2,
      green: (g + other.g) / 2,
      blue: (b + other.b) / 2,
    );
  }
}
