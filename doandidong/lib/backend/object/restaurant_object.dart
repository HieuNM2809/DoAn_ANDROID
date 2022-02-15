class RestaurantObject {
  final int id;
  final String name_Res;
  final String address;
  final int id_sites;

  RestaurantObject(
    this.id,
    this.name_Res,
    this.address,
    this.id_sites,
  );
  RestaurantObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name_Res = r['name'],
        address = r['adddress'],
        id_sites = r['id_sites'];
}
