
import 'package:fetch_data/model/post_model.dart';
import 'package:flutter/material.dart';

class AlbumWidget extends StatelessWidget {
  PostModel? album;
 AlbumWidget({this.album});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orangeAccent,
      child: Column(
        children: [
          Text(album!.title!),
          Image.network(album!.postImage!),
        ],
      ),
    );
  }
}
