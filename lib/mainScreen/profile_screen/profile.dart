// ignore_for_file: unused_element

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double _progressValue = 0;

  late User? currentUser;
  String _firstName = '';
  String _email = '';
  String _lastName = '';
  String _occupation = '';
  String _age = '';
  // ignore: unused_field
  String _gender = "";

  void _incrementProgress() {
    setState(() {
      _progressValue += 10;
      if (_progressValue > 100) {
        _progressValue = 100;
      }
    });
  }

  void _getCurrentUserData() async {
    User? currentUser = FirebaseAuth.instance.currentUser;
    DocumentSnapshot userDataSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser!.uid)
        .get();
    setState(() {
      _firstName = userDataSnapshot['firstName'];
      _email = userDataSnapshot['email'];
      _lastName = userDataSnapshot['lastName'];
      _occupation = userDataSnapshot['occupation'];
      _age = userDataSnapshot['age'];
      _gender = userDataSnapshot['gender'];
    });
  }

  void _updateUserData() async {
    User? currentUser = FirebaseAuth.instance.currentUser;

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser!.uid)
          .update({
        'firstName': 'NewFirstName',
        'lastName': 'NewLastName',
        'email': 'NewEmail',
        'occupation': 'NewOccupation',
        'age': 'NewAge',
        'gender': 'NewGender'
      });
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return const AlertDialog(
            content: Text("User data updated successfully"),
          );
        },
      );
    } catch (e) {
      print('Error updating user data $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _getCurrentUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 28.0, vertical: 12.0),
            child: Column(
              children: [
                const Center(
                  child: CircleAvatar(radius: 80),
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 80,
                      height: 100,
                      child: SvgPicture.asset("assets/images/SVG/aba.svg"),
                    ),
                    SizedBox(width: 16.0),
                    Container(
                      width: 80,
                      height: 80,
                      child: SvgPicture.asset("assets/images/SVG/abaLogo2.svg"),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                LinearProgressIndicator(
                  value: .2,
                  minHeight: 16,
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Enter your first name',
                      border: InputBorder.none,
                    ),
                    controller: TextEditingController(text: _firstName),
                    onChanged: (value) {
                      _firstName = value;
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Enter your last name',
                      border: InputBorder.none,
                    ),
                    controller: TextEditingController(text: _lastName),
                    onChanged: (value) {
                      _lastName = value;
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Enter your email',
                      border: InputBorder.none,
                    ),
                    controller: TextEditingController(text: _email),
                    onChanged: (value) {
                      _email = value;
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Enter your occupation',
                      border: InputBorder.none,
                    ),
                    controller: TextEditingController(text: _occupation),
                    onChanged: (value) {
                      _occupation = value;
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.white),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Enter your age',
                      border: InputBorder.none,
                    ),
                    controller: TextEditingController(text: _age),
                    onChanged: (value) {
                      _age = value;
                    },
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _updateUserData,
                  child: Text('Save Changes'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late User? currentUser;
  late String userId;
  late String firstName;
  late String lastName;
  late String email;
  late String age;
  late String occupation;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      userId = currentUser!.uid;
      fetchUserData();
    }
  }

  void fetchUserData() async {
    DocumentSnapshot userDataSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .get();

    setState(() {
      firstName = userDataSnapshot['firstName'];
      lastName = userDataSnapshot['lastName'];
      email = userDataSnapshot['email'];
      age = userDataSnapshot['age'];
      occupation = userDataSnapshot['occupation'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('User ID: $userId'),
            SizedBox(height: 16.0),
            Text('First Name: $firstName'),
            Text('Last Name: $lastName'),
            Text('Email: $email'),
            Text('Age: $age'),
            Text('Occupation: $occupation'),
          ],
        ),
      ),
    );
  }
}
 */