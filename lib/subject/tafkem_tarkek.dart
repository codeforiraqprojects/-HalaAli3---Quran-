import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class TefkemTarkek extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TefkemTarkek();
  }
}

class _TefkemTarkek extends State<TefkemTarkek> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع التفخيم و الترقيق إليكم بعض الأسئلة التي تساعدكم على فهم الدرس  ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ حكم لام لفظ الجلالة إذا تقدمها كسر عارض ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ ما هي موارد تفخيم لام لفظ الجلالة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ كيف تفكك لفظ الجلالة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ فكك الكلمات التالية مع بيان موارد التفخيم والترقيق و ذكر السبب : ( اللهُ يَعلَم ، ءَايَـٰـتِ الله ، رَبَّنَا الله ، أَفِي اللهِ شَك ، عَدُوًّا لِلّٰه ، خَيرًا الله ) ؟""",
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
          'images/tfkem.jpg',
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
              Text(
                "التفخيم و الترقيق",
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
                      Text("""تفخيم لام لفظ الجلالة""",
                          style: detailsTextStyle),
                      Text(
                        """معنى التفخيم :- لغة التسمين ، وإصطلاحًا سمنٌ يدخل على الحرف عند النطق به فيملأ الفم بصداه. والتفخيم والتغليظ والتسمين ألفاظ مترادفة بمعنى واحد .""",
                        style: myStyle,
                      ),
                      Text(
                        """موارد تفخيم لام لفظ الجلالة : """,
                        style: myStyle,
                      ),
                      Text(
                        """1- لفظ الجلالة إذا تقدمها فتح أو كان مبدوء بها .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  قُلْ هُوَ اللَّهُ أَحَدٌ  )   """,
                        style: myStyle,
                      ),
                      Text(
                        """(  اللَّهُ الصَّمَدُ ٌَ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """2- لفظ الجلالة إذا تقدمها ضم .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  نَصرُ اللهُ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """(  نَارُ اللَّهِ الْمُوقَدَةُ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """3- لفظ الجلالة إذا تقدمها ساكن قبله فتح .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  أَطَعنَا الله  ) """,
                        style: myStyle,
                      ),
                      Text(
                        """(  وَأَنَّهُ كَانَ يَقُولُ سَفِيهُنَا عَلَىٰ اللَّهِ شَطَطًا  )""",
                        style: myStyle,
                      ),
                      Text(
                        """4- لفظ الجلالة إذا تقدمها ساكن قبله ضم .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  قَالُواْ اللهُمَِّ  ) """,
                        style: myStyle,
                      ),
                      Text(
                        """(  أَنِ اعْبُدُوا اللَّهَ وَاتَّقُوهُ وَأَطِيعُونِ  ) """,
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة :- لفظ الجلالة ( الله ، اللهُم ) لا فرق بينهما من حيث التفخيم والترقيق ، و تفكيك لفظ الجلالة حسب قواعد التفكيك ( ال - لَا - ه ) ، اذن عليكم الأستماع لهذه الايات لإتقان اللفظ .""",
                        style: myStyle,
                      ),
                      Text("""ترقيق لام لفظ الجلالة""",
                          style: detailsTextStyle),
                      Text(
                        """معنى الترقيق :-  لغة التنحيف  وإصطلاحًا رقة تلحق الحرف عند النطق به فلا يمتلئ الفم بصداه .""",
                        style: myStyle,
                      ),
                      Text(
                        """موارد ترقيق لام لفظ الجلالة :-""",
                        style: myStyle,
                      ),
                      Text(
                        """1- لام لفظ الجلالة إذا تقدمها كسر أصلي .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  وَمَا النَّصْرُ إِلاَّ مِنْ عِندِ اللّهِ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """(  لِلّٰهِ مُلكُ السَّمَـٰـوَ ٰ تِ وَ الأَرض  )""",
                        style: myStyle,
                      ),
                      Text(
                        """(  قُلِ اللَّهُمَّ فَاطِرَ السَّمَاوَاتِ وَالْأَرٌْْضِ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """2- لام لفظ الجلالة إذا تقدمها ساكن قبله كسر .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  يَجزِي اللهْ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """(  وَيُنَجِّي اللَّهُ الَّذِينَ اتَّقَوا بِمَفَازَتِهِمْ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """3- لام لفظ الجلالة إذا تقدمها كسر عارض .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  قُلْ أَيُّ شَيْءٍ أَكْبَرُ شَهَادةً قُلِ اللّهِ شَهِيدٌ بِيْنِي وَبَيْنَكُمْ ) """,
                        style: myStyle,
                      ),
                      Text(
                        """(  لِمَ تَعِظُونَ قَوْمـًا اللّهُ مُهْلِكُهُ  )""",
                        style: myStyle,
                      ),
                      Text(
                        """وتُقرأ (قَوْمًا اللّهُ) --> (قَوْمَنِ الله) حيث أن التنوين عبارة عن نون ساكنة ، و اللام الأولى في لفظ الجلالة ساكنة أيضًا ، فحُرِّكت النون بالكسرة منعًا لالتقاء الساكنين ، و تبعًا لذلك تُقرأ لام لفظ الجلالة بالترقيق لأنها مسبوقة بكسرٍ عارض ، كذلك اللام المكسورة في الآية الأولى كسرت لرفع التقاء الساكنين . """,
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
                        _shwoExamesheet();
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
