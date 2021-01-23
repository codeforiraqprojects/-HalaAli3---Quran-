import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class AlfLong extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AlfLong();
  }
}

class _AlfLong extends State<AlfLong> {
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
        Image.asset('images/alf.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("الألف المدي", style: appBarTextStyle),
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
                        """هو أول حروف المد ويكون خالي من الحركة أو العلامة وقبله حرف مفتوح ويشكل الألف مع الحرف المفتوح مقطع واحد من الكلمة ، يقرأ بضربتين ويكتب بمقطع واحد . """,
                        style: myStyle,
                      ),
                      Text(
                        """أما قولنا  يكتب بمقطع واحد أي كلما يأتي الحرف المفتوح وبعده الف ساكن  يكتب الحرفان مع بعض عند التفكيك لسهولة تعلم قراءته وإليكم البيان بالمثال التالي :""",
                        style: myStyle,
                      ),
                      Text(
                        """قَالَ  ( قَا + لَ )    جَاءَ  ( جَا + ءَ ) .  """,
                        style: myStyle,
                      ),
                      Text(
                        """وأما قولنا يقرأ بضربتين أي انه يقرأ بمقدار أو بزمن حرفين وذلك لان الصوت الطويل عبارة عن حرفين ويجب إعطاء كل حرف حقه ووقته لذلك أصبحت مقدار ضربتين .""",
                        style: myStyle,
                      ),
                      Text(
                        """موارد الألف المدي :- يأتي الألف المدي على عدة أشكال وتبقى قراءته وكتابته بنفس الطريقة المذكور أعلاه فقط الإختلاف في الشكل .   """,
                        style: myStyle,
                      ),
                      Text(
                        """1- الألف الطويلة :- """,
                        style: myStyle,
                      ),
                      Text(
                        """ءَامَنَ   ( ءَا + مَ + نَ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """ءَاذَانِ   ( ءَا + ذَا + نِ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """2- الألف الخنجرية ولها أربع حالات :-""",
                        style: myStyle,
                      ),
                      Text(
                        """أ- تأتي الى جانب الحروف المفتوحة : """,
                        style: myStyle,
                      ),
                      Text(
                        """ذَ ٰ لِكَ   ( ذَ ٰ + لِ + كَ ) .    """,
                        style: myStyle,
                      ),
                      Text(
                        """صَلَوَ ٰ تِ   ( صَ + لَ + وَ ٰ + تِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ب- تأتي على الياء الوسطية : """,
                        style: myStyle,
                      ),
                      Text(
                        """ءَايَــٰتِ   ( ءَا + يَــٰـ + تِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """خَبِيثَــٰتُ   ( خَ + بِي + ثَــٰ + تُ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ج- تأتي على الياء الآخرية الغير منقوطة :""",
                        style: myStyle,
                      ),
                      Text(
                        """ ءَاتَىٰ   ( ءَا + تَىٰ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """هُدَىٰ   ( هُـ + دَىٰ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """د- تأتي على الواو مباشرة وهنا لا يلفظ الواو :  """,
                        style: myStyle,
                      ),
                      Text(
                        """صَلَوٰةِ   ( صَ + لا + ةِ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """زَكَوٰةِ   ( زَ + كَا + ةِ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة 1 : دائمًا ما يأتي قبل الألف حرف مفتوح ولا نرى عليه أحد الحركات الثلاث أو أحد العلامات ولا التنوين .""",
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة 2 : تأتي الهمزة المفتوحة بين حرف اللام وحرف الألف الساكن هنا الهمزة المفتوحة مع الألف الساكن صوت طويل مد طبيعي مقدار حركتين .""",
                        style: myStyle,
                      ),
                      Text(
                        """لَءَايَــٰت   ( لَ + ءَا + يَات ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """الءَاخِرةَ   (ال + ءَا + خِ + رَ + ةَ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """لَءَامُرَنَّهُم   ( لَ + ءَا + مُ + رَن + نَ + هُم ) .""",
                        style: myStyle,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
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
