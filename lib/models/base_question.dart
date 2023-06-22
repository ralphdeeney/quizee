import 'question_model.dart';

class QuestionModel {
  final String? questionType;
  final String? questionID;
  final List<Question>? questions;

  QuestionModel({
    this.questionType,
    this.questionID,
    this.questions,
  });

  factory QuestionModel.fromJson(Map<String, dynamic> json) => QuestionModel(
        questionType: json['questionType'],
        questionID: json['questionID'],
        questions: List<Question>.from(
          json['questions'].map((question) => Question.fromJson(question)),
        ),
      );
}
