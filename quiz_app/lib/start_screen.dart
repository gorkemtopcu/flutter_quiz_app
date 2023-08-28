import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            height: 200,
            color: const Color.fromARGB(160, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            "Learn Fluter the fun way!",
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 194, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // const StyledText.header(text: "Learn Flutter the fun way!"),
          const SizedBox(height: 30),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 66, 41, 133)),
            icon: const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
            label: const Text(
              "Start Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
