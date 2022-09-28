import 'package:flutter/material.dart';

class HeaderSingleContent extends StatelessWidget {
  final IconData contentIcon;
  final String title;
  final String subTitle;
 
  const HeaderSingleContent(
      {Key? key,
      required this.contentIcon,
      required this.title,
      required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          contentIcon,
          color: Colors.white,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Text(
          subTitle,
          style: TextStyle(color: Colors.white, fontSize: 18),
        )
      ],
    );
  }
}
