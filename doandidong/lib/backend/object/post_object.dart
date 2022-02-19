
class PostObject {
  final int id;
  final String contents;
  final String image;
  PostObject(this.id, this.contents, this.image);
  PostObject.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        contents = r['contents'],
        image = r['image'];
}
