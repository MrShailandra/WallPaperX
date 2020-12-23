import 'package:flutter/material.dart';
import 'package:wallpapers_x/screens/WallpaperHome.dart';

void main() => (runApp(MainApp()));

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WallPaperHome(),
    );
  }
}
