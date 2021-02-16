import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeapp/page/biltekquiz.dart';
import 'package:projeapp/page/dizifquiz.dart';
import 'package:projeapp/page/mathquiz.dart';

import 'genelkquiz.dart';

void gotoQuizPage1(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => QuizPage1()));
}

void gotoQuizPage2(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => QuizPage2()));
}

void gotoQuizPage3(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => QuizPage3()));
}

void gotoQuizPage4(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => QuizPage4()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0C8E6C9),
      appBar: AppBar(
        title: Text(
          'les Quizerables',
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
            "Sınarken Eğlendiren les Quizerables'e Hoş Geldiniz",
            style: GoogleFonts.raleway(
                textStyle: TextStyle(
              fontSize: 20,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('images/soruisareti.png'),
            width: 220,
            height: 220,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text('Kategorinizi Seçerek Quizinize Başlayabilirsiniz',
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(
                        fontSize: 25,
                        color: Colors.teal,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            onPressed: () {
              gotoQuizPage1(context);
            },
            textColor: Color(0xAA212121),
            color: Color(0xAA009688),
            child: Text('Bilişim Teknolojileri',
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontSize: 36.8,
                  ),
                )),
          ),
          Container(padding: EdgeInsets.all(10)),
          RaisedButton(
            onPressed: () {
              gotoQuizPage2(context);
            },
            textColor: Color(0xAA212121),
            color: Color(0xAA009688),
            child: Text('       Genel Kültür      ',
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontSize: 37,
                  ),
                )),
          ),
          Container(padding: EdgeInsets.all(10)),
          RaisedButton(
            onPressed: () {
              gotoQuizPage3(context);
            },
            textColor: Color(0xAA212121),
            color: Color(0xAA009688),
            child: Text('        Matematik       ',
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontSize: 37,
                  ),
                )),
          ),
          Container(padding: EdgeInsets.all(10)),
          RaisedButton(
            onPressed: () {
              gotoQuizPage4(context);
            },
            textColor: Color(0xAA212121),
            color: Color(0xAA009688),
            child: Text('        Dizi & Film        ',
                style: GoogleFonts.comfortaa(
                  textStyle: TextStyle(
                    fontSize: 37,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
