// class SearchModel {
//   late List<SearchData> data = [];
//
//   SearchModel.fromJson(Map<String, dynamic> json) {
//     json['data'].forEach((element) {
//       data.add(SearchData.fromJson(element));
//     });
//   }
// }
//
// class SearchData {
//   late int id;
//   late int price;
//   late String image;
//   late String name;
//   late String description;
//   late bool inFavorites;
//
//   SearchData.fromJson(Map<String, dynamic> json) {
//     id = json['id'].toInt();
//     image = json['image'];
//     price = json['price'].toInt();
//     name = json['name'];
//     description = json['description'];
//     inFavorites = json['in_favorites'];
//   }
// }
