import 'package:projeapp/qservice/options.dart';
import 'package:projeapp/qservice/questions.dart';

class QuizManager1 {
  QuizManager1() {
    _questions.add(Question(
        "Nvidia'nın genel merkezi Silikon Vadisi'nin hangi şehrinde yer alır?",
        [
          options('Palo Alto', 0),
          options('Santa Clara', 10),
          options('Cupertino', 0),
          options('Mountain View', 0),
        ]));

    _questions.add(
        Question('Python dilinde hangi ifade "Hello World" stringini verir?', [
      options('console.log("Hello World")', 0),
      options('echo"Hello World"', 0),
      options('print("Hello World")', 10),
      options('printf("Hello World")', 0),
    ]));
    _questions.add(Question('"LCD" kısaltmasının açılımı nedir?', [
      options('Long Continuous Design', 0),
      options('Language Control Design', 0),
      options('Last Common Difference', 0),
      options('Liquid Crystal Display', 10),
    ]));

    _questions.add(Question('.rs hangi ülkenin en iyi domainidir?', [
      options('Sırbistan', 10),
      options('Romanya', 0),
      options('Rusya', 0),
      options('Çek Cumhuriyeti', 0),
    ]));

    _questions.add(
        Question('Bilgisayarın beyni olarak bilinen komponent hangisidir? ', [
      options('Anakart', 0),
      options('Klavye', 0),
      options('Merkezi İşlem Birimi', 10),
      options('Görüntü İşlem Birimi', 0),
    ]));

    _questions.add(Question(
        "Aşağıdakilerden hangisi Apple'in kurucularından biri değildir?", [
      options('Ahmet Melih Doğan', 10),
      options('Steve Jobs', 0),
      options('Ronal Wayne', 0),
      options('Steve Wozniak', 0),
    ]));

    _questions.add(Question('Standart windows klavyesinde kaç tuş vardır? ', [
      options('105', 0),
      options('67', 0),
      options('104', 10),
      options('108', 0),
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
