import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/question_summary_info.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});
  final List<QuestionSummaryInfo> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: data.correctAnswer == data.userAnswer
                        ? const Color.fromARGB(255, 110, 214, 255)
                        : const Color.fromARGB(255, 250, 117, 255),
                    child: Text(
                      (data.questionIndex + 1).toString(),
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          color: const Color.fromARGB(255, 60, 11, 112)),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data.question,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: const Color.fromARGB(200, 255, 255, 255)),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          data.userAnswer,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: const Color.fromARGB(255, 250, 117, 255)),
                        ),
                        Text(
                          data.correctAnswer,
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: const Color.fromARGB(255, 110, 214, 255)),
                        ),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
