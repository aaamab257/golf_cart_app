class SignUpModel {
  String name;
  String email;
  String phone;
  String password2;
  String password;
  bool tc;
  bool is_admin;

  SignUpModel(
      {this.name,
      this.password2,
      this.phone,
      this.email = '',
      this.password,
      this.is_admin,
      this.tc});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    password2 = json['password2'];
    phone = json['phone_number'];
    email = json['email'];
    password = json['password'];
    is_admin = json['is_admin'];
    tc = json['tc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['password2'] = this.password2;
    data['phone_number'] = this.phone;
    data['email'] = this.email;
    data['password'] = this.password;
    data['tc'] = this.tc;
    data['is_admin'] = this.is_admin;
    return data;
  }
}
