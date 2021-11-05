
import 'package:flutter/material.dart';

class AlbumCommentWidget extends StatelessWidget {
  dynamic album;
  AlbumCommentWidget({Key? key,this.album}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orangeAccent,
      child: Column(
        children: [
          Text(album['title']),
          Text(album['body']),
        ],
      ),
    );
  }
}
