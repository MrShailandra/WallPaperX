import 'package:flutter/material.dart';
import 'package:wallpapers_x/screens/CategoriesImages.dart';

class HorizontalCategory extends StatelessWidget {
  final String imgUrl, name;

  HorizontalCategory({@required this.name, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CategoryImage(
                category: name.toLowerCase(),
              ),
            ))
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: FadeInImage.assetNetwork(
                placeholder: "image/loading.gif",
                height: 50,
                width: 100,
                fit: BoxFit.cover,
                image: imgUrl,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(9)),
              height: 50,
              width: 100,
              alignment: Alignment.center,
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
