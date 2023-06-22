/*import 'package:flutter/material.dart';
import 'package:quizee/loginScreen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/welcomescreen.jpeg'),
        
        ),
      ),
            
      body:Column(
        children: [
          Center(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Image(
                image: AssetImage('assets/images/usa.jpeg'),
                onTap: () {
                  // Navigate to the next screen.
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
              ),
            ),
          ),
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:quizee/loginScreen/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    // print('$width, $height');
    return Scaffold(
        body: Stack(
      children: <Widget>[
        // Display background image
        SizedBox(
          child: Image.asset(
            'assets/images/welcomescreen.jpeg', // set the path to the background image
            fit: BoxFit
                .contain, // scale and crop the image to fill the available space
            width: double.infinity, // set the width to match the screen width
            height:
                double.infinity, // set the height to match the screen height
          ),
        ),
        // Display row of containers with images
        Positioned(
          bottom: 20.0, // distance from the bottom edge of the screen
          left: 0.0,
          right: 0.0,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // center the row horizontally and add some spacing between its children
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/images/english.jpeg'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage:
                          AssetImage('assets/images/espanyol.jpeg'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}*/


import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:quizee/loginScreen/login.dart';
import 'package:quizee/services/firebase_service.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  
   @override
  Widget build(BuildContext context) {

return Scaffold(
  body: Stack(
    children: <Widget>[
      // Display background image
      Container(
        padding: EdgeInsets.only(right: 4, left: 4),
        child: Image.asset(
          'assets/images/welcomesplash.jpeg', // set the path to the background image
          fit: BoxFit.cover, // scale and crop the image to cover the entire screen
          width: double.infinity, // set the width to match the screen width
          height: double.infinity, // set the height to match the screen height
        ),
      ),
      // Display row of containers with images
      Positioned(
        bottom: 30.0, // distance from the bottom edge of the screen
        left: 0.0,
        right: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
               
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Padding(
  padding: const EdgeInsets.only(bottom: 90),
  child: Column(
    children: [
      Container(
        width: 130,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('assets/images/english.jpeg'),
            fit: BoxFit.cover,
          ),
      ),  
            ),

      SizedBox(height: 8),
      Text(
        'ENGLISH',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),
            ),
            GestureDetector(
              onTap: () {
              
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
             child: Padding(
  padding: const EdgeInsets.only(bottom: 90),
  child: Column(
    children: [
      Container(
        width: 130,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            image: AssetImage('assets/images/espanyol.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 8),
      Text(
        'ESPANYOL',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),

    ],
  ),
),
            ),
          ],
        ),
      ),
      
    ],
  ),
);
  }
}
