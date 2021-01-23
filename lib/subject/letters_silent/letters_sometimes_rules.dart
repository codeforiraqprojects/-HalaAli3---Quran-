import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class LettersSometimesRules extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LettersSometimesRules();
  }
}

class _LettersSometimesRules extends State<LettersSometimesRules> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع الحروف الصامتة إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ماهي الحروف الصامتة وإلىٰ كم قسم تقسم ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ ماهي موارد الحروف الصامتة التي لاتنطق احيانا عددها مع مثال لكل واحد منها ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3 / حروف المد الثلاث (أ ، ؤ ، ئ )التي فوقها علامة السكون الدائري إلىٰ أي قسم من أقسام الحروف الصامتة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4 / فكك الكلمات التالية حسب قواعد التفكيك مع بيان الحروف الصامتة دائمًا والحروف الصامتة أحيانًا ( عَلَىٰ ٱلمَلَائِكَةََ ، فَوقَكُمُ ٱلطُّورُ ، تُـبَـوِّئُ ٱلمُؤمِنِينَ ، مِشكَوٰةٍ ، مَنَوٰةِ ، كَفَرُواْ ، أَفَإِيْن ، مَتَـىٰ ، كَـبِيرًا ) ؟""",
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
        Image.asset(
          'images/somtimes.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fitHeight,
        ),
        Container(
          color: Colors.black.withOpacity(0.7),
        ),
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
              Text("الحروف الصامتة أحيانًا", style: appBarTextStyle),
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
                        """ثَانِيًا :- الحروف الصامتة أحيانًا :    """,
                        style: detailsTextStyle,
                      ),
                      Text(
                        """المورد الأول :- همزة الوصل الواقعة في وسَط الكلام .""",
                        style: myStyle,
                      ),
                      Text(
                        """بِرَبِّ ٱلنَّاس   ( بِ + رَب + بِ ن + نَاس ) .  """,
                        style: myStyle,
                      ),
                      Text(
                        """وَ ٱضرِب   ( وَض + رِب ) .  """,
                        style: myStyle,
                      ),
                      Text(
                        """المورد الثاني :- الحروف المدية الواقعة وسط الكلام وبعدها همزة وصل . """,
                        style: myStyle,
                      ),
                      Text(
                        """فِي ٱلأَرضِ   ( فِ ل + ءَر + ضِ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """عَلَىٰ ٱللهِ   ( عَ + لَ ل + لَا + هِ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """ذُو ٱلجَلالِ   ( ذُ ل + جَ + لَا + لِ ) .  """,
                        style: myStyle,
                      ),
                      Text(
                        """المورد الثالث :- الأَلف الواقعة وسط الكلام وفوقها علامة السكون البيضوي .  """,
                        style: myStyle,
                      ),
                      Text(
                        """أَنَا خَيرٌ مِنه   ( أَ نَ + خَي + رُن + مِن+ ه ُ) .    """,
                        style: myStyle,
                      ),
                      Text(
                        """المورد الرابع :- أَلف تنوين النصب عند الوصل . """,
                        style: myStyle,
                      ),
                      Text(
                        """عَلِيمًا حَكِيمًا   ( عَ + لِي + مَن + حَ + كِي + مَا ) .   """,
                        style: myStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
                      padding: EdgeInsets.only(
                          left: 50, right: 50, top: 5, bottom: 5),
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
                        _showExamSheet();
                      },
                    ),
                  )),
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
