import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:async';

import 'package:quran/pages/tabbar.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Amiri',
      ),
      builder: (BuildContext context, Widget child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Builder(
            builder: (BuildContext context) {
              return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
                child: child,
              );
            },
          ),
        );
      },
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 10),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => TabBarViewPage()),
            (_) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 250),
                child: Text(
                  "{ وَلَقَدۡ يَسَّرۡنَا ٱلقُرءَانَ لِلذكۡرِ فَهَلۡ مِن مُّدَّكِر }ٍ",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
                ),
              ),
              Image.asset(
                'images/logo.png',
                height: 150,
                width: 150,
              ),
              Text(
                'مَرحبًا بِكم',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
