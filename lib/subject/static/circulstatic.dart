import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class CircleStatic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CircleStatic();
  }
}

class _CircleStatic extends State<CircleStatic> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن أكملنا موضوع علامات السكون إليكم بعض الأسئلة التي تساعدكم على فهم الدرس .',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ما الفرق بين الحركة والعلامة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ ما هي علامات السكون ، مع ذكر دلالة كل علامة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3 / هناك ألفات سبعة وردت في القرآن الكريم فوقها السكون البيضوي إذكرها ، وهل تلفظ عند الوصل وعند الوقف ؟ """,
                  style: examTextStyle,
                ),
                Text(
                  """س4/ كيف يلفظ الحرف الساكن ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5/ اذكر الحروف التي يأتي فوقها السكون الدائري ؟ """,
                  style: examTextStyle,
                ),
                Text(
                  """س6 / فكك الكلمات التالية وفق فهمك لعلامات السكون . ( جِاْيءَ ، بِأييْد ، يَــٰـأُوْلِي ، أَنۡعمۡتُ عَلَيـۡـكُم ، وَ لَا تلۡــبِسُواْ ، قَوَارِيرَا۠  )""",
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
        Image.asset('images/circle.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("السكون الدائري", style: appBarTextStyle),
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
                        """هي علامة توضع فوق الحرف ( ه ) شكلها دائري وتدل هذه العلامة على أن الحرف لا يقرأ دائمًا تأتي هذه العلامة علىٰ حروف المد ( اْ ، وْ ،يْ )وعندها لا يقرأ الحرف دائمًا .""",
                        style: myStyle,
                      ),
                      Text(
                        """عند التفكيك يكتب الحرف الذي عليه سكون دائري إلى جانب الحرف المتحرك الذي قبله لكن لا يلفظ .""",
                        style: myStyle,
                      ),
                      Text(
                        """قَالُوا  ْ ( قَا + لُواْ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """خَلَواْ   ( خَ + لَواْ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """أَفَإِيْن   ( أَ + فَ + إِيْن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """أُوْلَــٰـئِـكَ   ( أُوْ + لَا + ئِـــ + كَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """( وَ  لَا  تَشتَرُواْ  بِئَايَـٰـتِي )    تفكيكها  :""",
                        style: myStyle,
                      ),
                      Text(
                        """( وَ + لَا + تَش + تَ + رُواْ + بِ  + ءَا + يَا + تِي ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """( وَ  أَوفُواْ  بِعَهدِي )    تفكيكها  :""",
                        style: myStyle,
                      ),
                      Text(
                        """( وَ + أو + فُواْ + بِ + عَهـ + دِي ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """وهذه اية قرانية فيها السكون الدائري حاول أن تقراها وتكتشف من خلال القراءة الحرف الذي عليه سكون دائري :""",
                        style: myStyle,
                      ),
                      Text(
                        """﴿یَـٰۤأَیُّهَا ٱلَّذِینَ ءَامَنُوا۟ ٱسۡتَعِینُوا۟ بِٱلصَّبۡرِ وَٱلصَّلَوٰةِۚ إِنَّ ٱللَّهَ مَعَ ٱلصَّـٰبِرِینَ﴾ [البقرة ١٥٣]""",
                        style: myStyle,
                      ),
                      Text(
                        """أعد القراءة عدة مرات بفتح المصحف لكي تتضح لك الحركات بشكل أفضل وإكتشف الحرف الذي عليه سكون دائري كيف لا يلفظ عند القراءة .""",
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
                        _showExamSheet();
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
                      )
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
