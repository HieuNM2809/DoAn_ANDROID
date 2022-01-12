class SitesObject {
  final int id;
  final String name;
  final String regions;
  final DateTime created_at;
  final DateTime updated_at;
  SitesObject(
      this.id, this.name, this.regions, this.created_at, this.updated_at);
  SitesObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        regions = r['regions'],
        created_at = r['created_at'],
        updated_at = r['updated_at'];
}
