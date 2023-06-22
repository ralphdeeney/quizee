import 'dart:convert';

class ProfileModel {
  final String? firstName;
  final String? lastName;
  final String? email;
  final int? age;
  final String? gender;

  ProfileModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.age,
    required this.gender,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>ProfileModel(
      firstName: json["firstName"] as String?,
      lastName: "${json["lastName"]}",
      email: "${json["email"]}",
      age: json["age"] ?? 0,
      gender: "${json["gender"]}",
    );

  // factory ProfileModel.parse(String str) {
  //   final decoded = json.decode(str);
  //   if (decoded == null) throw Error();
  //   return ProfileModel.fromJson(decoded);
  // }

  // Alias get alias {
  //   if (gender == 'male') {
  //     if (age < 18) {
  //       return Alias.boy;
  //     } else {
  //       return Alias.man;
  //     }
  //   } else {
  //     if (age < 18) {
  //       return Alias.girl;
  //     } else {
  //       return Alias.lady;
  //     }
  //   }
  // }

  // ImageProvider get avatar {
  //   final avatars = <Alias, ImageProvider>{
  //      Alias.boy: AssetImage('assets/images/boy.jpeg'),
  //      Alias.girl: AssetImage('assets/images/lady.jpeg'),
  //      Alias.lady: AssetImage('assets/images/guy.jpeg'),
  //      Alias.man: AssetImage('assets/images/girl.jpeg'),
  //   };
  //   return avatars[alias] ?? AssetImage('path');
  // }

  // Image get avatarImage => Image(image: avatar);

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'gender': gender,
      'age': age,
    };
  }
  
  @override
  String toString() {
    return json.encode(toJson());
  }
}

enum Alias { boy, girl,  lady, man }


