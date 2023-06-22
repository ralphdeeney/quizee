class QuestionModel {
  List<Question> questions;

  QuestionModel({required this.questions});

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    final questions = <Question>[];
    if (json['questions'] != null) {
      json['questions'].forEach((v) {
        questions.addAll(QuestionModel.fromJson(v).questions);
      });
    }
    return QuestionModel(questions: questions);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['questions'] = questions.map((v) => v.toJson()).toList();

    return data;
  }
}

class Question {
  String answer;
  List<String>? options;
  String? question;

  Question(
      {required this.answer, required this.options, required this.question});

  fromJson(Map<String, dynamic> json) {
    answer = json['answer'];
    options = json['options'].cast<String>();
    question = json['question'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['answer'] = answer;
    data['options'] = options;
    data['question'] = question;
    return data;
  }
}
