import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/text_style/text_styles.dart';

class Letters extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Letters();
  }
}

class _Letters extends State<Letters> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'نتعلم خلال هذه المرحلة قراءة القرآن الكريم بالطريقة الصحيحة ونعتمد على تبسيط قراءة الكلمات من خلال تفكيكها إلى مقاطع وحروف ومن هنا جاءت تسميتها بالقراءة التفكيكية أو البسيطة وقراءة هذه المقاطع كلًا على حدة مع ضبط الحركات والعلامات الملازمة لها .   ',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
            Text(
              """والهدف من هذه الدراسة قراءة القرآن الكريم قراءة صحيحة وسليمة وفق قواعد وأُسس علمية واضحة .""",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ]));
        });
  }

  var myStyle = TextStyle(
    fontSize: 20.0,
    color: Colors.white,
  );
  var size = 20.0;

  void sizeFontUp() {
    setState(() {
      size++;
      myStyle = TextStyle(
        fontSize: size,
        color: Colors.white,
      );
    });
  }

  void sizeFontDown() {
    setState(() {
      size--;
      myStyle = TextStyle(fontSize: size, color: Colors.white);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Image.asset('images/letters.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
        Container(color: Colors.black.withOpacity(0.7),),

        Positioned(
          top: 25,
          left: 10,
          child: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 40, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 60,
              ),
              Text(
                "الحروف الهجائية",
                style: appBarTextStyle,
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        """اللغة العربية هي لغة القرآن الكريم وأصغر بنية تكوينية لهذه اللغة هي الحروف ، وعليه يعد الحرف أصغر وحدة بنائية لهذا الصرح الرباني العظيم كتاب الله المنزل على رسوله المرسل محمد ( صلى الله عليه واله وسلم ) .""",
                        style: myStyle,
                      ),
                      Text(
                        'تتكون اللغة العربية من ٢٩ حرف مع إضافة الهمزة لها ، في السابق لم تكن هناك صورة للهمزة البعض كان يكتبها الف والبعض لم تكن لديه صورة لها ، حين ذاك تسمىٰ الحروف الأبجدية التي عددها ٢٨ حرف ،الىٰ أن في كتاب العين للفراهيدي وضعت صورة للهمزة التي تشبه رأس حرف العين وذلك لقرب مخرج الحرفين .',
                        style: myStyle,
                      ),
                      Card(
                          margin: EdgeInsets.only(top: 10, bottom: 10),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          color: Colors.white70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'أشكال الحروف',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.pink,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '( ء،ا،ب،ت،ث،ج،ح،خ،د،ذ،ر،ز،س،ش،ص،ض.ع،غ،ف،ق،ك،ل،م،ن،ع،ه،و،ي)',
                                style:TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'أسماء الحروف',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.pinkAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '( همزة،ألف،باء،تاء،ثاء،جيم،حاء،خاء،دال،ذال،راء،زاي،سين،شين،صاد،ضاد،عين،غين،فاء،قاف،كاف،لام،ميم،نون،هاء،واو،ياء)',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                      Text(
                        'ملاحظة : قد تأتي الهمزة حرة على السطر أو على كرسي ( الواو أو الألف أو الياء إن كانت وسطية أو آخرية ) كما في الاشكال التالية ( ء ، أ، ؤ، ئ ، ئـ) وحروف لغتنا العربية لها أصوات خاصة بها وعلامات.',
                        style: myStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:20,bottom: 20),
                child:  Align(
                  alignment: Alignment.center,
                  child:RaisedButton(
                    padding:
                    EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
                    child: Text(
                      'التمهيد',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: Colors.white,
                    color: Color(0xFFD06C66),
                    elevation: 10,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    onPressed: () {
                      _showExamSheet();
                    },
                  ) ,
                ),
              ),





              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 30,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: sizeFontUp,
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        onTap: sizeFontDown,
                        child: Icon(
                          Icons.remove,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
