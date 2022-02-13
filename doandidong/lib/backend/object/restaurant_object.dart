class RestaurantObject {
  final int id;
  final String name;
  final String food;
  final String address;
  final int id_sites;
  final DateTime created_at;
  final DateTime updated_at;
  final DateTime deleted_at;
  RestaurantObject(this.id, this.name, this.food, this.address, this.id_sites,
      this.created_at, this.updated_at, this.deleted_at);
  RestaurantObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        food = r['food'],
        address = r['address'],
        id_sites = r['id_sites'],
        created_at = r['created_at'],
        updated_at = r['updated_at'],
        deleted_at = r['deleted_at'];
}
