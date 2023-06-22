class Documents{
  String? doc_titles;
  String? doc_url;
  String? doc_date;
  int? page_number;
  String images;

  Documents ( this.doc_titles,this.doc_url, this.doc_date,this.page_number, this.images);


  static List<Documents> doc_list = [
    Documents(
      "CHAPTER A: THE SEVEN DIMENSION OF APPLIED BEHAVIOR ANALYSIS",
    "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABILITY-Chapter%20A%20-%20Measurement%20(RBT%20Task%20List).pdf?alt=media&token=aaf506bf-bdcd-4b48-b348-e89a8019adbe",
     "Jun 20, 2023", 
     30,
     "assets/images/aba.jpeg",
     ),
      Documents(
      "CHAPTER B: MEASUREMENT",
      "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABILITY-Chapter%20A%20-%20Measurement%20(RBT%20Task%20List).pdf?alt=media&token=aaf506bf-bdcd-4b48-b348-e89a8019adbe",
     "Jun 20, 2023", 
     24,
     "assets/images/measure.png",
     ),
      Documents(
      "CHAPTER C: ASSESSMENTS",
      "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABILITY-Chapter%20B-%20ASSESSMENT%20(RBT%20Task%20List).pdf?alt=media&token=0f449169-21a8-407d-96b0-e78f17231af1",
     "Jun 20, 2023", 
     18,
     "assets/images/assessment.png",
     ),
      Documents(
      "CHAPTER D: SKILLS ACQUISITION PART 1",
    "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABILITY-Chapter%20C%20-%20SKILL%20ACQUISITION%20%E2%80%9CPART%20%201%E2%80%9D%20(RBT%20Task%20List).pdf?alt=media&token=ad3b2fea-54e0-4ed5-973e-aecf35a7a844",
     "Jun 20, 2023", 
     15,
     "assets/images/skillone.png",
     ),
      Documents(
      "CHAPTER E: SKILLS ACQUISITIONS PART 2",
      "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABILITY-Chapter%20C%20-%20SKILL%20ACQUISITION%20%E2%80%9CPART%20%202%E2%80%9D%20(RBT%20Task%20List).pdf?alt=media&token=e95e403d-fec4-4bf0-a64c-747830da0a97",
     "Jun 20, 2023", 
     15,
     "assets/images/skilltwo.png",
     ),
      Documents(
      "CHAPTER F: BEHAVIOUR REDUCTION",
      "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABILITY-Chapter%20D%20-%20BEHAVIOR%20REDUCTION%20(RBT%20Task%20List).pdf?alt=media&token=41cdb19d-858b-40f1-b0e0-9ee6ff9a677b",
     "Jun 20, 2023", 
     17,
     "assets/images/behavior.png",
     ),
      Documents(
      "ABA GLOSSARY",
      "https://firebasestorage.googleapis.com/v0/b/quizee-759e9.appspot.com/o/pdfs%2FABA%20GLOSSARY.pdf?alt=media&token=8ede013c-eb18-4569-9d17-b949b983f51c",
     "Jun 20, 2023", 
      21,
      "assets/images/glossary.png",
     ),
  ];
}