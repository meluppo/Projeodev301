import 'options.dart';
import 'questions.dart';

class QuizManager4 {
  QuizManager4() {
    _questions.add(Question(
        'GORA filminde sürekli "Bir cisim yaklaşıyor efendim" diyen karakterin adı nedir?',
        [
          options('Komutan logar', 0),
          options('Tihulu', 10),
          options('Pilekumat Onur', 0),
          options('Ceku', 0),
        ]));

    _questions.add(Question(
        'Ölümlü Dünya filminde "Baba benim galetamın şişi yok!" diyen karakterin adı nedir?',
        [
          options('Serbest', 0),
          options('Arif', 0),
          options('İlhami', 0),
          options('Zafer', 10),
        ]));
    _questions.add(Question('Star Wars Filmlerinin çekiliş sırası nasıldır?', [
      options('1-2-3-4-5-6-7-8-9', 0),
      options('9-8-7-6-5-4-3-2-1', 0),
      options('4-5-6-1-2-3-7-8-9', 10),
      options('7-8-9-4-5-6-3-2-1', 0),
    ]));

    _questions.add(Question(
        'AROG filminde penaltıyı kurtaran karakteri canlandıran kimdir?', [
      options('Onur Alıç', 0),
      options('Murat Kolsuz', 0),
      options('Özkan Uğur', 10),
      options('Can Beceriksiz', 0),
    ]));

    _questions.add(Question(
        'Star Wars Filminde Seçilmiş Kişi olarak nitelendirilen daha sonra karanlık tarafa geçen karakter kimdir?',
        [
          options('Obi-Wan Kenobi', 0),
          options('Ahsoka Tano', 0),
          options('Kit Fisto', 0),
          options('Anakin Skywalker', 10),
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
