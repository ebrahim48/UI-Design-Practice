import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image.network(profileHeaderImage, width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,),
                  Positioned(
                  top: 30,
                  right: 0,
                  left: 0,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back_ios_new_outlined),
                        color: Colors.black,
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Stack(
                          
                        clipBehavior: Clip.none,
      
                          alignment: Alignment.topRight,
                          children: [Icon(Icons.notifications),CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 6,
                            child: Text("5", style: TextStyle(fontSize: 9),),
                          )],
                        ),
                        color: Colors.black,
                      ),
                       Icon(Icons.edit),
                       SizedBox(width: 10,)
                    ],
                  ),
                ),
      
                Positioned(
      
                  bottom: -270,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(20),
                    
                      height: 350,
                      width: MediaQuery.of(context).size.width-50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Julianne V. Crow", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                          Text("UI Designer", style: TextStyle(fontSize: 20, color: Colors.grey),),
                          SizedBox(height: 20,),
                          Text("About Julianne", style: TextStyle(fontSize: 20,  ),),
                       SizedBox(height: 20,),
                          Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", style: TextStyle(color: Colors.grey, fontSize: 17),),
                                            SizedBox(height: 15,),
      
                       
                          Divider(),
                        SizedBox(height: 15,),
      
                        Row(
                          children: [
                            Expanded(child: IconButton(onPressed: (){}, icon: Image.network("https://cdn-icons.flaticon.com/png/512/3128/premium/3128304.png?token=exp=1655130523~hmac=7c3a86030472ad5f225e012804706344", color: Colors.blue))),
                            Expanded(child: IconButton(onPressed: (){}, icon: Image.network("https://cdn-icons-png.flaticon.com/512/733/733579.png", color: Colors.blue))),
                            Expanded(child: IconButton(onPressed: (){}, icon: Image.network("https://cdn-icons-png.flaticon.com/512/747/747976.png", color: Colors.blue))),
                            Expanded(child: IconButton(onPressed: (){}, icon: Image.network("https://cdn-icons-png.flaticon.com/512/1051/1051278.png", color: Colors.blue,))),
                            Expanded(child: IconButton(onPressed: (){}, icon: Image.network("https://cdn-icons-png.flaticon.com/512/2301/2301129.png", color: Colors.blue))),
                             
                          ],
                        ),
                        ],
                      ),
                    ),
                  ),
                )
      
              ],
            ),
            SizedBox(height: 300,),
            Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 3,
                    child: Container(
                      padding: EdgeInsets.all(20),
                    
                      height: 350,
                      width: MediaQuery.of(context).size.width-50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
      
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mutual Friend", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                        SizedBox(height: 15,),
      
                        Row(
                          children: [
                            Expanded(child: Column(
                              children: [
                                 CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage("https://img.freepik.com/free-photo/portrait-handsome-happy-caucasian-guy-with-white-teeth-smiling-broadly-cross-arms-chest-confident-standing-yellow-background-denim-shirt-white-t-shirt_1258-59628.jpg?t=st=1655128683~exp=1655129283~hmac=9530f46ddffcf5dc985df92f3a65b0e42619e46c19f4fa6ceed210575be1df75&w=740"),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Ebrahim")
                              ],
                            )),
                             Expanded(child: Column(
                              children: [
                                 CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage("https://img.freepik.com/free-photo/portrait-young-beautiful-playful-woman-with-bun-posing_176420-12392.jpg?t=st=1655129155~exp=1655129755~hmac=6d4a724595aa10f51d57cb8a93bc8740861d0d7d1b34f840805a3848ea86406c&w=740"),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Anika")
                              ],
                            )),
                             Expanded(child: Column(
                              children: [
                                 CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage("https://img.freepik.com/free-photo/happy-businessman-isolated-successful-handsome-man-standing-with-crossed-arms-isolated-white-background_1258-80754.jpg?t=st=1655128699~exp=1655129299~hmac=525f18a97e2da1c79da107e53a155f26b09694c226db117569a712f29acefe7a&w=740"),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Sujon")
                              ],
                            )),
                             Expanded(child: Column(
                              children: [
                                 CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage("https://img.freepik.com/free-photo/beautiful-african-girl-looking-camera-holding-glasses-white-background-copy-space_176420-55159.jpg?w=740"),
                                 ),
                                 SizedBox(height: 5,),
                                 Text("Nice")
                              ],
                            )),
                            
                          ],
                        ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),

    );
  }
  final String profileHeaderImage = "https://img.freepik.com/free-photo/excited-white-girl-bright-stylish-glasses-posing-pink-dreamy-curly-woman-playing-with-her-ginger-hair-laughing_197531-11045.jpg?t=st=1655098043~exp=1655098643~hmac=bcec70f5038d7e291aa81c4b7d5cac567f862f1d5232eab2b98d026d5502da98&w=740";
}