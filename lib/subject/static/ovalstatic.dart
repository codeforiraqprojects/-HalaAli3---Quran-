import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class OvalStatic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OvalStatic();
  }
}

class _OvalStatic extends State<OvalStatic> {
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
        Image.asset('images/oval.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
                "السكون البيضوي",
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
                        """هي علامة توضع فوق حرف الألف ( 0 ) شكلها بيضوي وتدل علىٰ ان حرف الألف يقرأ عند الوقف عليه ولا يقرأ عند الوصل تأتي هذه السكون البيضوية على الألف فقط يثبت عند الوقف ويحذف لفظًا عند الوصل .""",
                        style: myStyle,
                      ),
                      Text(
                        """في هذا المثال نلاحظ لفظ الألف عند الوقف عليها ولا تلفظ وصلًا :""",
                        style: myStyle,
                      ),
                      Text(
                        """( وَ  أَ نَا۠  مَعَكُم ) """,
                        style: myStyle,
                      ),
                      Text(
                        """عند الوقف   ( وَ + أَ + نَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """عند الوصل   ( وَ + أَ + نَ + مَ + عَ + كُم ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """( قَالَ  أَ نَا۠  أُحيِ  وَ أُمِيت ) """,
                        style: myStyle,
                      ),
                      Text(
                        """عند الوقف   ( قَا + لَ + أَ + نَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """عند الوصل   ( قَا + لَ + أَ + نَ + أُح + يِ + وَ + أُ + مِيت ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """بما أن هذه العلامة تخص حرف الألف فقط إليكم الألفات السبعة التي وردت في القرآن الكريم : """,
                        style: myStyle,
                      ),
                      Text(
                        """1- أَ نَا۠ :- في كل القرآن الكريم موجودة مثل : """,
                        style: myStyle,
                      ),
                      Text(
                        """  ( أَ نَا۠ خَيرٌ مِنهُ )     سورة يوسف آية 59 . """,
                        style: myStyle,
                      ),
                      Text(
                        """2- لَـٰكِنَّــا۠ :- سورة الكهف آية 38 : """,
                        style: myStyle,
                      ),
                      Text(
                        """  ( لَـٰكِنَّــا۠ هُو اللهُ رَبِّي ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """3- الظُّنُونَــا۠ :- سورة الأحزاب آية 10 :""",
                        style: myStyle,
                      ),
                      Text(
                        """  ( وَ تَظُنُّونَ بِاللهِ الظُّنُونَــا۠ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """4- الرَّسُولَا۠ :- سورة الأحزاب آية 66 :""",
                        style: myStyle,
                      ),
                      Text(
                        """  ( وَ أَطَعنَاِ الرَّسُولَا۠۠ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """5- السَّبِيلَا۠ :- سورة الأحزاب آية 67 :""",
                        style: myStyle,
                      ),
                      Text(
                        """  ( فَأَضَلُّونَاِ السَّبِيلَا۠ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """6- سَلَـٰـسِلَا۠ :- سورة الإنسان آية 4 :""",
                        style: myStyle,
                      ),
                      Text(
                        """  ( إِنَا أَعتَدنَا لِلكَـافِرِينَ سَلَـٰـسِلَا۠۠ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """7- قَوَارِيرَا۠ :- سورة الإنسان آية 15 :""",
                        style: myStyle,
                      ),
                      Text(
                        """  ( كَـانَتِ قَوَارِيرَا۠ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ملاحظة : ( قَوَارِيرَاْ ) في بداية الآية 16 من سورة الإنسان هنا الألف لا يلفظ دائمًا لأن علامة السكون فوقه دائرية وليست بيضوية ، إذن يجب الإنتباه عند القراءة .""",
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
