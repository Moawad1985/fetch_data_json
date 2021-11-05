
class PostModel{
final int? albumId;
final int? postId;
final String? title;
final String? postImage;
PostModel({
    this.albumId,
    this.postId,
    this.title,
    this.postImage,
  });
factory PostModel.fromJson(Map<String,dynamic> json){

  return PostModel(
    albumId: json["albumId"],
    postId: json["id"],
    title: json["title"],
    postImage: json["url"],
  );

}

}

/*
{
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  },
 */