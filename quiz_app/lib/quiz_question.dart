class QuizQuestion {
  const QuizQuestion(this.prompt, this.answers);
  final String prompt;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
