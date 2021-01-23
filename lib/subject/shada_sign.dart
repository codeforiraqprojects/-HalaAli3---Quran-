import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class ShadaSign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ShadaSign();
  }
}

class _ShadaSign extends State<ShadaSign> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع علامة الشدة إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ماذا نقصد بالشدة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ ما هو سبب استخدام الشدة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ كيف تلفظ الشدة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4 / فكك الكلمات التالية : ( كَأَنَّمَا ، یَصَّعَّدَُ ، وَ كَــأَيِّن ، فَأَرَدتُّ ، يَظُنُّونَ ، يُـبَـيِّـتُونَ ، حُصِّـلَ ) .""",
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
          'images/shada.jpg',
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
              Text("علامة الشدة", style: appBarTextStyle),
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
                        """هي علامة توضع فوق الحرف شكلها يكون على شكل رأس حرف السين الصغير (ــّـ) ،  معنى التشديد  حرفين من جنس واحد الأول ساكن والثاني متحرك أُدْغِما فأصبحا حَرفًا واحدًا مشددًا أي مضاعفًا ، وتكون الشدة بهذا الشكل (جَهَنَّمَ) كما في العلامة التي فوق حرف النون .""",
                        style: myStyle,
                      ),
                      Text(
                        """قَالَ رَبِّ   ( قَا + لَ + رَب + بِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """إِن يَمَسَّكَ   ( إِن + يَ + مَس + سَ + كَ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """لَـٰـكِنَّ أَكثَرَ   ( لَا + كِن + نَ + أَك + ثَ + رَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ثُمَّ أَدبَرَ يَسعّىٰ   ( ثُم + مَ + أَد + بَ + رَ  + يَس + عَىٰ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """كما موضح أمامكم  تفكيك الشدة لحالها الأصلي تصبح حرفين فالساكن يقرأ مع الحرف المتحرك الذي يسبقه كما مر عليكم بموضوع السكون والحرف المتحرك يقرأ لوحده او مع الحرف الساكن الذي بعده كما في المثال :""",
                        style: myStyle,
                      ),
                      Text(
                        """يَشَّقَّق   ( يَش + شَق + قَق ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """يُوَجَّـهــهُ   ( يُ + وَج + جِهــ + هُ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """طَلَّقتُمُوهُنَّ   ( طَل + لَق + تُ + مُو + هُن + نَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """سبب إستخدام الشدة هو إلتقاء حرفين ممتتاليين متشابهين ويجب أن ينطق الحرف المشدد بقوة وحدة .""",
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
