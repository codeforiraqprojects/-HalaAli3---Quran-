import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class Tennoyen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Tennoyen();
  }
}

class _Tennoyen extends State<Tennoyen> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع التنوين إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ماهو التنوين ماذا يقصد به ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ كم نوع للتنوين ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ اذكر الموارد الثلاث التي تحذف بها الألف بعد تنوين النصب ، مع ذكر مثال لكل مورد ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ فكك الآية القرآنية التالية حسب قواعد التفكيك (لِيُنفِقۡ ذُو سَعَةٍ مِّن سَعَتِهِ ۖ وَمَن قُدِرَ عَلَيۡهِ رزۡقُهُ فَلۡينۡفِِقۡ مِمَّا آتَاهُ اللَّهُ لَا يُكَلِّفُ اللَّهُ نَفۡسًا إِلَّا مَا آتَاهَاۚ سَيَجۡعَلُ اللَّهُ بَعۡدَ عُسۡرٍ يُسۡرًا ) سورة الطلاق آية 7 ؟""",
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
          'images/tanween.jpg',
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
                "التنوين",
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
                        """هو نون ساكنة زائدة تلحق آخر الأسم لفظًا لا خطًا و وصلًا لا وقفًا وللدلالة عليها نضاعف حركة الحرف الأخير .""",
                        style: myStyle,
                      ),
                      Text(
                        """يلحق التنوين بالأسماء وهو على ثلاث أنواع :""",
                        style: myStyle,
                      ),
                      Text(
                        """1- تنوين النصب .""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """النوع الاول من أنواع التنوين هو تنوين النصب أو تنوين الفتح وشكله فتحتان ، أي فتحتان صغيرتان توضعان فوق الحرف الأخير من الأسم . غالبًا ما يأتي مع تنوين النصب الف ( بَيتًا ، مَالًا ، قَلِيلًا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """عند الوصل لا تلفظ الالف :""",
                        style: myStyle,
                      ),
                      Text(
                        """( بَي + تَن ) ، ( مَا + لَن ) ،  ( قَ + لِي + لَن ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """عند الوقف لا تلفظ التنوين : """,
                        style: myStyle,
                      ),
                      Text(
                        """( بَي + تَا ) ، ( مَا + لَا ) ، ( قَ + لِي + لَا )  .""",
                        style: myStyle,
                      ),
                      Text(
                        """هناك ثلاث موارد تحذف بها الألف التي ترسم بعد تنوين النصب :-""",
                        style: myStyle,
                      ),
                      Text(
                        """أ- عندما ينتهي الإسم بتاء مربوطة :""",
                        style: myStyle,
                      ),
                      Text(
                        """سَنَةً   ( سَ + نَ + تَن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """رَحمَةً   ( رَح + مَ + تَن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ب- عندما ينتهي الإسم بالهمزة :""",
                        style: myStyle,
                      ),
                      Text(
                        """مَاءً   ( مَا + ءَن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """سَمَاءً   ( سَ + مَا + ءَن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ج- عندما ينتهي الإسم بالياء الغير منقوطة تكون كرسي للألف الخنجري :""",
                        style: myStyle,
                      ),
                      Text(
                        """هُدًى   ( هُ + دَن ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """مُسَمًّى   ( مُ + سَم + مَن ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """2- تنوين الرفع :""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """النوع الثاني من أنواع التنوين هو تنوين الرفع أو تنوين الضم وشكله ضمتان ، أي ضمتان صغيرتان توضعان فوق الحرف الأخير من الأسم .""",
                        style: myStyle,
                      ),
                      Text(
                        """عُزيرٌ   ( عُ + زَي + رُن ) """,
                        style: myStyle,
                      ),
                      Text(
                        """أُمَّــةٌ   ( أُم + مَ + تُن ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """َخَـٰـشِعَةٌ   ( خَا + شِ  + عَ + تُن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- تنوين الجر :""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """النوع الثالث من أنواع التنوين هو تنوين الجر أو تنوين الكسر وشكله كسرتان ، أي كسرتان صغيرتان توضعان فوق الحرف الأخير من الأسم .""",
                        style: myStyle,
                      ),
                      Text(
                        """غَفلَةٍ   (  غَف + لَ + تِن ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """حِسَابٍ   ( حِ + سَا + بِن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """بِغَضَبٍ   ( بِ + غَ + ضَ + بِن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """لاحظ أيها الطالب انك تلفظ الكلمة بالنون ولكنها مكتوبة بالتنوين .""",
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
