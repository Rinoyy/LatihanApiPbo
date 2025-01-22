import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:latihanapi/post_model.dart';
import 'posts.dart';

class DetailPage extends StatelessWidget {
  final Post postData;

  DetailPage({required this.postData});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('id: ${postData.userId}'),
                Text('Deskripsi: ${postData.title}')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
