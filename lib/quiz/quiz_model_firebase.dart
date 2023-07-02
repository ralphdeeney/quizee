import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";

import '../models/base_question.dart';

class CloudQuiz extends StatefulWidget {
  final String questionType;
  const CloudQuiz({super.key, required this.questionType});

  @override
  State<CloudQuiz> createState() => _CloudQuizState();
}

class _CloudQuizState extends State<CloudQuiz> {
  Stream<DocumentSnapshot<Map<String, dynamic>>> getQuestionsStream() {
    var docQuery = FirebaseFirestore.instance
        .collection('Questions')
        .doc(widget.questionType)
        .snapshots();
    return docQuery;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: StreamBuilder(
              stream: getQuestionsStream(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                var data = snapshot.data;
                QuestionModel questionModel = QuestionModel.fromJson(data as Map<String, dynamic>);
                return ListView.builder(
                    itemCount: questionModel.questions!.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  (questionModel.questions![index].question).toString(),
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                               
                              ]));
                    });
              }),
     ),
    
    );
  }
}
