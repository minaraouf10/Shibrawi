class HomeDataModel {
  late List<BannerModel> banners = [];
  late List<HomeProductModel> products = [];

  HomeDataModel.fromJson(Map<String, dynamic> json) {
    json['banners'].forEach((element) {
      banners.add(BannerModel.fromJson(element));
    });
   // banners = (json['banners']).map((e) => BannerModel.fromJson(e)).toList();

    json['products'].forEach((element) {
      products.add(HomeProductModel.fromJson(element));
    });
  }
}

class BannerModel {
  late int id;
  late String image;

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }
}

class HomeProductModel {
  late int id;
  late dynamic price;
  late dynamic oldPrice;
  late dynamic discount;
  late String image;
  late String name;
  late String description;
  late bool inFavorites;
  late bool inCart;

  HomeProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    oldPrice = json['old_price'];
    discount = json['discount'];
    image = json['image']??'';
    name = json['name']??'';
    description = json['description']??'';
    inFavorites = json['in_favorites']?? false ;
    inCart = json['in_cart']?? false;
  }
}
