import 'package:flutter/material.dart';
import 'package:netfix_api_clone/presentation/widgets/main_card.dart';
import 'package:netfix_api_clone/presentation/widgets/main_title.dart';
import 'package:netfix_api_clone/core/const.dart';
import 'package:netfix_api_clone/core/model/models.dart';

class MainTitleCardHome extends StatelessWidget {
  const MainTitleCardHome({
    super.key,
    required this.title,
    required this.listNotifier,
  });

  final String title;
  final ValueNotifier<List<Movie>> listNotifier;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ValueListenableBuilder<List<Movie>>(
            valueListenable: listNotifier,
            builder: (context, value, _) {
              if (value.isEmpty) {
                return const Center(
                  child: Text(
                    "No movies available",
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.length,
                itemBuilder: (context, index) {
                  var data = value[index];
                  return MainHomeScreenCard(movie: data);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
