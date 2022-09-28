import 'package:flutter/material.dart';

Color navColor = Color(0xff3399ff);

class BottomNavBarContent extends StatelessWidget {
  final IconData contentIcon;
  final String title;
  VoidCallback? function;
  Color? color;
     BottomNavBarContent({Key? key, required this.contentIcon, required this.title, this.color, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
                child: GestureDetector(
                  onTap: function,
                  child: Container(
                    alignment: Alignment.center,
                    height: 80,
                    width: 100,
                    color: color,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            contentIcon,
                            color: Colors.white70,
                          ),
                          Text(
                            title,
                            style: TextStyle(color: Colors.white70),
                          )
                        ]),
                  ),
                ),
              );

  }
}