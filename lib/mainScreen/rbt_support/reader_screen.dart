// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quizee/mainScreen/rbt_support/model_pdf_courses.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {super.key});
  Documents doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(widget.doc.doc_titles!),
      ),
      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url!,),
        
      ),
    );
  }
}