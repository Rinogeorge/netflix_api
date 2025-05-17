import 'package:flutter/material.dart';
import 'package:netfix_api_clone/presentation/Downloads/downloads.dart';
import 'package:netfix_api_clone/presentation/FastLaugh/fastlaugh.dart';
import 'package:netfix_api_clone/presentation/HomePage/homepage.dart';
import 'package:netfix_api_clone/presentation/Main(bottomNav)/widget/bottomnavwidget.dart';
 
import 'package:netfix_api_clone/presentation/Search/search.dart';
import 'package:netfix_api_clone/presentation/new_and_hot/newandhot.dart';
 

class Bottomnav extends StatelessWidget {
  Bottomnav({super.key});

  final _pages = [
    Homepage(),
    ScreenNewAndHot(),
    Fastlaugh(),
    Search(),
    Downloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangerNotifier,
          builder: (context, int index, _) {
            return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: Bottomnavwidget(),
    );
  }
}
