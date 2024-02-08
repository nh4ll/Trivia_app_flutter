import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 40,
              right: 350,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back, color: Colors.white70)),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 40,
              left: 350,
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.send_sharp,
                  color: Colors.white70,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 110, left: 155),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(50)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200, left: 160),
            child: Text(
              'sabith',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 230, left: 165),
                child: Text(
                  '@sabith',
                  style: TextStyle(color: Colors.black38, fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
              padding: EdgeInsets.only(top: 275, left: 10),
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Text(
                      'Quizer',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 275, left: 100),
              child: Container(
                child: TextButton(
                    onPressed: () {},
                    child: Container(
                      width: 60,
                      height: 60,
                      child: Text(
                        'Plays',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              )),
          Padding(
              padding: EdgeInsets.only(top: 275, left: 180),
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 70,
                    height: 60,
                    child: Text(
                      'Players',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 275, left: 270),
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 90,
                    height: 60,
                    child: Text(
                      'Followers',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))),
          Padding(
              padding: EdgeInsets.only(top: 320, left: 40),
              child: Text(
                '30',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
          Padding(
              padding: EdgeInsets.only(top: 320, left: 120),
              child: Text(
                '90M',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
          Padding(
              padding: EdgeInsets.only(top: 320, left: 215),
              child: Text(
                '4B',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
          Padding(
              padding: EdgeInsets.only(top: 320, left: 310),
              child: Text(
                '390',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
          Padding(
              padding: EdgeInsets.only(top: 360, left: 10, right: 10),
              child: TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 50,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ))),
        ],
      ),
    );
  }
}
