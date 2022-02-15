class HotelObject {
  final int id;
  final String name;
  final String address;
  final int id_sites;
  final int created_at;
  final int updated_at;
  final int deleted_at;
  HotelObject(this.id, this.name, this.id_sites, this.address, this.created_at,
      this.updated_at, this.deleted_at);
  HotelObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        address = r['address'],
        id_sites = r['id_sites'],
        created_at = r['created_at'],
        updated_at = r['updated_at'],
        deleted_at = r['deleted_at'];
}
