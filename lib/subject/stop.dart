import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/text_style/text_styles.dart';

class Stop extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Stop();
  }
}

class _Stop extends State<Stop> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع الوقف إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ عرف الوقف مع ذكر أنواعه ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ عرف وقف الإبدال، وما هي موارده ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ ماهي الموارد التي لا يؤدي الوقف الى تغيير آخر الكلمة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4 / فكك الآيات التالية عند الوقف عليها : ( وَاليَومِ المَوعُودِ ، وُلَيالٍ عَشرٍ ، يَـٰـأَيَّـتُهَا النَّفسُ المُطمَئِنَّةُ ، ألَم يَجِدكَ يَتِيمًا فَئَـاوَىٰ ، إِنَا أَنزَلنَاهُ فِي لَيلَةِ القَدر ) ؟""",
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
          'images/stop.jpg',
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
                "الوقف",
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
                          """هو قطع الصوت لتجديد النفس بنية إستئناف القراءة ،  أي لا يجوز للقارئ التنفس بين كلمتين حال الوصل . والوقف يكون أما نهاية الآيات أو وسطها حيث علامات الوقف وشرح كل علامة نهاية القرآن الكريم .""",
                          style: myStyle),
                      Text(
                        """الوقف على أواخر الكلمات له ثلاث أنواع :  """,
                        style: myStyle,
                      ),
                      Text(
                        """أولًا - وقف الإسكان :- """,
                        style: detailsTextStyle,
                      ),
                      Text(
                        """هو الوقف الذي يقتضي تسكين الحرف الأخير .""",
                        style: myStyle,
                      ),
                      Text(
                        """1- إذا كان الحرف الأخير متحرك بالفتح أو الكسر أو الضم .""",
                        style: myStyle,
                      ),
                      Text(
                        """( الكَوثَرَ )   عند الوقف ( الكَوثَر )""",
                        style: myStyle,
                      ),
                      Text(
                        """( هُوَ )   عند الوقف ( هُو )""",
                        style: myStyle,
                      ),
                      Text(
                        """( هِيَ )   عند الوقف ( هِي )""",
                        style: myStyle,
                      ),
                      Text(
                        """( رَبَّهُ )   عند الوقف ( رَبَّه )""",
                        style: myStyle,
                      ),
                      Text(
                        """2- إذا كان الحرف الأخير منون بتنوين الرفع أو الجر .""",
                        style: myStyle,
                      ),
                      Text(
                        """( بَصِيرٌ )    عند الوقف ( بَصِير )  """,
                        style: myStyle,
                      ),
                      Text(
                        """( كُتُبٍ )   عند الوقف ( كُتُب )""",
                        style: myStyle,
                      ),
                      Text(
                        """ثانيًا - الوقف بدون تغيير :- """,
                        style: detailsTextStyle,
                      ),
                      Text(
                        """هو الوقف الذي لا يؤدي الى تغيير في آخر الكلمة .""",
                        style: myStyle,
                      ),
                      Text("""1- إذا كان الحرف الأخير ساكن .""",
                          style: myStyle),
                      Text(
                        """( لَا تَذَر )  ( سُطِحَت )  ( تَقهَر ) """,
                        style: myStyle,
                      ),
                      Text(
                        """2- إذا كان الحرف الأخير حرف مد .""",
                        style: myStyle,
                      ),
                      Text(
                        """( أَنزَلنَا )  ( قَامُواْ )  ( رَبِي )""",
                        style: myStyle,
                      ),
                      Text(
                        """ثالثًا - وقف الإبدال :- """,
                        style: detailsTextStyle,
                      ),
                      Text(
                        """هو الوقف الذي يقتضي تبديل الحرف الأخير من الكلمة .""",
                        style: myStyle,
                      ),
                      Text(
                        """1- التاء المربوطة ( ة ) تبدل هاء ساكنة مع حذف حركة التاء .""",
                        style: myStyle,
                      ),
                      Text(
                        """( صَلَاةَ )   عند الوقف ( صَلَاه )""",
                        style: myStyle,
                      ),
                      Text(
                        """( رَحمَةٌ )   عند الوقف ( رَحمَه )""",
                        style: myStyle,
                      ),
                      Text(
                        """( نِعمَةٌَ )   عند الوقف ( نِعمَه )""",
                        style: myStyle,
                      ),
                      Text(
                        """2- إبدال تنوين النصب الف مدي .""",
                        style: myStyle,
                      ),
                      Text(
                        """( هُدًى )   عند الوقف ( هُدَىٰ )""",
                        style: myStyle,
                      ),
                      Text(
                        """( سَمَاءً )   عند الوقف ( سَمَاءا )""",
                        style: myStyle,
                      ),
                      Text(
                        """(  مَاءً )   عند الوقف (  مَاءَا )""",
                        style: myStyle,
                      ),
                      Text("""( نِدَاءً )   عند الوقف ( نِدَاءَا )""",
                          style: myStyle),
                      Text("""( غَفُورًاً )   عند الوقف ( غَفُورَا )""",
                          style: myStyle)
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
