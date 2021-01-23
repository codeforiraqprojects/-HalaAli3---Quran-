import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class LetterLeen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LetterLeen();
  }
}

class _LetterLeen extends State<LetterLeen> {
  void _showExamSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              child: ListView(padding: EdgeInsets.all(15), children: <Widget>[
            Text(
              'وبعد أن اكملنا موضوع حرفا اللين إليكم بعض الأسئلة التي تساعدكم على فهم الدرس .   ',
              style: titleExamTextStyle,
              textAlign: TextAlign.center,
            ),
            Padding(padding: EdgeInsets.all(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  """س1/ مامعنى اللين باللغة ؟ """,
                  style: examTextStyle,
                ),
                Text(
                  """س2/ ما هما حرفا اللين عددهما مع مثال لكل واحد منها ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س3/ كم مورد للياء في القران ، مع ذكر مثال ؟ """,
                  style: examTextStyle,
                ),
                Text(
                  """س4/ كم مورد للواو بالقران ، مع ذكر مثال ؟""",
                  style: examTextStyle,
                ),
                Text(
                  """س5/ فكك  الكلمات التالية مع إستخراج حروف اللين ( كَيفَ ، كَوثّرَ ، سَوفَ، لَيسَ ، أَينَ ) ؟""",
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
        Image.asset('images/leen.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("حرفا اللين", style: appBarTextStyle),
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
                        """اللين لغة :- هو ضد الخشونة وهو السهولة والتنعيم ، هناك حروف صفتها السهولة والتنعيم وخروجها من مخارجها بيسر وعدم كلفة ، فحرفا اللين هما حرفا الواو والياء الساكنتان المفتوح ما قبلهما . ( خَوف ـ صَيف ـ بَيت ـ لَيل ـ فَوق ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """إليكم بعض الأمثلة المفككة :""",
                        style: myStyle,
                      ),
                      Text(
                        """وُيلٌ   ( وَي + لُن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """يَومٍ   ( يَو + مِن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """عَينٌ   ( عَي + نُن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """كَيدًا   ( كَي + دَن ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """هناك ثلاث موارد لحرف الياء في القران : """,
                        style: myStyle,
                      ),
                      Text(
                        """1- ياء متحركة مثل ( يَمشُون ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- ياء ساكنة مفتوح ما قبلها (ياء لين ) مثل ( وَالصَّيف ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- ياء ساكنة مكسور ما قبلها ( الياء المدية ) مثل ( الهَالِكِين ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """و لحرف الواو ثلاث موارد أيضا  في القرآن : """,
                        style: myStyle,
                      ),
                      Text(
                        """1- واو متحركة مثل (وَسعت) .""",
                        style: myStyle,
                      ),
                      Text(
                        """2- واو ساكنة مفتوح ما قبلها (واو لين) مثل (خَوف) .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- واو ساكنة مضموم ما قبلها (الواو المدية) مثل (يتساءلُون) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة: هناك وجه اختلاف وتوافق بين حروف اللين وحروف المد ولايسع المقام لشرحها هنا وذلك لان هذا المرحلة تعليم القراءة الصحيحة فقط أما الأحكام الأكثر تفصيل تكون مع مرحلة أحكام التجويد وليس مع القراءة البسيطة .  """,
                        style: myStyle,
                      )
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
