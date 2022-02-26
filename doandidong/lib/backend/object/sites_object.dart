class SitesObject {
  final int id;
  final String name;
  final String description;
  final String hot;
  final int countshare;
  final int id_types_sites;
  final String image;

  SitesObject(
    this.id,
    this.name,
    this.description,
    this.hot,
    this.countshare,
    this.id_types_sites,
    this.image,
  );
  SitesObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        description = r['description'],
        hot = r['status'],
        countshare = r['countshare'],
        id_types_sites = r['id_types_sites'],
        image = r['image'];
}
