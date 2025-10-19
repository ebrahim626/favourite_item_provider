class Item {
  final String name;
  final String id;
  final bool favourite;
  Item({required this.id, required this.name, required this.favourite});

  Item copyWith(String? name, String? id, bool? favourite) {
    return Item(
      id: id ?? this.id,
      name: name ?? this.name,
      favourite: favourite ?? this.favourite,
    );
  }
}
