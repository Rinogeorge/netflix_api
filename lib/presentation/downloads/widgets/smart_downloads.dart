import 'package:flutter/material.dart';
import 'package:netflix_clone/core/const.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth10,
        Icon(Icons.settings,color: Colors.white,),
        Text("Smart Downloads")
      ],
    );
  }
}