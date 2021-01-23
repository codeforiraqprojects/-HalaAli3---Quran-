import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class SecondShort extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondShort();
  }
}

class _SecondShort extends State<SecondShort> {
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
        Image.asset('images/second.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
                height: 55,
              ),
              Text("حركة الضمة", style: appBarTextStyle),
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
                          """هي حركة توضع فوق الحرف وترسم كواو صغيرة عند النطق بالحرف المضموم تضم الشفتين وتتقدم قليلًا إلى الامام فيخرج صوت الحرف المضموم . تقرأ بضربة واحدة وتكتب بمقطع واحد .  """,
                          style: myStyle,
                        ),
                        Text(
                          """بيان التعريف:- أما قولنا تكتب بمقطع واحد أي كل حرف مضموم يكتب لوحده وإليكم الأمثلة : """,
                          style: myStyle,
                        ),
                        Text(
                          """كُتُبُ   ( كُ + تُ + بُ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """رُسُلُ   ( رُ + سُ + لُ ) .  """,
                          style: myStyle,
                        ),
                        Text(
                          """رُسُلَه   ( رُ + سُ + لَ + هُ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """رَزَقَكُمُ   ( رَ + زَ + قَ + كُ + مُ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """وأما قولنا تقرأ بضربة واحدة أي انها تقرأ بمقدار أو بزمن حرف واحد .""",
                          style: myStyle,
                        ),
                        Text(
                          """أي ان كل حرف مضموم يكتب لوحده ويقرأ لوحده .""",
                          style: myStyle,
                        ),
                      ],
                    )),
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
