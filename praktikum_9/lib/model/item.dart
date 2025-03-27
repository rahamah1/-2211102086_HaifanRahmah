class Item {
  final int id;
  final String name;
  final double price;
  final int quantity;

  Item({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 1, // Default quantity = 1
  });

  Item copyWith({int? id, String? name, double? price, int? quantity}) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
    );
  }
}
