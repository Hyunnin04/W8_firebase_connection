class Pancake {
  final String id;
  final String name;
  final double price;

  Pancake({required this.id, required this.name, required this.price, required });

  @override
  bool operator ==(Object other) {
    return other is Pancake && other.id == id;
  }

  @override
  int get hashCode => super.hashCode ^ id.hashCode;
}
