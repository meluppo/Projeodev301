import 'options.dart';
import 'questions.dart';

class QuizManager2 {
  QuizManager2() {
    _questions.add(Question(
        'Bugüne kadar uzayda en uzun kalan insan kaç gün kalmıştır? ', [
      options('120', 0),
      options('437', 10),
      options('23', 0),
      options('201', 0),
    ]));

    _questions.add(Question('Ihlara Vadisi hangi ildedir?', [
      options('Aksaray', 10),
      options('Elazığ', 0),
      options('Yozgat', 0),
      options('Sivas', 0),
    ]));
    _questions.add(Question(
        'Aşağıdakilerden hangisi vatandaşlık görevlerimizden değildir?', [
      options('Vergi Vermek ', 0),
      options('Askere Gitmek', 0),
      options('Oy Kullanmak', 0),
      options('Suç işlememek', 10),
    ]));

    _questions.add(Question('Bir at kaç beygir gücüne denktir?', [
      options('1', 0),
      options('17', 10),
      options('2', 0),
      options('8', 0),
    ]));

    _questions.add(Question('Ağrı dağı kaç metre yüksekliğe sahiptir? ', [
      options('5551', 0),
      options('6631', 0),
      options('5137', 10),
      options('2358', 0),
    ]));

    _questions.add(Question('Hangi il daha doğudadır?', [
      options('Yozgat', 0),
      options('Kayseri', 0),
      options('Sivas', 0),
      options('Elazığ', 10),
    ]));

    _questions.add(Question('Karlofça Antlaşması hangi yılda imzalanmıştır? ', [
      options('1923', 0),
      options('1736', 0),
      options('1699', 10),
      options('1888', 0),
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
