import 'options.dart';
import 'questions.dart';

class QuizManager3 {
  QuizManager3() {
    _questions.add(Question("2'li tabanda 1+1 kaçtır?", [
      options('12', 0),
      options('10', 10),
      options('2', 0),
      options('4', 0),
    ]));

    _questions.add(Question('Pi sayısının ilk üç rakamı nedir?', [
      options('3.14', 10),
      options('3.16', 0),
      options('2.54', 0),
      options('3.30', 0),
    ]));
    _questions.add(Question('Hangi Yunan Alfabesi harfi toplamayı gösterir?', [
      options('Alfa', 0),
      options('Delta', 0),
      options('Sigma', 10),
      options('Omega', 0),
    ]));

    _questions.add(Question(
        '10 Liralık banknotun üstünde resmi olan matematikçimiz kimdir?', [
      options('Selahattin Becerikli', 0),
      options('Mimar Kemaleddin', 0),
      options('Cahit Arf', 10),
      options('El Cabir Bin Hayyam', 0),
    ]));

    _questions.shuffle();
    for (var question in _questions) {
      question.option.shuffle();
    }
  }

  List<Question> _questions = [];
  int _score = 0;
  int currentQuestionId = 0;
  void nextQuestion(score) {
    if (currentQuestionId < _questions.length) {
      _score += score;
      currentQuestionId++;
    }
    print(currentQuestionId);
  }

  int getTotalScore() => _score;
  int getCurrentId() => currentQuestionId + 1;
  int totalQuestionNumber() => _questions.length;
  bool isFinished() {
    return currentQuestionId >= _questions.length;
  }

  Question getCurrentQuestion() {
    print('getCurrentQuestion $currentQuestionId');
    if (currentQuestionId < _questions.length) {
      return _questions[currentQuestionId];
    } else {
      return Question('', []);
    }
  }
}
