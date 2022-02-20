class SitesObjectLike {
  final int id;
  final String name;
  final String description;
  final String image;
  SitesObjectLike(
    this.id,
    this.name,
    this.description,
    this.image
  );
  SitesObjectLike.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        description = r['description'],
        image = r['image'];
}
