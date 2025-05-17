import 'package:flutter/material.dart';
import 'package:netfix_api_clone/api/api.dart';
import 'package:netfix_api_clone/core/const.dart';

import 'package:netfix_api_clone/presentation/widgets/maintitlecardhome.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({super.key});
  fetchData() async {
    trendingNowListNotifeir.value = await Api().getTrendingMovies();

    top10TvShowsInIndiaTodayListNotifier.value =
        await Api().getTop10TvShowsInIndiaToday();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: MainTitleCardHome(
        listNotifier: topRatedListNotifier,
        title: "Trending Now",
        
      ),
    );
  }
}
