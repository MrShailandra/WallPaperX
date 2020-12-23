import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpapers_x/data/datas.dart';
import 'package:wallpapers_x/kConstant.dart';
import 'package:wallpapers_x/models/CategoryModel.dart';
import 'package:wallpapers_x/models/WallPaperModel.dart';
import 'package:wallpapers_x/widgets/AppBarCustome.dart';
import 'package:http/http.dart' as http;
import 'package:wallpapers_x/widgets/HorizontalCategory.dart';
import 'package:wallpapers_x/widgets/WallPaperList.dart';

import 'SearchPage.dart';

class WallPaperHome extends StatefulWidget {
  @override
  _WallPaperHomeState createState() => _WallPaperHomeState();
}

class _WallPaperHomeState extends State<WallPaperHome> {
  List<CategoriesModel> categories = new List();
  List<PhotosModel> photos = new List();
  String SearchText;

  getHomeImages() async {
    var response = await http.get(
        "https://api.pexels.com/v1/curated?per_page=$totalImage",
        headers: {"Authorization": apiKey});
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      PhotosModel photosModel = new PhotosModel();
      photosModel = PhotosModel.fromMap(element);
      photos.add(photosModel);
    });
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    categories = getCategories();
    getHomeImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: appBarCustom(),
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
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[100],
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 10  horizontally
                          1.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    //color: Color(0xfff5f8fd),
                    borderRadius: BorderRadius.circular(30)),
                margin:
                    EdgeInsets.only(top: 20, left: 24, right: 24, bottom: 24),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      onChanged: (value) => {SearchText = value},
                      decoration: InputDecoration(
                          hintText: "Search Wallpaper",
                          border: InputBorder.none),
                    )),
                    GestureDetector(
                        onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Search(
                                            query: SearchText,
                                          ))),
                              print(SearchText)
                            },
                        child: Icon(Icons.search))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return HorizontalCategory(
                        name: categories[index].name,
                        imgUrl: categories[index].imgUrl,
                      );
                    }),
              ),
              SizedBox(
                height: 10,
              ),
              wallpaperList(wallpapers: photos, context: context)
            ],
          ),
        ));
  }
}
