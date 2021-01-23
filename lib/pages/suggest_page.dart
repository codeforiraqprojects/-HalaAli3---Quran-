import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class SuggestPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SuggestPage();
  }
}

class _SuggestPage extends State<SuggestPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          const Color(0xFF697C9A),
          const Color(0xFFA299AD),
          const Color(0xFFAA929C),
          const Color(0xFFCBB0B9),
        ])),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'المقترحات',
                  style: appBarTextStyle,
                ),
                Text(
                  'إستفسار أو مقترح',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15, left: 25, right: 25, bottom: 27),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(225, 95, 27, 3),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    style: TextStyle(fontSize: 22),
                                    textDirection: TextDirection.rtl,
                                    controller: name,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.person),
                                        border: InputBorder.none,
                                        labelText: 'الأسم الثلاثي',
                                        labelStyle: TextStyle(fontSize: 22)),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    style: TextStyle(fontSize: 22),
                                    textDirection: TextDirection.rtl,
                                    controller: name,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.edit),
                                        border: InputBorder.none,
                                        labelText: 'الموضوع',
                                        labelStyle: TextStyle(fontSize: 22)),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[200]))),
                                  child: TextField(
                                    maxLines: 3,
                                    style: TextStyle(fontSize: 22),
                                    textDirection: TextDirection.rtl,
                                    controller: name,
                                    decoration: InputDecoration(
                                        icon: Icon(Icons.subject),
                                        border: InputBorder.none,
                                        labelText: 'النص',
                                        labelStyle: TextStyle(fontSize: 22)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 90, right: 90),
                      child: RaisedButton(
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        child: Text(
                          'إرسال ',
                          style: TextStyle(fontSize: 25),
                        ),
                        elevation: 10,
                        textColor: Colors.white,
                        color: Color(0xFFAA929C),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                )),
          ),
        ]),
      ),
    );
  }
}
