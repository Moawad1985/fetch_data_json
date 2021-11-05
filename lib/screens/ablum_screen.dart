import 'package:fetch_data/model/post_model.dart';
import 'package:fetch_data/services/network_helper.dart';
import 'package:fetch_data/widget/album_widget.dart';
import 'package:flutter/material.dart';

class AlbumScreen extends StatefulWidget {
  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  Future <List<dynamic>>? listOfPhoto;
  @override
  void initState() {
    super.initState();
    listOfPhoto = NetworkHelper().getPhotos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Album'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: listOfPhoto,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemBuilder: (context,index){
              final postModel =PostModel.fromJson(snapshot.data![index]);
                  return AlbumWidget(
                album: postModel,
              );
            });
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
