import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class LettersAlwaysBases extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LettersAlwaysBases();
  }
}

class _LettersAlwaysBases extends State<LettersAlwaysBases> {
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
        Image.asset('images/always.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("الحروف الصامتة دائمًا", style: appBarTextStyle),
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
                        "تحتوي اللغة العربية على حروف تكتب ولاتقرأ وتسمىٰ (الحروف الصامتة) هي ( ا، و ، ى , ل ) مجموعة في كلمة (والى ) . الحروف الصامتة على قسمين أو نوعين : 1-نوع لاينطق دائما . 2-ونوع لاينطق احيانا . لكل واحد منها أربعة موارد .",
                        style: myStyle,
                      ),
                      Text(
                        """أولًا :- الحروف الصامتة دائمًا :""",
                        style: detailsTextStyle,
                      ),
                      Text(
                        """المورد الأول (أ ، ؤ ، ئ ) :- إذا جاءت الهمزة فوق أو تحت حروف المد .""",
                        style: myStyle,
                      ),
                      Text(
                        """مُؤمِن   ( مُ ء + مِن )  الواو حرف صامت دائمًا """,
                        style: myStyle,
                      ),
                      Text(
                        """قُرِئَ   ( قُ+ رِ + ءَ )  الياء حرف صامت دائمًا """,
                        style: myStyle,
                      ),
                      Text(
                        """أَرضَ   (ءَر + ضَ )  الألف حرف صامت دائمًا  """,
                        style: myStyle,
                      ),
                      Text(
                        """المورد الثاني ( اْ ، وْ ، ىْ ) :- إذا جاءت علامة السكون الدائري فوق حروف المد . """,
                        style: myStyle,
                      ),
                      Text(
                        """أُْوْلِي  ( ءُ + لِي )  الألف و الواو حرفان صامتان دائمًا .""",
                        style: myStyle,
                      ),
                      Text(
                        """جِاْيءَ   (جي + ءَ )  الالف حرف صامت دائمًا .""",
                        style: myStyle,
                      ),
                      Text(
                        """بِأَييْدٍ   ( بِ + ءَي + دِن )  الالف والياء حرفان صامتان دائمًا .""",
                        style: myStyle,
                      ),
                      Text(
                        """المورد الثالث (وٰ ، ىٰ ) :- إذا جاء الألف الخنجري فوق حرف الواو والياء .  """,
                        style: myStyle,
                      ),
                      Text(
                        """صَلَوٰةِ  ( صَ + لَا + ةِ )  الواو حرف صامت دائمًا  """,
                        style: myStyle,
                      ),
                      Text(
                        """ضُحىٰ  ( ضُ + حَا ) الياء حرف صامت دائمًا """,
                        style: myStyle,
                      ),
                      Text(
                        """المورد الرابع ( ل ) :- لام التعريف الداخلة على الحروف الشمسية .""",
                        style: myStyle,
                      ),
                      Text(
                        """النَّاسَ ( اَن + نَا + سَ )   الدَّارُ ( اَد + دَا + رُ )  """,
                        style: myStyle,
                      ),
                      Text(
                        """لام التعريف الشمسية حرف صامت ونلاحظ بعد اللام الشمسية حرف شمسي مشدد دائمًا . """,
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
