class HotelObject {
  final int id;
  final String name;
  final String address;
  final int id_sites;
  final String image;

  HotelObject(
    this.id,
    this.name,
    this.id_sites,
    this.address,
    this.image,
  );
  HotelObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        address = r['address'],
        id_sites = r['id_sites'],
        image = r['image'];
}
