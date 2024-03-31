class Rewards {
  late String icon;
  late String title;
  late String summary;
  late int coins;
  Rewards(
      {required this.icon,
      required this.title,
      required this.summary,
      required this.coins});

  static Rewards fromJSON(dynamic map) {
    return Rewards(
        icon: map['icon'] ?? ' ',
        title: map['title'] ?? '_',
        summary: map['summary'] ?? '_',
        coins: map['coins'] ?? '_');
  }
}
