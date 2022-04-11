class UsersModel {
  final String name;
  final String email;
  final String password;
  final String url;
  final String phoneNumber;

  UsersModel(this.name, this.email, this.password, this.url, this.phoneNumber);

  UsersModel.fromJson(Map<String, dynamic> json)
      : name = json["name"],
        email = json["email"],
        password = json["password"],
        url = json["url"],
        phoneNumber = json["phoneNumber"];

  Map<String, dynamic> toJson() => {
        'name': name,
        'email': email,
        'password': password,
        'url': url,
        'phoneNumber': phoneNumber,
      };
}
