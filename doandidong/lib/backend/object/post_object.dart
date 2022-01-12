class PostObject {
  final int id;
  final String contents;
  final int id_user;
  final int id_sites;
  final DateTime created_at;
  final DateTime updated_at;
  PostObject(this.id, this.contents, this.id_user, this.id_sites,
      this.created_at, this.updated_at);
  PostObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        contents = r['contents'],
        id_user = r['id_user'],
        id_sites = r['id_sites'],
        created_at = r['created_at'],
        updated_at = r['updated_at'];
}
