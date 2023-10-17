class SharedPostModel {
  List<Post> post;

  SharedPostModel({
    required this.post,
  });

  Map<String, dynamic> toMap() {
    return {
      'post': post.map((post) => post.toMap()).toList(),
    };
  }

  factory SharedPostModel.fromMap(Map<String, dynamic> map) {
    return SharedPostModel(
      post: List<Post>.from(map['post'].map((x) => Post.fromMap(x))),
    );
  }
}

class Post {
  String senderId;
  String senderName;
  String postId;
  List<String?>? likes;
  List<String?>? tags;
  String? textFeed;
  String? imageFeed;

  Post({
    required this.senderName,
    required this.senderId,
    required this.postId,
    required this.likes,
    required this.tags,
    required this.textFeed,
    required this.imageFeed,
  });

  Map<String, dynamic> toMap() {
    return {
      'senderId': senderId,
      'senderName': senderName,
      'postId': postId,
      'likes': likes,
      'tags': tags,
      'textFeed': textFeed,
      'imageFeed': imageFeed,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      senderName: map['senderName'],
      senderId: map['senderId'],
      postId: map['postId'],
      likes: map['likes'],
      tags: map['tags'],
      textFeed: map['textFeed'],
      imageFeed: map['imageFeed'],
    );
  }
}
