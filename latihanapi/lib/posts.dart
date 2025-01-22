import 'package:flutter/material.dart';
import 'http_service.dart';
import 'post_model.dart';

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
            List<Post>? posts = snapshot.data;
            return ListView(
              children: posts!
                  .map(
                    (Post post) => Card(
                      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular( 12.0), 
                          ),
                          child: ListTile(
                            title: Text(post.title),
                            subtitle: Text("${post.userId}"),
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
