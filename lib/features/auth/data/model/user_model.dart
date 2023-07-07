class UserModel {
  late String name;
  late String phone;
  late String email;

  //late String password;
  late String image;
  late String token;

  UserModel({
    required this.name,
    required this.phone,
    required this.email,
    //required this.password,
    required this.image,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    //password = json['password'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email;
    //data['password'] = password;
    data['image'] = image;
    data['token'] = token;
    return data;
  }
}
