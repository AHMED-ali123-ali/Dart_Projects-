import 'Character.dart';

class Archer extends Character {
  int? _arrows;
  int? _range;

  Archer(
    String id,
    String name,
    int health,
    int level,
     int arrows,
    int range,
  ) : super(id, name, health, level) {
    setArrows(arrows);
    setRange(range);
  }

  void setArrows(int arrows) {
    _arrows = arrows;
  }

  int getArrows() {
    return _arrows!;
  }

  void setRange(int range) {
    _range = range;
  }

  int getRange() {
    return _range!;
  }
}