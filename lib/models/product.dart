class Product {
  final String id;
  final String name;
  final String category;
  final String description;
  final double price;
  final Map<String, String> specs;
  final String emoji;
  final String? imagePath;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
    required this.specs,
    required this.emoji,
    this.imagePath,
  });
}
