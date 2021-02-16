import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeapp/qservice/biltekmanager.dart';
import 'package:projeapp/qservice/questions.dart';

import 'sonuc.dart';

class QuizPage1 extends StatefulWidget {
  @override
  _QuizPage1State createState() => _QuizPage1State();
}

class _QuizPage1State extends State<QuizPage1> {
  QuizManager1 _manager = QuizManager1();

  List<Widget> getOptions(Question question) {
    List<Widget> optionButtons = [];
    for (int i = 0; i < question.option.length; i++) {
      optionButtons.add(FlatButton(
        onPressed: () {
          _manager.nextQuestion(_manager.getCurrentQuestion().option[i].score);

          if (_manager.isFinished()) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Sonuc(
                      score: _manager.getTotalScore(),
                    )));
          }

          setState(() {});
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.indigoAccent,
          ),
          child: Text(
            '${_manager.getCurrentQuestion().option[i].text}',
            textAlign: TextAlign.left,
            style: GoogleFonts.oxygen(
              textStyle: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ));
    }
    return optionButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C8E6C9),
      appBar: AppBar(
        title: Text(
          'Soru ${_manager.getCurrentId()} / ${_manager.totalQuestionNumber()} ',
          style: GoogleFonts.oswald(
              textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: 4,
                  fontSize: 28,
                  fontWeight: FontWeight.bold)),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(30),
          child: Text(
            "Konu: Bilişim Teknolojileri",
            style: GoogleFonts.raleway(
                textStyle: TextStyle(
              fontSize: 20,
              letterSpacing: 5,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal, Colors.limeAccent],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  '${_manager.getCurrentQuestion().text}',
                  style: GoogleFonts.ubuntuMono(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: getOptions(_manager.getCurrentQuestion())),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
