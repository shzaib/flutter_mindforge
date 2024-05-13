import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.nextQuestion});
  final VoidCallback nextQuestion;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(10)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Text(
          "Next Question",
          style: GoogleFonts.poppins(
            color : Colors.white
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
