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

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/welcomescreen.jpeg'),
          ),
        ),
      ),
    );
  }
}*/
