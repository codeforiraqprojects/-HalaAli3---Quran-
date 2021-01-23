import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/subject/meet_static.dart';
import 'package:quran/subject/shada_sign.dart';
import 'package:quran/subject/shortsound/firstshort.dart';
import 'package:quran/subject/shortsound/secondshort.dart';
import 'package:quran/subject/shortsound/thirdshort.dart';
import 'package:quran/subject/stop.dart';
import 'package:quran/text_style/text_styles.dart';
import 'package:quran/subject/eshbaa.dart';
import 'package:quran/subject/hamza_wasel.dart';
import 'package:quran/subject//letter_leen.dart';
import 'package:quran/subject//lettere.dart';
import 'package:quran/subject/letters_cut.dart';
import 'package:quran/subject//letters_silent/letter_always_bases.dart';
import 'package:quran/subject//letters_silent/letters_sometimes_rules.dart';
import 'package:quran/subject//longsound/alflong.dart';
import 'package:quran/subject//longsound/wawlong.dart';
import 'package:quran/subject//longsound/yaalong.dart';
import 'package:quran/subject//static/circulstatic.dart';
import 'package:quran/subject//static/openstatic.dart';
import 'package:quran/subject//static/ovalstatic.dart';
import 'package:quran/subject/tafkem_tarkek.dart';
import 'package:quran/subject/tennoyen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: RadialGradient(colors: [
          const Color(0xFF697C9A),
          const Color(0xFFA299AD),
          const Color(0xFFAA929C),
          const Color(0xFFCBB0B9),
        ], center: Alignment.bottomCenter, radius: 2, tileMode: TileMode.clamp),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40, right: 50),
            child: Text('مفتاح الدخول للقراءة الصحيحة', style: appBarTextStyle),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 60, left: 15, right: 15, bottom: 10),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Expanded(
                  flex: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('الحروف', style: typeTextStyle),
                        ),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              CustomContainer('images/letters.jpg', () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Letters()));
                              }),
                              SizedBox(
                                width: 7,
                              ),
                              CustomContainer('images/cut.jpg', () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LettersCut()));
                              }),
                              SizedBox(
                                width: 7,
                              ),
                              CustomContainer('images/leen.jpg', () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LetterLeen()));
                              }),
                              SizedBox(
                                width: 7,
                              ),
                              CustomContainer('images/always.jpg', () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LettersAlwaysBases()));
                              }),
                              SizedBox(
                                width: 7,
                              ),
                              CustomContainer('images/somtimes.jpg', () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            LettersSometimesRules()));
                              }),
                              SizedBox(
                                width: 7,
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('الأصوات القصيرة و الطويلة',
                              style: typeTextStyle),
                        ),
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  CustomContainer('images/first.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                FirstShort()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/second.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondShort()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/third.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ThirdShort()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/alf.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => AlfLong()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/waw.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => WawLong()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/yaa.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => YaaLong()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                ])),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('العلامات', style: typeTextStyle),
                        ),
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  CustomContainer('images/open.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OpenStatic()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/oval.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                OvalStatic()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/circle.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CircleStatic()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/shada.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ShadaSign()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/tanween.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Tennoyen()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                ])),
                        Align(
                          alignment: Alignment.topRight,
                          child: Text('المتفريقات', style: typeTextStyle),
                        ),
                        Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  CustomContainer('images/eshbaa.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Eshbaa()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/tfkem.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TefkemTarkek()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/hamza.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HamzaWasel()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/meet.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MeetStatic()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  CustomContainer('images/stop.jpg', () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Stop()));
                                  }),
                                  SizedBox(
                                    width: 7,
                                  ),
                                ])),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

class CustomContainer extends StatelessWidget {
  Function onTap;
  String image;

  CustomContainer(this.image, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 140,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          splashColor: Color(0xFFAA929C),
          onTap: onTap,
        ));
  }
}
