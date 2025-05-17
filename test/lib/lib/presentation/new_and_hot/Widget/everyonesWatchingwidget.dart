import 'package:flutter/material.dart';
import 'package:netfix_api_clone/presentation/HomePage/widget/maincustombutton.dart';
import 'package:netfix_api_clone/presentation/widgets/video_widget.dart';
import 'package:netfix_api_clone/core/const.dart';
import 'package:netfix_api_clone/core/model/models.dart';
 

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          '${movie.title}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kHeight,
        Text(
          '${movie.overview}',
          style: TextStyle(color: Colors.grey),
        ),
        kHeight50,
        VideoWidget(
          image: movie.posterPath,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MainCustomButton(
              icon: Icons.share,
              title: 'Share',
              iconsize: 25,
              fontsize: 16,
            ),
            kwidth,
            MainCustomButton(
              icon: Icons.add,
              title: 'My List',
              iconsize: 28,
              fontsize: 16,
            ),
            kwidth,
            MainCustomButton(
              icon: Icons.play_arrow,
              title: 'Play',
              iconsize: 25,
              fontsize: 16,
            ),
            kwidth,
          ],
        )
      ],
    );
  }
}

const everyonewatchingimg =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/9iRRfMZbnpgHDdKi2lczGGYZXDo.jpg';
