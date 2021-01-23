import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class YaaLong extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _YaaLong();
  }
}

class _YaaLong extends State<YaaLong> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع الأصوات الطويلة إليكم بعض الأسئلة التي تساعدكم على فهم الدرس .',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ ماذا نقصد عندما نقول حروف المد تقرأ بضربتين وتكتب بمقطع واحد ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ يأتي الألف المدي بشكل واحد أم عدة اشكال ؟ ابحث بالقرءان عن خمس كلمات بالألف المدي وبأشكال متعددة ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3 / ما هو الفرق في نطق ( صَلَوٰةِ ) و ( صَلَوَ ٰ تِ  ) هناك إختلاف ماهو ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ ما الفرق بين الأصوات القصيرة والأصوات الطويلة حسب فهمك للدروس ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5 / أعطي مثال لكل من الياء المدية والواو المدي ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س6 / ( يُوحَى ) ( يُوحِى ) هناك إختلاف في نطق الياء الآخرية أحدهما تلفظ ياء والأخرى ألف ، هل يمكنك التفريق ، مع ذكر السبب ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س6/ فكك الكلمات التالية وفق فهمك للأصوات الطويلة : ( يَا ثَارَ ، وَارِدُها ، وَيُقِيمُونَ ، يُوَارِىَ ، حَيَوٰةِ ، ءَادَم ) ؟""",
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
        Image.asset('images/yaa.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("الياء المدية", style: appBarTextStyle),
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
                        """هي ثالث حروف المد وتكون خالية من الحركة أو العلامة وقبلها حرف مكسور وتشكل الياء مع الحرف المكسور مقطع واحد من الكلمة ، تقرأ بضربتين وتكتب بمقطع واحد .""",
                        style: myStyle,
                      ),
                      Text(
                        """أما قولنا تكتب بمقطع واحد أي كلما يأتي الحرف مكسور وبعده ياء ساكنة يكتب الحرفان مع بعض عند التفكيك لسهولة تعلم قراءته وإليكم البيان بالمثال التالي : """,
                        style: myStyle,
                      ),
                      Text(
                        """نُوحِيهَا   ( نُو + حِيــ + هَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """سَبِيلِ   ( سَ + بِيـ + لِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """أُعِيذُهَا   ( أُ + عِي + ذُ + هَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """تُرِيدُونَ   ( تُ + رِ + دُو + نَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """وأما قولنا تقرأ بضربتين أي انها تقرأ بمقدار أو بزمن حرفين  وذلك لان الصوت الطويل عبارة عن حرفين ويجب إعطاء كل حرف حقه ووقته لذلك أصبحت مقدار ضربتين .""",
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة : هناك ياء آخرية لا يوجد فوقها ألف خنجري لنقرأها ألف ولا يوجد تحتها نقطتين لنقرأها ياء ، هنا نعتمد على حركة الحرف الذي قبلها إذا كان مفتوح إذن هي ألف وإذا كان مكسور إذن هي ياء . ويمكن التفريق بينهما أيضًا من خلال حركتها إذا كانت متحركة إذن هي ياء لأن ذكرنا إن الألف لا يقبل الحركة فوقه . نلاحظ الفرق في النطق بين :""",
                        style: myStyle,
                      ),
                      Text(
                        """يُوصِى   ( يُو + صِي ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """يُوصَى   ( يُو + صَا ) .""",
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
