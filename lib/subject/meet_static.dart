import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/text_style/text_styles.dart';

class MeetStatic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeetStatic();
  }
}

class _MeetStatic extends State<MeetStatic> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع التقاء الساكنين إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ في الكلمات التالية جاز التقاء الساكنين وضح السبب: ( ٱلحَاقَّةُ ، يُرَاءُون ، وَ ٱلفَتحُ ، ٱلصَّاخَّةُ ) ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ ( مِن ثَمَرَةٍ ) ( مِنَ ٱلثَّمَرَات ) ففك الجملتين مع بيان الفرق بينهم ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ فكك الكلمات التالية مع توضيح كيف تقرأ عند رفع التقاء الساكنين : ( يَهدِى ٱلقَومَ ، لا تَأكُلُواْ ٱلرِّبَوٰاْ ، إحدَى ٱلطَّائِفَتَينِ ) ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ فكك الكلمات التالية عند التقاء الساكنين ورفع التقاء الساكنين : ( خَيرًا ٱلوَصِيَّةُ ، أُوْلُواْ ٱلفَضلِ ، يُغنِيَهُمُ ٱلله ، يَومَئِذٍ ٱلمُستَقَر ، قُلِ ٱلأَنفّال ) ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5/ ( وَلَئِنِ ٱتَّبَعتَ ) ( وَلَئِن أَتَيتَ ) ففك الجملتين مع بيان الفرق بينهم ؟""",
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
          'images/meet.jpg',
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
                "التقاء الساكنين",
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
                          """عند تجاور الحروف يحدث أن يلتقيا حرفان ساكنان وفي لغتنا العربية لغة القرآن الكريم جاز التقاء الساكنين في كلمة واحدة وذلك في حالتين :""",
                          style: myStyle),
                      Text(
                        """1- إذا كان الحرف الأول حرف مد أو حرف لين .""",
                        style: myStyle,
                      ),
                      Text(
                        """أَتُحَاجُّونِي ( أَ + تُ + حَاج + جُو + نِي )""",
                        style: myStyle,
                      ),
                      Text(
                        """ٱلضَّالِّيِنَ ( الض + ضَال + لِي + نَ )""",
                        style: myStyle,
                      ),
                      Text(
                        """2- أن يكون الحرف الثاني ساكن بسبب الوقف .""",
                        style: myStyle,
                      ),
                      Text(
                        """( خَوفٍ ) عند الوقف خَوف""",
                        style: myStyle,
                      ),
                      Text(
                        """لكن عدم جواز التقاء الساكنين في كلمتين و حينئذ لا بد  من رفع التقاء الساكنين بالتخلص من أحدهما وذلك أما بحذف الساكن الأول أو تحريكه مع حذف همزة الوصل لفظًا ، ملاحظة أن ذلك يكون في حالة الوصل فقط .""",
                        style: myStyle,
                      ),
                      Text("""أولًا - حذف الساكن الأول :-  """,
                          style: detailsTextStyle),
                      Text(
                        """حذف حرف المد لفظًا اذا جاء بعده همزة وصل . ( إذَا  ٱلشَّمسُ كُوِّرت )""",
                        style: myStyle,
                      ),
                      Text(
                        """ تلفظ   ( إِ + ذَ ش + شَمــ + سُ ) .""",
                        style: myStyle,
                      ),
                      Text("""ثانيًا - تحريك الساكن الأول :-""",
                          style: detailsTextStyle),
                      Text(
                        """1- تحريك الساكن الأول بالكسر :- """,
                        style: myStyle,
                      ),
                      Text(
                        """أ - إذا كان الساكن الأول نهاية الكلمة الأولى والساكن الثاني في بداية الكلمة الثاني التي مبدوءة بهمزة وصل :""",
                        style: myStyle,
                      ),
                      Text(
                        """( قُل ٱدعُواْ الله )   تقرأ ( قُ + لِ د + عُواْ ) """,
                        style: myStyle,
                      ),
                      Text(
                        """ب - نون التنوين الساكنة تحرك بالكسر في حالة الوصل فقط إذا وقع بعد التنوين همزة وصل :""",
                        style: myStyle,
                      ),
                      Text(
                        """( عَادً ٱلأُولَىٰ )""",
                        style: myStyle,
                      ),
                      Text(
                        """تقرأ ( عَا + دَ + نِ ل + أُو + لَىٰ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """( عُزَيرٌ ٱبنُ ٱلله ) """,
                        style: myStyle,
                      ),
                      Text(
                        """تقرأ ( عُ + زَي + رُ + نِ ب + نُ ل + لَا  + ه ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- تحريك الساكن الأول بالفتح :- """,
                        style: myStyle,
                      ),
                      Text(
                        """أ - النون في من الجارة إذا وقع بعدها همزة وصل :""",
                        style: myStyle,
                      ),
                      Text(
                        """( مِن الشَاهِدِينَ ) """,
                        style: myStyle,
                      ),
                      Text(
                        """تقرأ    ( مِ + نَ ل + شَا + هِــ + دِي + نَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """( مِن اللهِ ) """,
                        style: myStyle,
                      ),
                      Text(
                        """تقرأ    ( مِ + نَ ل + لَا + هِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ب - ياء المتكلم إذا وقع بعدها همزة وصل :""",
                        style: myStyle,
                      ),
                      Text(
                        """( اذكُرُواْ نِعمَتِيَ التِي ) .""",
                        style: myStyle,
                      ),
                      Text("""3- تحريك الساكن الأول بالضم :-""",
                          style: myStyle),
                      Text(
                        """أ - واو لين الجمع اذا وقع بعدها همزة وصل :""",
                        style: myStyle,
                      ),
                      Text(
                        """( فَتَمَنَّوُاْ ٱلمَوتَ إن كُنتُم صَادِقِين ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ب - ميم الجماعة اذا وقع بعدها همزة وصل :""",
                        style: myStyle,
                      ),
                      Text(
                        """( وَسَخَّرَ لَكُمُ ٱلَّيل والنَّهَار ) .""",
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
