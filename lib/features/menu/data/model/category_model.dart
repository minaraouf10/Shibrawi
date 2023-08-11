class CategoryModel {
  String name;
  String image;
  int id;

  CategoryModel({required this.name, required this.image, required this.id});
  // function to convert json to object
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      name: json['name'],
      image: json['image'],
      id: json['id'],
    );
  }
}
