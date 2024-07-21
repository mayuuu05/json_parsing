import 'package:flutter/material.dart';
import 'package:json_parsing/8.3/provider/post_provider.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    PostProvider postProvider = Provider.of<PostProvider>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Text(
            'Map of list',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                postProvider.postModel.posts.length,
                    (index) {
                  var post = postProvider.postModel.posts[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          post.body,
                          style: TextStyle(color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 10,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Views: ${post.views}',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Tags: ${post.tags.join(', ')}',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Likes: ${post.reactions.likes}, Dislikes: ${post.reactions.dislikes}',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
