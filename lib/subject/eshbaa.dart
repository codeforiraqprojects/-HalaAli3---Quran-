import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class Eshbaa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Eshbaa();
  }
}

class _Eshbaa extends State<Eshbaa> {
  void _shwoExamesheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع الإشباع إليكم بعض الأسئلة التي تساعدكم على فهم الدرس . ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ عدد الموارد التي لا تشبع  فيها هاء الضمير ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س2/ يستثنى من موارد الإشباع كلمة واحدة ماهي ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ يستثنى من موارد عدم الإشباع كلمة واحدة ماهي ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س4/ لماذا لا تشبع هاء الضمير في الكلمات التالية : ( دَعَاهُ ، لَهُ الحَمدِ ، خُذُوهُ ، أَرسِلهُ ) ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5/ لماذا لا تنطق قواعد الإشباع على الكلمات التالية : ( فَوَاكِه ، سَفِهَ ، حِطَّةٌ ، يَرضَهُ ، فِيهِ مُهَانًا ) ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س6/ فكك الكلمات التالية وبين موارد الإشباع : ( بِهِ ى يَستَهزِءُونَ  ، إِنَّهُ و لَيَئُوسٌ ، عَرشُهُ و عَلَى  المَاء ، لِصَاحِبِهِ ى لَا تَحزَن ) ؟""",
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
        Image.asset('images/eshbaa.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
                "الإشباع",
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
                        """الإشباع :- هو إطالة الحركة فينتج عنها حرف المد .""",
                        style: myStyle,
                      ),
                      Text(
                        """في اللغة العربية هناك هاء الضمير التي تعود للمفرد المذكر الغائب تلحق آخر الكلمة وهذه الهاء زائدة وليست من أصل الكلمة . اذا كانت حركة الهاء ضمة تشبع لتصبح واو مدية وأما اذا كانت حركة الهاء كسرة عندها تشبع لينتج عنها ياء مدية ، يلحق هاء الضمير المضمومة واو صغيرة وهاء الضمير المكسورة ياء صغيرة معكوسة للدلالة على الإشباع . """,
                        style: myStyle,
                      ),
                      Text(
                        """مقدار الأشباع هو مد الحركة مقدار حركتان لفظًا لا خطًا و وصلًا لا وقفًا ، و شرط الإشباع أن تكون هاء الضمير بين حرفين متحركين .""",
                        style: myStyle,
                      ),
                      Text(
                        """لَــهُ و مَا       تقرأ  ( لَ + هُو + مَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """إِنَّــهُ و هُوَ     تقرأ ( إِن + نَ + هُو + هُ + وَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """بِــهِ ى صَدرُكَ     تقرأ  ( بِ + هِي + صَد + رُ + كَ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """رَجعِهِ ى لَقَادِر    تقرأ ( رَج + عِ + هِي + لَ + قَا + دِر ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """موارد عدم الإشباع :-""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """1- إذا جاء قبل هاء الضمير حرف ساكن:""",
                        style: myStyle,
                      ),
                      Text(
                        """( مِنهُ )   حرف النون الساكن . """,
                        style: myStyle,
                      ),
                      Text(
                        """2- إذا جاء بعد هاء الضمير همزة وصل:""",
                        style: myStyle,
                      ),
                      Text(
                        """( رَبِّهِ الأَعلَىٰ )    همزة الوصل .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- إذا جاء قبل هاء الضمير حرف مد:""",
                        style: myStyle,
                      ),
                      Text(
                        """( أَبــَاهُ )   الألف حرف مد .""",
                        style: myStyle,
                      ),
                      Text(
                        """لا يمكن  تطبيق قواعد الإشباع :-""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """1- اذا كانت الهاء من أصل الكلمة : ( نَفقَهُ ) الهاء من أصل الكلمة .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- كلمة ( يَرضَهُ ) قد أُستُثنِيَت من حكم الإشباع : لإن أصل الكلمة يَرضَاهُ لَكم حذف الف المد لسبب أعرابي .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- كلمة ( فِيهِ مُهَانًا ) قد أُستُثنِيَت من حكم عدم الإشباع : بالرغم من سبق الهاء بحرف مد لكنها تمد مقدار حركتين . """,
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
