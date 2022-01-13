class UserObject {
  final int id;
  final String name;
  final String user;
  final String email;
  final String password;
  final String image;
  final String birthday;
  final String position;
  final String phone;
  final DateTime created_at;
  final DateTime updated_at;

  UserObject(
      this.id,
      this.name,
      this.user,
      this.email,
      this.password,
      this.image,
      this.birthday,
      this.position,
      this.phone,
      this.created_at,
      this.updated_at);
  UserObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        user = r['user'],
        email = r['email'],
        password = r['password'],
        image = r['image'],
        birthday = r['birthday'],
        position = r['position'],
        phone = r['phone'],
        created_at = r['created_at'],
        updated_at = r['updated_at'];
}

class TokenObject {
  final String token;

  TokenObject(this.token);
  TokenObject.fromJson(Map<String, dynamic> r) : token = r['token'];
}
