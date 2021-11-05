import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fetch_data/screens/ablum_screen.dart';
import 'package:fetch_data/widget/show_comments.dart';
import 'package:fetch_data/widget/album_widget.dart';
import 'package:flutter/material.dart';
void main() {
  runApp( const MyApp(title: 'Myapp',));
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home:AlbumScreen(),
    );
  }
}
