class PostModel
{
  late List posts;
  late int total,skip,limit;

  PostModel({required this.posts,required this.total,required this.skip,required this.limit});

  factory PostModel.fromJson(Map m1)
  {
    return PostModel(posts: (m1['posts'] as List).map((e) => Post.fromJon(e)).toList(), total: m1['total'], skip: m1['skip'], limit: m1['limit']);
  }
}

class Post{
  late int id,views,userId;
  late String title,body;
  late List tags;
  late Reactions reactions;

  Post({required this.id,required this.views,required this.userId,required this.title,required this.body,required this.tags,required
    this.reactions});

  factory Post.fromJon(Map m1){
    return Post(id: m1['id'], views: m1['views'], userId: m1['views'], title: m1['title'], body: m1['body'], tags: m1['tags'], reactions: Reactions.fromJson(m1['reactions']));
  }
}

class Reactions{
  late int likes,dislikes;

  Reactions({required this.likes,required this.dislikes});

  factory Reactions.fromJson(Map m1){
    return Reactions(likes: m1['likes'], dislikes: m1['dislikes']);
  }
}