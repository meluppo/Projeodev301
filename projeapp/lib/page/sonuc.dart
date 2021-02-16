import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sonuc extends StatefulWidget {
  final int score;
  Sonuc({Key key, this.score}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<Sonuc> {
  @override
  Widget build(BuildContext context) {
    if (widget.score > 20) {
      return Scaffold(
        backgroundColor: Color(0xff0C8E6C9),
        appBar: AppBar(
          title: Text(
            'Sonuç ',
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
              "TESTİN SONUNA GELDİNİZ!!!",
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
              image: AssetImage('images/basaril.png'),
              width: 300,
              height: 300,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                  child: Text(
                'Başarılı Oldunuz, Puanınız:',
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                        fontSize: 48,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF303F9F))),
              )),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  '${widget.score}',
                  style: GoogleFonts.firaSans(
                      textStyle: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Color(0xAA303F9F))),
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Color(0xff0C8E6C9),
        appBar: AppBar(
          title: Text(
            'Sonuç ',
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
              "TESTİN SONUNA GELDİNİZ!!!",
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  fontSize: 20,
                  letterSpacing: 3,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
              image: AssetImage('images/fail.png'),
              width: 200,
              height: 200,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  'Başarısız Oldunuz! Puanınız:',
                  style: GoogleFonts.ubuntu(
                      textStyle: TextStyle(
                          fontSize: 45,
                          fontStyle: FontStyle.italic,
                          color: Color(0xFF303F9F))),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                  child: Text(
                '${widget.score}',
                style: GoogleFonts.firaSans(
                    textStyle: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        color: Color(0xAA303F9F))),
              )),
            ),
          ],
        ),
      );
    }
  }
}
