import 'package:flutter/material.dart';
import 'package:ui_design/screen/profile_screen.dart';

import '../widget/bottom_navbar_content.dart';
import '../widget/header_single_content.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                bcimg,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 30,
                right: 0,
                left: 0,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_back_ios_new_outlined),
                      color: Colors.white,
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Stack(
                        alignment: Alignment.topRight,
                        children: [Icon(Icons.notifications),CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 6,
                          child: Text("5", style: TextStyle(fontSize: 9),),
                        )],
                      ),
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(profileimg),
                  ),
                  Text(
                    "Suzi Centore",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        shadows: [
                          BoxShadow(
                              color: Colors.black87,
                              blurRadius: 10,
                              offset: Offset(4, 4))
                        ]),
                  ),
                  Text(
                    "UI Designer",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          //todo This is header row section

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HeaderSingleContent(
                  contentIcon: Icons.image, title: "254", subTitle: "Photos"),
              Container(
                height: 50,
                width: 1,
                color: Colors.white,
              ),
              HeaderSingleContent(
                  contentIcon: Icons.supervisor_account,
                  title: "556",
                  subTitle: "Fllowers"),
              Container(
                height: 50,
                width: 1,
                color: Colors.white,
              ),
              HeaderSingleContent(
                  contentIcon: Icons.favorite, title: "412", subTitle: "Likes"),
            ],
          ),
          SizedBox(
            height: 30,
          ),

          Center(
            child: Container(
              width: 200,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      onPrimary: Colors.blue,
                      side: BorderSide(
                          color: Colors.blue.withOpacity(0.8), width: 2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add),
                      Text(
                        "Follow",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "There are many variations of passages of Lorem Ispsum availble. but the majority have suffered",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "More Information",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          Row(
            children: [
              BottomNavBarContent(
                  contentIcon: Icons.camera_alt,
                  title: "Photos",
                  color: Color(0xff3399ff)),
              BottomNavBarContent(
                  contentIcon: Icons.person,
                  title: "Profile",
                  color: Color(0xff4da6ff),
                  function: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileScreen()));
                  }),
              BottomNavBarContent(
                  contentIcon: Icons.favorite,
                  title: "Like",
                  color: Color(0xff3399ff)),
              BottomNavBarContent(
                  contentIcon: Icons.settings,
                  title: "Setting",
                  color: Color(0xff3399ff)),
            ],
          )
        ],
      ),
    );
  }

  final String bcimg =
      "https://images.unsplash.com/photo-1615028427098-f2185474eeb3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";
  final String profileimg =
      "https://img.freepik.com/free-photo/attractive-girl-with-red-lipstick-curly-dark-hair-looking-camera-pink-background_197531-17626.jpg?t=st=1655109473~exp=1655110073~hmac=5a45b78524a169b2ab155369f7bec48c14550ff417638685915065290d9e400b&w=740";
}
