// import 'package:flutter/material.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(SignMe());
// }

// class SignMe extends StatefulWidget {
//   const SignMe({Key? key}) : super(key: key);

//   @override
//   State<SignMe> createState() => _SignMeState();
// }

// class _SignMeState extends State<SignMe> {
//   bool _isObscure = true;
//   final _formKey = GlobalKey<FormState>();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _firstNameController = TextEditingController();
//   final _lastNameController = TextEditingController();
//   final _ageController = TextEditingController();
//   String? imageUrl;

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     _firstNameController.dispose();
//     _lastNameController.dispose();
//     _ageController.dispose();
//     super.dispose();
//   }

//   Future<void> _signUp() async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();
//       try {
//         final UserCredential userCredential =
//             await FirebaseAuth.instance.createUserWithEmailAndPassword(
//           email: _emailController.text.trim(),
//           password: _passwordController.text.trim(),
//         );

//         final User? user = userCredential.user;
//         if (user != null) {
//           await addUserDetails(
//             user.uid,
//             _firstNameController.text.trim(),
//             _lastNameController.text.trim(),
//             int.parse(_ageController.text.trim()),
//             _emailController.text.trim(),
//           );

//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ProfilePage()),
//           );
//         }
//       } on FirebaseAuthException catch (e) {
//         if (e.code == 'weak-password') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: const Text('The password is too weak.')),
//           );
//         } else if (e.code == 'email-already-in-use') {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: const Text('The account already exists.')),
//           );
//         }
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: const Text('An error occurred.')),
//         );
//       }
//     }
//   }

//   Future<void> addUserDetails(String userId, String firstName, String lastName,
//       int age, String email) async {
//     await FirebaseFirestore.instance.collection('users').doc(userId).set({
//       'firstName': firstName,
//       'lastName': lastName,
//       'age': age,
//       'email': email,
//     });
//   }

//   Future<void> fetchImageUrl() async {
//     try {
//       final url = await getImageUrl();
//       setState(() {
//         imageUrl = url;
//       });
//     } catch (e) {
//       // Handle any error that occurs while fetching the image URL
//       print('Error fetching image URL: $e');
//     }
//   }

//   Future<String> getImageUrl() async {
//     final storage = FirebaseStorage.instance;

//     String imagePath;

//     if (int.parse(_ageController.text.trim()) < 18) {
//       imagePath = 'images/young_image.png';
//     } else {
//       imagePath = 'images/adult_image.png';
//     }

//     final ref = storage.ref().child(imagePath);
//     final downloadUrl = await ref.getDownloadURL();

//     return downloadUrl;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Sign Me',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Sign Up'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Form(
//             key: _formKey,
//             child: ListView(
//               children: [
//                 TextFormField(
//                   controller: _emailController,
//                   decoration: const InputDecoration(labelText: 'Email'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter an email';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: _passwordController,
//                   obscureText: _isObscure,
//                   decoration: const InputDecoration(
//                     labelText: 'Password',
//                     suffixIcon: Icon(Icons.visibility),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter a password';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: _firstNameController,
//                   decoration: const InputDecoration(labelText: 'First Name'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your first name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: _lastNameController,
//                   decoration: const InputDecoration(labelText: 'Last Name'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your last name';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: _ageController,
//                   keyboardType: TextInputType.number,
//                   decoration: const InputDecoration(labelText: 'Age'),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter your age';
//                     }
//                     final age = int.tryParse(value);
//                     if (age == null || age <= 0) {
//                       return 'Please enter a valid age';
//                     }
//                     return null;
//                   },
//                 ),
//                 ElevatedButton(
//                   onPressed: _signUp,
//                   child: const Text('Sign Up'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//       ),
//       body: Center(
//         child: const Text('Welcome to your profile!'),
//       ),
//     );
//   }
// } 