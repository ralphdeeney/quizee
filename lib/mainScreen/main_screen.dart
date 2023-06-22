import 'package:flutter/material.dart';
//import 'package:quizee/loginScreen/other_screen.dart/other_screen.dart';
import 'package:quizee/mainScreen/Example_screen/example_screen.dart';
import 'package:quizee/mainScreen/profile_screen/profile.dart';
import 'package:quizee/mainScreen/quizee_screen/quiz_screen.dart';

import 'package:quizee/mainScreen/rbt_support/pdf_courses.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Alias",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 7),
                            Text(
                              "Occupation",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 7),
                            Text(
                              'Age',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileScreen(),
                              ),
                            );
                          },
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage(widget.genderImage),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16.0),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Container(
                              height: 200,
                              width: 200,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => PdfCourses(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/rbtcourses.png"),
                                      fit: BoxFit.cover,
                                      
                                    ),
                                  ),
                                    
                                    padding: EdgeInsets.all(20),
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'RBT Training Support \n Information ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => QuizScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/quizee.png"),
                                      fit: BoxFit.cover,
                                      
                                    ),
                                  ),
                                  
                                  padding: EdgeInsets.all(20),
                                  
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Quizee',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ExampleScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/examples.png"),
                                      fit: BoxFit.cover,
                                      
                                    ),
                                  ),
                                  
                                  padding: EdgeInsets.all(20),
                                  
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Examples',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      /*Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => OtherScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  color: Colors.black,
                                  padding: EdgeInsets.all(20),
                                  child: Text('Button 3'),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Text 4',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: GestureDetector(
                                onTap: () {
                                  print('Button 5 Tapped');
                                  // Add your logic here for Button 5 onTap
                                },
                                child: Container(
                                  color: Colors.black,
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Quizzes',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Text 5',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30.0),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              width: 200,
                              height: 200,
                              child: GestureDetector(
                                onTap: () {
                                  print('Button 6 Tapped');
                                  // Add your logic here for Button 6 onTap
                                },
                                child: Container(
                                  color: Colors.black,
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    'Quizzes',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 16.0),
                          Text(
                            'Text 6',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),*/
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
