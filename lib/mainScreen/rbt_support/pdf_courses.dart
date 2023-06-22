import 'package:flutter/material.dart';

import 'package:quizee/mainScreen/rbt_support/model_pdf_courses.dart';
import 'package:quizee/mainScreen/rbt_support/reader_screen.dart';

class PdfCourses extends StatefulWidget {
  const PdfCourses({super.key});

  @override
  State<PdfCourses> createState() => _PdfCoursesState();
}

class _PdfCoursesState extends State<PdfCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text("ABA COURSES"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: Documents.doc_list
                    .map((doc) => ListTile(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ReaderScreen(doc)));
                          },
                          title: Text(
                            doc.doc_titles!,
                            style: TextStyle(
                                fontSize: 20,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Text("${doc.page_number!} Pages"),
                          trailing: Text(
                            doc.doc_date!,
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(doc.images),
                            radius: 60,
                          ),
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
