import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/profile.dart';

class ProfileService{
            Future<String> getImageUrl(String selectedGender,String ageController) async {
            final storage = FirebaseStorage.instance;

            String? genderImage;
            if (selectedGender == 'Male') {
              if (int.parse(ageController) < 18) {
                genderImage = "assets/images/boy.jpeg";
              } else {
                genderImage = "assets/images/guy.jpeg";
              }
            } else if (selectedGender == 'Female') {
              if (int.parse(ageController) < 18) {
                genderImage =  "assets/images/girl.jpeg";
              } else {
                genderImage =  "assets/images/lady.jpeg";
              }
            }

            final ref = storage.ref().child(genderImage!);
            final downloadUrl = await ref.getDownloadURL();
            print('***** This is the profile download url  downloadUrl ********');
            print('***** $downloadUrl');
            return genderImage;
          }

          Future<ProfileModel> getProfile(String userId) async{
            FirebaseFirestore firestore = FirebaseFirestore.instance;
            DocumentSnapshot snapshots = await firestore.collection("Users").doc(userId).get();
            Map<String,dynamic> userData = snapshots.data() as Map<String, dynamic>;
            ProfileModel user = ProfileModel.fromJson(userData);
            return user;
          }
          // Future<void> fetchImageUrl(imageUrl) async {
          //   try {
          //     final url = await ProfileService().getImageUrl(_selectedGender!,_ageController.text.trim());
          //       imageUrl = url;
          //   } catch (e) {
          //     // Handle any error that occurs while fetching the image URL
          //     print('Error fetching image URL: $e');
          //   }
          // }

          String getProfilePicture(selectedGender,ageController){
            if (selectedGender == 'Male'&& int.parse(ageController) < 18) {
               return "assets/images/boy.jpeg";
            } else if (selectedGender == 'Female'&&int.parse(ageController) < 18) {
                return "assets/images/girl.jpeg";
              } else if(selectedGender == "Female" && int.parse(ageController)>18) {
               return  "assets/images/lady.jpeg";
              } else {
            return "assets/images/guy.jpeg";
          }
       }
}