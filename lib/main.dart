import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
//import 'package:quizee/mainScreen/rbt_support/courses.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:quizee/welcomeScreen/welcome_page.dart';
import 'firebase_options.dart';
//import 'mainScreen/Example_screen/each_example.dart';
//import 'package:quizee/mainScreen/main_screen.dart';
//import 'package:quizee/welcomeScreen/welcome_screen.dart';xa

//import 'package:quizee/welcomeScreen/welcome_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //uploadPDFsToFirebase();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseAppCheck.instance.activate(webRecaptchaSiteKey: 'recaptcha-v3-site-key',);
   Future.delayed(Duration(milliseconds: 100), () {
  FlutterNativeSplash.remove();
  runApp(const MyApp());
   });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    
    return const MaterialApp(
    localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English
        Locale('es', 'ES'), // Spanish
      ],
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      //UiDesign()
   //WelcomeScreen(),
    );
  }
}
/*Platform  Firebase App Id
web       1:895534940106:web:25485046f8b0964f7a5933
macos     1:895534940106:ios:84c204504bc1382d7a5933 
android   1:895534940106:android:e86c4990c1e963037a5933
ios       1:895534940106:ios:a345b93ccc194bf37a5933*///