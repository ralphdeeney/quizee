import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionModel {
  // String? image;
  String? url;
  String? questionType;

  QuestionModel(
      // this.image,
      this.url,
      this.questionType);

  //   QuestionModel(, questionType)
  // ];
  
  //  getQuestionStream() {
  //   return FirebaseFirestore.instance
  //       .collection('Questions')
  //       .snapshots()
  //       .map((querySnapshot) => querySnapshot.docs
  //           .map((docSnapshot) => QuestionModel(
  //                 docSnapshot.get('url'),
  //                 docSnapshot.get('questionType'),
  //               ))
  //           .toList());
  // }

  CollectionReference _collectionRef =
    FirebaseFirestore.instance.collection('collection');

Future<void> getData() async {
    // Get docs from collection reference
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    print(allData);
}
}