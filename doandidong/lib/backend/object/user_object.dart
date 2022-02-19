class UserObject {
  final int id;
  final String name;
  final String user;
  final String email;
  final String image;
  final String position;
  final String phone;

  UserObject(
      this.id,
      this.name,
      this.user,
      this.email,
      this.image,
      this.position,
      this.phone);
  UserObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        user = r['user'],
        email = r['email'],
        image = r['image'],
        position = r['position'],
        phone = r['phone'];
}

