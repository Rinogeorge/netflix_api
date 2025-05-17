import 'package:flutter/material.dart';
import 'package:netfix_api_clone/core/const.dart';
 
class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        kwidth,
        Text("Smart Download")
      ],
    );
  }
}
