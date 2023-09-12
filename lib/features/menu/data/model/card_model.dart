class CardModel {
  late int id;
  late int quantity;
  late CardProduct product;

  CardModel({
    required this.id,
    required this.quantity,
    required this.product,
  });

  CardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'] as int;
    quantity = json['quantity'] as int;
    product = CardProduct.fromJson(json['product']);
  }
}

class CardProduct {
  late int productId;
  late int price;
  late int oldPrice;
  late int discount;
  late String image;
  late String name;
  late String description;

  CardProduct({
    required this.productId,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.image,
    required this.name,
    required this.description,
  });

  CardProduct.fromJson(Map<String, dynamic> json) {
    productId = json['id'] as int;
    price = json['price'] as int;
    oldPrice = json['old_price'] as int;
    discount = json['discount'] as int;
    image = json['image'] as String;
    name = json['name'] ?? '';
    description = json['description'] ?? '';
  }
}
