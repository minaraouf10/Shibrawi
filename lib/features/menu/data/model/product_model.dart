class ProductModel {
  int id;
  int price;
  String name;
  String description;
  String image;
  bool inFavorites;

  ProductModel({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.inFavorites,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'].toInt(),
        price: json['price'],
        name: json['name'],
        description: json['description'],
        image: json['image'],
        inFavorites: json['in_favorites']);
  }
}
