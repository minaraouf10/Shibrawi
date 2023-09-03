class FavoriteModel {
  late List<Data> data;

  FavoriteModel({required this.data});

  FavoriteModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
}

class Data {
  late int id;
  late Product product;

  Data({required this.id, required this.product});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product =
        (json['product'] != null ? Product.fromJson(json['product']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product'] = product.toJson();
    return data;
  }
}

class Product {
  late int id;
  late num price;
  late num oldPrice;
  late num discount;
  late String image;
  late String name;
  late String description;

  Product(
      {required this.id,
      required this.price,
      required this.oldPrice,
      required this.discount,
      required this.image,
      required this.name,
      required this.description});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'] ?? 0;
    oldPrice = json['old_price'] ?? 0;
    discount = json['discount'] ?? 0;
    image = json['image'] ?? '';
    name = json['name'] ?? '';
    description = json['description'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['price'] = price;
    data['old_price'] = oldPrice;
    data['discount'] = discount;
    data['image'] = image;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}
