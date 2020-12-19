import 'package:flutter/material.dart';
import 'package:ftask2/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

void launch1() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoPage(),
    );
  }
}

// ignore: must_be_immutable
class DemoPage extends StatelessWidget {
  launchURL() {
    launch('https://linux.org');
  }

  var tit = InkWell(
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      height: 50,
      width: 55,
      decoration: BoxDecoration(
        //border: Border.all(color: Colors.black),
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/tit.jpg'),
        ),
      ),
    ),
    onTap: main,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        leading: tit,
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Linux Mobile",
              style: GoogleFonts.dancingScript(
                color: Colors.white,
                fontSize: 50,
              ),
            ),
          ],
        ),
        actions: <Widget>[tit],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
              alignment: Alignment.center,
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.black),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/1234.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 50),
              width: 300,
              child: Text(
                "Are you sure you want to visit Linux homepage?",
                textAlign: TextAlign.center,
                style: GoogleFonts.specialElite(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              onPressed: launchURL,
              child: Text(
                'YES',
                textAlign: TextAlign.center,
                style: GoogleFonts.specialElite(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              height: 50,
            ),
            RaisedButton(
              color: Colors.black,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
              onPressed: main,
              child: Text(
                'NO',
                textAlign: TextAlign.center,
                style: GoogleFonts.specialElite(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
