import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionWidget extends StatelessWidget {
  final String questions;
  final int indexAction;
  final int totalQuestion;
  const QuestionWidget(
      {super.key,
      required this.questions,
      required this.indexAction,
      required this.totalQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        'Question ${indexAction + 1}/$totalQuestion : $questions',
        style: GoogleFonts.poppins(
          fontSize: 24,
          color: Colors.black87,
        ),
      ),
    );
  }
}
