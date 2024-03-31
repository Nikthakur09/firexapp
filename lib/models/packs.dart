class Packs {
  late String icon;
  late int coins;

  Packs({required this.icon, required this.coins});

  // ignore: empty_constructor_bodies
  static Packs fromJSON(dynamic map) {
    return Packs(icon: map['icon'] ?? '_', coins: map['coins'] ?? '_');
  }
}
