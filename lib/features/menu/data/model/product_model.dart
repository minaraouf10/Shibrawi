class ProductModel {
  late int id;
  late double price;
  late String name;
  late String description;
  late String image;
  late bool isFavorites;

  ProductModel({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.isFavorites,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] ?? 0,
      price: double.parse((json['price'] ?? 0.0).toString()),
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      image: json['image'] ?? '',
      isFavorites: json['in_favorites'] ?? true,
    );
  }
}
