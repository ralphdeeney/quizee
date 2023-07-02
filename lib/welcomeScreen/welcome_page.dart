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

import 'package:flutter/material.dart';
import 'package:quizee/loginScreen/login.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.white,
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Image.asset("assets/images/welcome/aba.png",
                  width: double.maxFinite, height: 150),
            ),
            SizedBox(height: 7),
            Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                child: Image.asset("assets/images/welcome/abaLogo2.png",
                    width: double.maxFinite, height: 150)),
            SizedBox(height: 3),
            Text("Therapy Group",
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
            // Text("Therapy Group",
            //     style: GoogleFonts.inconsolata(
            //         fontSize: 17,
            //         fontStyle: FontStyle.italic,
            //         fontWeight: FontWeight.bold)),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 8.0, right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("CHOOSE LANGUAGE",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold)),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Container(
                            child: Image.asset(
                                "assets/images/welcome/english.png",
                                width: 120,
                                height: 100)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "ESCOJA LENGUAJE",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          child: Image.asset(
                              "assets/images/welcome/espanyol.png",
                              width: 120,
                              height: 100)),
                    ],
                  ),
                ],
              ),
            )
          ])),
    ));
  }
}
