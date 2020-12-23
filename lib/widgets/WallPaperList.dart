import 'package:flutter/material.dart';
import 'package:wallpapers_x/models/WallPaperModel.dart';
import 'package:wallpapers_x/screens/FullImage.dart';

Widget wallpaperList({List<PhotosModel> wallpapers, context}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      physics: ClampingScrollPhysics(),
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((PhotosModel wallpaper) {
        return GridTile(
          child: GestureDetector(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FullImage(
                      imgPath: wallpaper.src.portrait,
                    ),
                  ))
            },
            child: Hero(
              tag: wallpaper.src.portrait,
              child: Container(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage.assetNetwork(
                      image: wallpaper.src.portrait,
                      placeholder: "image/loading.gif",
                      fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
