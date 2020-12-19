import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:ftask2/linuxOP.dart';
import 'package:ftask2/nnn.dart';
import 'package:http/http.dart' as http;
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

web(xyz) async {
  var url = "http://13.232.152.185/cgi-bin/new.py?x=${xyz}"; //xyz=cal
  var response = await http.get(url); //response
  return (response.body);
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  String x;
  var t;
  var s = OrientationBuilder(
    builder: (context, orientation) {
      return Container(
        color: Colors.black,
        height: 300,
        width: orientation == Orientation.portrait ? 350 : 500,
        padding: EdgeInsets.fromLTRB(10, 20, 0, 50),
        child: Text(
          "> OUTPUT TO BE PRINTED",
          style: GoogleFonts.specialElite(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      );
    },
  );

  var ref = (IconButton(
      onPressed: main,
      icon: Icon(
        Icons.refresh,
        color: Colors.white,
      )));
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
    //onTap: videopl,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: ListView(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 50),
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
                color: Colors.grey.shade500,
                child: TextField(
                  onChanged: (value) {
                    //buffer
                    x = value; //date or cal
                  },
                  style: GoogleFonts.specialElite(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                  cursorColor: Colors.white,
                  autocorrect: false,
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    hintText: "Enter your Command",
                    hintStyle: TextStyle(
                      color: Colors.grey.shade200,
                    ),
                    hoverColor: Colors.black,
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.attach_money,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(height: 10),
              Column(children: <Widget>[
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: FlatButton(
                    //color: Colors.black,
                    onPressed: () async {
                      print(x);
                      t = await web(x); //cal or date

                      output(t);
                    },
                    child: Text(
                      "OUTPUT",
                      style: GoogleFonts.specialElite(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ]),
              Container(height: 10),
              s,
              /* Container(
                color: Colors.black,
                height: 300,
                width: 350,
                padding: EdgeInsets.fromLTRB(10, 20, 0, 50),
                child: Text(
                  "> OUTPUT TO BE PRINTED",
                  style: GoogleFonts.specialElite(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),*/
              Container(
                child: RaisedButton(
                  color: Colors.black,
                  onPressed: launch1,
                  child: Text(
                    "Goto Linux Website",
                    style: GoogleFonts.specialElite(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
