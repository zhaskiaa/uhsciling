import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'http_service.dart';
import 'post_model.dart';
import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.requireData;
            return ListView(
              children: posts
                  .map(
                    (Post post) => ListTile(
                      title: Text("${post.title}"),
                      subtitle: Text(
                        "${post.userId}"
                        "${post.id}"
                        "${post.body}"
                        ),
                      
                      
                      
                    ),
                  )
                  
                  .toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}