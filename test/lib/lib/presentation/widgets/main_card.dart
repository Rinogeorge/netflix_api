import 'package:flutter/material.dart';
import 'package:netfix_api_clone/core/const.dart';
import 'package:netfix_api_clone/core/model/models.dart';
 

class MainHomeScreenCard extends StatelessWidget {
  const MainHomeScreenCard({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 150,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: kRadius10,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "$imagePath${movie.posterPath}",
              ))),
    );
  }
}
