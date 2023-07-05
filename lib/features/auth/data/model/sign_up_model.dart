class UserModel {
  String? name;
  String? phone;
  String? email;
  String? password;
  String? image;
  String? token;

  UserModel({
    this.name,
    this.phone,
    this.email,
    this.password,
    this.image,
    this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    password = json['password'];
    image = json['image'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email;
    data['password'] = password;
    data['image'] = image;
    data['token'] = token;
    return data;
  }
}
