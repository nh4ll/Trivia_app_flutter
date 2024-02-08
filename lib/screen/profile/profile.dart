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
              color: Colors.white,
              borderRadius:BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
               
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40,right: 350,),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back)),),
          Padding(padding: EdgeInsets.only(top: 40,left: 350,),
            child: IconButton(onPressed: (){}, icon:Icon(Icons.send_sharp)),),
            Padding(padding: EdgeInsets.only(top: 110,left: 155),
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                borderRadius: BorderRadius.circular(50)
              ),
            ),
            ),
          Padding(padding: EdgeInsets.only(top: 200,left: 160),
          child:Text('sabith',style: TextStyle(
            color: Colors.white,
            fontSize: 24
          ),) ,
          ),
          
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 230,left: 165),
              child:Text('@sabith',style: TextStyle(
                color: Colors.white70,
                fontSize: 16
              ),) ,
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top:270,left: 20),
              child: TextButton(onPressed: (){}, child: Text('Quizer',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:270,left: 100),
              child: TextButton(onPressed: (){}, child: Text('Plays',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:270,left: 180),
              child: TextButton(onPressed: (){}, child: Text('Players',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:270,left: 270),
              child: TextButton(onPressed: (){}, child: Text('Followers',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:310,left: 20),
              child: TextButton(onPressed: (){}, child: Text('30',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:310,left: 100),
              child: TextButton(onPressed: (){}, child: Text('90M',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:310,left: 185),
              child: TextButton(onPressed: (){}, child: Text('4B',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:310,left: 280),
              child: TextButton(onPressed: (){}, child: Text('390',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),))
          ),
          Padding(padding: EdgeInsets.only(top:360,left: 10,right: 10),
          child:TextButton(onPressed: (){}, child: Container(
            height: 50,
            width: 400,
            decoration: 
            BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(50)
            ),
            child: Center(
              child: Text('Edit Profile',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              ),
            ),
          ))
          ),
        ],
      ),
    );
  }
  }