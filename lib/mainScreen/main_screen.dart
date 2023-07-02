import 'package:flutter/material.dart';
//import 'package:quizee/loginScreen/other_screen.dart/other_screen.dart';

import 'package:quizee/mainScreen/profile_screen/profile.dart';

import 'package:quizee/mainScreen/rbt_support/pdf_courses.dart';
import 'package:quizee/quiz/quiz_screen.dart';

import '../test_code/testtie.dart';

//import 'package:quizee/loginScreen/sign_me.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
    required this.genderImage,
  }) : super(key: key);

  final String genderImage;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: screenHeight * (1 / 3),
                color: Colors.white,
                child: TopBox(widget: widget),
              ),
              SizedBox(height: 7),
              Expanded(
                child: Container(
                  color: Colors.white54,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PdfCourses(
                                          genderImage: widget.genderImage)),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/rbtcourses.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                padding: EdgeInsets.all(20),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Wrap(children: [
                              Text(
                                'RBT Training Support \n Information ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600),
                              ),
                            ]),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Questions(
                                        genderImage: widget.genderImage),
                                  ),
                                );
                              },
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/quizee.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                padding: EdgeInsets.all(20),
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Text(
                              'Quizee',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ExamplePage(
                                          genderImage: widget.genderImage),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/examples.png"),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  padding: EdgeInsets.all(20),
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'Examples',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopBox extends StatelessWidget {
  const TopBox({
    super.key,
    required this.widget,
  });

  final MainScreen widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  "Alias",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                ),
                // SizedBox(height: 4),
                Text(
                  "Occupation",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  'Age',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                // SizedBox(width: 10),
              ],
            ),
            SizedBox(
              width: 15,
            ),
            IgnorePointer(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(widget.genderImage)),
                  radius: 45,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Image.asset(
                          cacheHeight: 60,
                          cacheWidth: 100,
                          "assets/images/aba.jpeg")),
                  Container(
                      child: Image.asset(
                          cacheHeight: 80,
                          cacheWidth: 100,
                          "assets/images/ath.jpeg"))
                ]),
          ),
        ),
        SizedBox(height: 7),
        LinearProgressIndicator(
          semanticsLabel: "ABA TRAINING COMPLETENESS",
          semanticsValue: '20',
          value: 0.3,
          minHeight: 20,
        ),
      ],
    );
  }
}
