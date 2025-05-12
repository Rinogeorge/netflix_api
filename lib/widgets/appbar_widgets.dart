import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clone/core/const.dart';

class AppbarWidgets extends StatelessWidget {
  const AppbarWidgets({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth10,
        Text(title,
        style: GoogleFonts.montserrat(fontSize: 30,fontWeight: FontWeight.bold),),
        Spacer(),
        Icon(Icons.cast,
        color: Colors.white,
        size: 30,),
        kwidth10,
        Container(height: 30,width: 30,color: Colors.blue,),
        kheight10,

      ],
    );
  }
}