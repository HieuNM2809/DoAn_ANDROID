class SitesObject {
  final int id;
  final String name;
  final int pointx;
  final int pointy;
  final String description;
  final String hot;
  final int countshare;
  final int id_types_sites;
  final DateTime created_at;
  final DateTime updated_at;
  final DateTime deleted_at;
  SitesObject(
      this.id,
      this.name,
      this.pointx,
      this.pointy,
      this.description,
      this.hot,
      this.countshare,
      this.id_types_sites,
      this.created_at,
      this.updated_at,
      this.deleted_at);
  SitesObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        pointx = r['pointx'],
        pointy = r['pointy'],
        description = r['description'],
        hot = r['hot'],
        countshare = r['countshare'],
        id_types_sites = r['id_types_sites'],
        created_at = r['created_at'],
        updated_at = r['updated_at'],
        deleted_at = r['deleted_at'];
}
