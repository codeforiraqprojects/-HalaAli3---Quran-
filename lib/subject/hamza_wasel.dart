import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran/text_style/text_styles.dart';

class HamzaWasel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HamzaWasel();
  }
}

class _HamzaWasel extends State<HamzaWasel> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع همزة الوصل إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ما هو الفرق بين همزة الوصل وهمزة القطع ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ اذكُر حُكم الإبتداء بهمزة الوصل مع الأسماء ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ اذكُر حُكم الإبتداء بهمزة الوصل مع الحروف ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ فكك الكلمات التالية وبين حركة همزة الوصل عند الإبتداء مع السبب : ( ٱقضُواْ ، ٱضطُرَّ ، ٱلصَّـٰـلِحَـٰـتِْ ، ٱلحَجُّ ، ٱطمِس ، ٱمْرَأَة ) . ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5/ فكك الكلمات التالية و استخرج الحروف الصامتة ، وهل تلفظ همزة الوصل : ( وقَالُواْ ٱتَّخَذَ ، وَإِذَا ٱنقَلَبُواْ ، قَالَ ٱذهَب ، عَلّىٰ ٱلمُؤمِنِينَ ، و ٱزدَادُوا ، فٱَنصُرنَا ) . """,
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
        Image.asset('images/hamza.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
                "همزة الوصل",
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
                        """هي الهمزة التي تثبت في الإبتداء وتسقط في حالة الوصل ، وقد سميت همزة الوصل لأن يتوصل بها الى النطق بالحرف الساكن الواقع بداية الكلمة لأن النطق به متعذر والأصل في الإبتداء أن يكون بحرف متحرك .  وتُحَرَّك حسب نوع الكلمة هذا في حالة الإبتداء ، اما في حالة وصل الكلمة بما قبلها تسقط همزة الوصل لفظًا لأن ما قبلها حينئذٍ يكون متحركًا .""",
                        style: myStyle,
                      ),
                      Text("""همزة الوصل مع الأفعال :-""",
                          style: detailsTextStyle),
                      Text(
                        """توجد همزة الوصل في الفعل الماضي وفعل الأمر .  ففي الماضي تكون في الخماسي منه وكذلك في السداسي ( ٱصْطَفَى ، ٱبْتُلِيَ ، ٱسْتَسْقَى ، ٱسْتُحْفِظُواْ ) ، وفي الأمر تكون في صيغة الثلاثي والخماسي والسداسي  (ٱدْع ، ٱضْرِبَْ ، ٱذْهَبْ ، ٱنْظُرْ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """عند الإبتداء بمثل هذه الأفعال لابد أن تُحّرَّك همزة الوصل وتعتمد حركتها على الحرف الثالث من الفعل :""",
                        style: myStyle,
                      ),
                      Text(
                        """1- إذا كان الحرف الثالث من الفعل مضموم فهمزة الوصل تحرك بالضم .""",
                        style: myStyle,
                      ),
                      Text(
                        """(  ٱنْظُر ، ٱدْعُ  )       تقرأ (  اُدعُ ، اُنظُر  ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- إذا كان الحرف الثالث من الفعل مفتوحًا أو مكسورًا تكسر همزة الوصل . """,
                        style: myStyle,
                      ),
                      Text(
                        """( ٱذْهَبْ ، ٱضْرِبُ )   تقرأ ( اِذهَبُ ، اِضرِب ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """أما في حالة الوصل :     ( وَ ٱصطَنَعتُكَ لِنَفسِي )   تقرأ   ( وَص + طَ + نَع + تُ + كَ + لِ + نَف + سِي ) .""",
                        style: myStyle,
                      ),
                      Text(
                          """هناك أفعال خمسة رغم الحرف الثالث مضموم لكن تكسر همزة الوصل عند الإبتداء ( اِقضُواْ ، اِبنُواْ ، اِمشُواْ ، اِئتُواْ ، اِمضُواْ ) .""",
                          style: myStyle),
                      Text("""همزة الوصل مع الاسماء :-""",
                          style: detailsTextStyle),
                      Text(
                        """إذا بدأ الكلام بأحد هذه الأسماء تحرك همزة الوصل بالكسر لفظًا . """,
                        style: myStyle,
                      ),
                      Text(
                        """تقع همزةُ الوصل في سبع أسماء في اللغة العربية ، وهذه الأسماء هي:""",
                        style: myStyle,
                      ),
                      Text(
                        """1_ ٱبن /   مثل ( عِيسَى ٱبۡنَ مرۡيَمَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """2_ ٱبنة /   مثل ( وَمريَمَ ٱبۡنَتَ عِمۡرَان ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """3_ ٱمرؤ /   مثل ( إِنِ ٱمۡرُؤٌ هَلَكَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """4_ ٱمرأة /   مثل ( وَإِنِ ٱمۡرَأَةٌ خَافَت ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """5_ ٱثنين /   مثل ( ثَانِيَ ٱثۡنَيْنَِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """6_ ٱثنتين/   مثل ( نِسَاءً فوۡقَ ٱثۡنَتَيْنِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """7_ ٱسم/   مثل ( وَٱذۡكُرُوا ٱسۡمَ اللَّهِ عَلَيۡهِ ) .""",
                        style: myStyle,
                      ),
                      Text("""همزة الوصل مع الحروف :-""",
                          style: detailsTextStyle),
                      Text(
                        """همزة الوصل تدخل على حرف اللام فقط ( لام التعريف ) ، عند الإبتداء بالأسماء المعرفة أي بداية الأسم ( ٱل التعريف ) المكونة من همزة الوصل ولام التعريف حينئذٍ تحرك همزة الوصل بالفتح .""",
                        style: myStyle,
                      ),
                      Text(
                        """ٱلسَّمَـاء     تقرأ  ( اَلسَّمَـاء ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ٱلأَرض     تقرأ  ( اَلأَرض ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """أما عند الوصل تلفظ فقط لام التعريف اذا كانت قمرية ولا تلفظ ايضًا اذا كانت لام شمسية .""",
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة : همزة القطع تلفظ أينما وجدت وسط الكلام أو بدايته أو نهايته ( إِذَا جَاءَ ، يَستَهزءُون ) .""",
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
