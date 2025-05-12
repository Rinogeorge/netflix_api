import 'package:flutter/material.dart';
import 'package:netflix_clone/api/api.dart';
import 'package:netflix_clone/core/const.dart';
import 'package:netflix_clone/presentation/downloads/widgets/downloads_image_widget.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Text(
          "Introducing Downloads For You",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight10,
        Text(
          "We will download a personalised selection of\nmovies and shows for you, So there\nalways something to watch on your\ndevice ",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 20),
        ),
        kheight10,
        FutureBuilder<List<String?>>(
          future: Api().getDownloadImageUrls(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting ||
                snapshot.connectionState == ConnectionState.none) {
              return Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey[800],
                  radius: size.width * 0.395,
                  child: const CircularProgressIndicator(),
                ),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Text('No data available');
            } else {
              return SizedBox(
                width: size.width,
                height: size.width,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: size.width * 0.4,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                    ),
                    DownloadsImageWidget(
                        imageList: snapshot.data![0],
                        margin: EdgeInsets.only(left: 140, bottom: 50, top: 40),
                        angle: 25,
                        size: Size(size.width * 0.4, size.width * 0.58)),
                    DownloadsImageWidget(
                      imageList: snapshot.data![1],
                      margin: EdgeInsets.only(right: 140, bottom: 50, top: 30),
                      angle: -25,
                      size: Size(size.width * 0.4, size.width * 0.58),
                    ),
                    DownloadsImageWidget(
                      imageList: snapshot.data![2],
                      margin: EdgeInsets.only(bottom: 10, top: 30),
                      size: Size(size.width * 0.45, size.width * 0.65),
                    ),
                    DownloadsImageWidget(
                      imageList: snapshot.data![2],
                      margin: EdgeInsets.only(bottom: 10, top: 30),
                      size: Size(size.width * 0.45, size.width * 0.65),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ],
    );
  }
}
