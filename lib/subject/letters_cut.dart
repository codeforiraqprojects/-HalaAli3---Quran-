import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class LettersCut extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LettersCut();
  }
}

class _LettersCut extends State<LettersCut> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع الحروف المقطعة إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ماذا نعني بالحروف المقطعة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ حروف ( نقص عسلكم ) كم حركة تقرأ ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ ما هي السور التي تحتوي حروف مقطعة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ كيف نقرأ الحروف التي تنتهي بالهمزة مع المثال ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5/ كيف تقرأ ( طس ، المص ، حم ) مع مراعاة مد الحركات ؟""",
                  style: examTextStyle,
                ),
              ],
            )
          ]));
        });
  }

  var myStyle = TextStyle(fontSize: 20.0, color: Colors.white);
  var size = 20.0;

  void sizeFontUp() {
    setState(() {
      size++;
      myStyle = TextStyle(fontSize: size, color: Colors.white);
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
        Image.asset('images/cut.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("الحروف المقطعة", style: appBarTextStyle),
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
                        """هي الحرف أو الحروف التي تبدأ بها ( 29 ) سورة من سور القرآن بعد البسملة ونطق الحروف بأسمائها ساكنة الآخر مع مراعاة ما يحدث من أحكام أي نطق كل حرف بمفرده ومن أجل ذلك سميت بالحروف المقطعة .""",
                        style: myStyle,
                      ),
                      Text(
                        """هذه الحروف عددها ( 14 ) حرف وتقسم من حيث المد الى أربع أقسام :""",
                        style: myStyle,
                      ),
                      Text(
                        """1- ( الألف ) ما لا يمد ولا يقبل المد .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- ( حا ، يا ، طا ، ها ، را  ) ما يمد مدًا طبيعيًا مقداره حركتين ، خمسة أحرف مجموعة في عبارة حي طهر .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- ( نون ، قاف ، صاد ، عين ، سين ، لام ، كاف ، ميم ) ما يمد مدًا لازمًا مقداره ست حركات ، سبعة أحرف مجموعة في عبارة نقص عسلكم .""",
                        style: myStyle,
                      ),
                      Text(
                        """4- ( العين ) ما يمد مقدار ست حركات أو أربع حركات والست حركات هو المقدم  وسبب انفراد العين بالوجهين عن أخواتها  لان الياء فيها حرف لين وليس حرف مد .""",
                        style: myStyle,
                      ),
                      Text(
                        """كيفية نطق الحروف المقطعة :""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """1- الم :- تنطق ( ألف ) بدون مد ، ( لاااااام ) مقدار ست حركات مع الإدغام المتماثل للميم ، ( مييييييم) مقدار ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- الر :- تنطق ( ألف ) بدون مد ، ( لَاااااام ) مد مقدار ست حركات ، ( رَا ) مد مقدار حركتان .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- كهيعص :- تنطق ( كَااااااف ) مد مقدار ست حركات ، ( هَا ) مد مقدار حركتان ، ( يَا ) مد مقدار حركتان ، ( عَيييين ) مد مقدار أربع أو ست حركات ، ( صَاااااا ) مد مقدار ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """4- يس :- تنطق ( يَا ) مد مقدار حركتان ، ( سِيييييين ) مد مقدار ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """5- طسم :- تنطق ( طَا ) مد مقدار حركتان ، ( سِيييييين ) مد مقدار ست حركات ، ( مِييييييم ) مد مقدار ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """6- حم عسق :- تنطق ( حَا ) مد مقدار حركتان ، ( مِييييييم ) مد ست حركات ، ( عَيييين ) مد أربع أو ست حركات ، ( سيييييين ) مد ست حركات ، ( قَااااااف ) مد ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """7- ن :- تنطق ( نوووووون ) مد مقدار ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """8- طه :- ( طَا ) مد مقدار حركتان ، ( هَا ) مد مقدار حركتان .""",
                        style: myStyle,
                      ),
                      Text(
                        """9- ص :- تنطق ( صااااااد ) مد ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """10- ق :- تنطق ( قااااااف ) مد مقدار ست حركات .""",
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة :- الحروف الخمسة التي تنتهي بالهمزة (حاء ، ياء ، طاء ، طاء ، راء ) لا تلفظ الهمزة ، مثلًا نقول ( حا ) ولا نقول ( حاء ) وكذلك باقي الحروف .""",
                        style: myStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child:Align(
                    alignment: Alignment.center,
                    child:  RaisedButton(
                      padding:
                      EdgeInsets.only(left: 50, right: 50, top: 5, bottom: 5),
                      child: Text(
                        'إختبر نفسك ',
                        style: TextStyle(fontSize: 25),
                      ),
                      textColor: Colors.white,
                      color: Color(0xFFD06C66),
                      elevation: 10,
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        _shwoExamesheet();
                      },
                    ),
                  )
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
