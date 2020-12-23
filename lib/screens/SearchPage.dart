import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wallpapers_x/models/WallPaperModel.dart';
import 'package:wallpapers_x/widgets/AppBarCustome.dart';
import 'package:http/http.dart' as http;
import 'package:wallpapers_x/widgets/WallPaperList.dart';

import '../kConstant.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
  final String query;

  Search({this.query});
}

class _SearchState extends State<Search> {
  List<PhotosModel> photos = new List();
  getSearchImages(String searchQuery) async {
    var response = await http.get(
        "https://api.pexels.com/v1/search?query=$searchQuery&per_page=30",
        headers: {"Authorization": apiKey});

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      PhotosModel photosModel = new PhotosModel();
      photosModel = PhotosModel.fromMap(element);
      photos.add(photosModel);
      print(response.body);
    });
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    getSearchImages(widget.query);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.query.toUpperCase(),style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            wallpaperList(wallpapers: photos, context: context),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
