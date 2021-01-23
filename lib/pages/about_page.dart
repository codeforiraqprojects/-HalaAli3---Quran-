import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('عن التطبيق', style: TextStyle(fontSize: 22)),
          backgroundColor: Color(0xFFAA929C),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              ListView(
                padding: EdgeInsets.all(15),
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Code For Iraq',
                        style:
                            TextStyle(fontSize: 25, color: Colors.blueAccent),
                      ),
                      Image.asset(
                        'images/code.jpg',
                        width: 140,
                        height: 120,
                      ),
                    ],
                  ),
                  Text(
                    'مبادرة مختصة في مجال البرمجة لتطوير المجتمع والتعليم المجاني وتوفير التطبيقات الخدمية مبادرة من الشعب الى الشعب .',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                  ),
                  Container(
                      height: 150,
                      width: 370,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              tileMode: TileMode.mirror,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                const Color(0xFF697C9A),
                                const Color(0xFFA299AD),
                                const Color(0xFFAA929C),
                                const Color(0xFFCBB0B9),
                              ]),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100))),
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "البرمجة و التصميم:- هالة علي",
                              style: typeTextStyle,
                            ),
                            Text(
                              ' طالبة وأستاذة في معهد فضة القرآني و HR داخل المبادرة .',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'معهد فضة القراني النسوي',
                        style: TextStyle(fontSize: 25, color: Colors.green),
                      ),
                      Image.asset(
                        'images/fda.jpg',
                        width: 90,
                        height: 90,
                      ),
                    ],
                  ),
                  Text(
                    'معهد نسوي الكتروني يهتم بتعليم الدروس القرآنية والحوزوية يتكون من خمسة مراحل : المرحلة الاولى والتي سوف تكون بين أيديكم في هذا التطبيق ، والمرحلة الثانية تختص بأحكام التجويد وصفات ومخارج الحروف ، والثالثة دروس  علوم القران ، والرابعة مفردات المعاني ، والخامسة التفسير . فضلًا عن المسابقات ودروس الحفظ . ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('تأسيس وادارة : الميرزا ام علي البهادلي .',
                      style: TextStyle(fontSize: 20))
                ],
              )
            ],
          ),
        ));
  }
}
