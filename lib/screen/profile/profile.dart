import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenSize.height*0.17,
            width: screenSize.width*13,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage
              ("assets/blur-background-design-template-838ec9f1bfdb26eabf22a5b5fa510dad_screen.jpg"),
              fit: BoxFit.fitWidth),
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 40,
          //     right: 350,
          //   ),
          //   child: IconButton(
          //       onPressed: () {},
          //       icon: Icon(Icons.arrow_back, color: Colors.white70)),
          // ),
          // Padding(
          //   padding: EdgeInsets.only(
          //     top: 40,
          //     left: 350,
          //   ),
          //   child: IconButton(
          //       onPressed: () {},
          //       icon: Icon(
          //         Icons.send_sharp,
          //         color: Colors.white70,
          //       )),
          // ),
          Padding(
            padding: EdgeInsets.only(
                top: screenSize.height * 0.13, left: screenSize.width * 0.4),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/IMG_20230825_091659_864.jpg")),
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(50)
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: screenSize.height * 0.25, left: screenSize.width * 0.42),
            child: Text(
              'sabith',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: screenSize.height * 0.30, left: screenSize.width * 0.42),
            child: Text(
              '@sabith',
              style: TextStyle(color: Colors.black38, fontSize: 16),
            ),
          ),
          Padding(
  padding: EdgeInsets.only(
                top: screenSize.height * 0.36, left: screenSize.width * 0.05),
  child: ListView(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    children: [
      Container(
        width: 80,
        height: 50,
        child: Text("Quizer\n34",
        style: TextStyle(
          fontSize: 18
        ),),
      ),
      Container(
        width: 80,
        height: 50,
        child: Text("Plays\n45M",
        style: TextStyle(
          fontSize: 18
        ),
        ),
      ),
      Container(
        width: 80,
        height: 50,
        child: Text("Rank\n544",
        style: TextStyle(
          fontSize: 18
        ),),
      ),
      Container(
        width: 100,
        height: 50,
        child: Text("Followers\n4B",
        style: TextStyle(
          fontSize: 18
        ),),
      ),
      Container(
        width: 80,
        height: 50,
        child: Text("Following\n544",
        style: TextStyle(
          fontSize: 18
        ),),
      ),
    ],
  ),
),
          Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.45, left: screenSize.width * 0.0),
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 60,
                    width: 450,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 156, 156, 156),
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ))),
                  Padding(padding: EdgeInsets.only(
                top: screenSize.height * 0.55, left: screenSize.width * 0.05),
                child: Text('Attempts\n34',
                style: TextStyle(fontSize: 20),),
                ),
        ],
      ),
    );
  }
}
