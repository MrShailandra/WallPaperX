import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget appBarCustom()
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("WallPaper", style: GoogleFonts.getFont("Source Serif Pro",fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black)),
      Text("X",style: GoogleFonts.getFont("Source Serif Pro",fontSize: 23,fontWeight: FontWeight.bold,color: Colors.blue)),
    ],
  );
}