import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class FirstShort extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstShort();
  }
}

class _FirstShort extends State<FirstShort> {
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
        Image.asset('images/first.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("حركة الفتحة", style: appBarTextStyle),
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
                          """هي حركة توضع فوق الحرف على شكل خط مائل عند النطق بالحرف المفتوح تفتح الشفتين فيتباعد الفك السفلي عن العلوي فيتبعه تباعد الشفتين بالتبعية . تقرا بضربة واحدة وتكتب بمقطع واحد . """,
                          style: myStyle,
                        ),
                        Text(
                          """بيان التعريف:- أما قولنا تكتب بمقطع واحد أي كل حرف مفتوح يكتب لوحده وإليكم الأمثلة : """,
                          style: myStyle,
                        ),
                        Text(
                          """كَتَبَ   ( كَ + تَ + بَ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """ذَكَرَ   ( ذَ + كَ + رَ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """فَمَكَثَ   ( فَ + مَ + كَ + ثَ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """فَعَدَلَكَ   ( فَ + عَ + دَ + لَ + كَ ) . """,
                          style: myStyle,
                        ),
                        Text(
                          """وأما قولنا تقرا بضربة واحدة أي إنها تقرا بمقدار أو بزمن حرف واحد .""",
                          style: myStyle,
                        ),
                        Text(
                          """أي ان كل حرف مفتوح يكتب لوحده ويقرأ لوحده .""",
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
