import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quran/text_style/text_styles.dart';

class ThirdShort extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ThirdShort();
  }
}

class _ThirdShort extends State<ThirdShort> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع الأصوات القصيرة إليكم بعض الأسئلة التي تساعدكم على فهم الدرس .',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/  ماهي الأصوات القصيرة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ كم ضربة تقرأ الأصوات القصيرة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ كم مقطع تكتب الأصوات القصيرة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ فكك الكلمات التالية حسب الطريقة التي تعلمتها سابقًا : ( جُعِلَ ، قُتِلَ ، خُلِقَِ ، فُتِحَِ ) ؟""",
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
        Image.asset('images/third.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("حركة الكسرة", style: appBarTextStyle),
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
                          """هي حركة توضع تحت الحرف على شكل خط مائل عند النطق بالحرف المكسور يتم خفض الفك السفلي للإسفل . تقرأ بضربة واحدة وتكتب بمقطع واحد . """,
                          style: myStyle,
                        ),
                        Text(
                          """بيان التعريف:- أما قولنا تكتب بمقطع واحد أي كل حرف مكسور يكتب لوحده وإليكم الأمثلة :""",
                          style: myStyle,
                        ),
                        Text(
                          """بِهِ   ( بِ + هِ ) .  """,
                          style: myStyle,
                        ),
                        Text(
                          """يُرِدِ   ( يُ + رِ + دِ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """عَمَلِهِ   ( عَ + مَ + لِ + هِ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """لِيُرِيَهُ   ( لِ + يُ + رِ + يَ + هُ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """وأما قولنا تقرأ بضربة واحدة أي انها تقرأ بمقدار أو بزمن حرف واحد .""",
                          style: myStyle,
                        ),
                        Text(
                          """أي ان كل حرف مكسور يكتب لوحده ويقرأ لوحده .""",
                          style: myStyle,
                        ),
                      ],
                    )),
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
