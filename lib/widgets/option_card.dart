import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard(
      {super.key,
      required this.option,
      required this.color,
      required this.onTap});
  final String option;
  final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        child: ListTile(
          title: Text(
            option,
            textAlign: TextAlign.left,
            style: GoogleFonts.poppins(
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
