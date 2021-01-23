import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class WawLong extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _WawLong();
  }
}

class _WawLong extends State<WawLong> {
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
        Image.asset('images/waw.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
              Text("الواو المدي", style: appBarTextStyle),
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
                        """هو ثاني حروف المد ويكون خالي من الحركة أو العلامة وقبله حرف مضموم ويشكل الواو مع الحرف المضموم مقطع واحد من الكلمة ، يقرأ بضربتين ويكتب بمقطع واحد . """,
                        style: myStyle,
                      ),
                      Text(
                        """أما قولنا يكتب بمقطع واحد أي كلما يأتي الحرف مضموم وبعده واو ساكن  يكتب الحرفان مع بعض عند التفكيك لسهولة تعلم قراءته وإليكم البيان بالمثال التالي : """,
                        style: myStyle,
                      ),
                      Text(
                        """وُجُوهُ   ( وُ + جُو + هُ ) . """,
                        style: myStyle,
                      ),
                      Text(
                        """حُدُود ُ  ( حُ + دُو + دُ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """ظَلَمُونَا   ( ظَ + لَ + مُو + نَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """وَ فُومِهَا   ( وَ + فُو + مِ + هَا ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """وأما قولنا يقرأ بضربتين أي انه يقرأ بمقدار أو بزمن حرفين وذلك لان الصوت الطويل عبارة عن حرفين ويجب إعطاء كل حرف حقه ووقته لذلك أصبحت مقدار ضربتين .""",
                        style: myStyle,
                      ),
                      Text(
                        """أي ان الحروف المدية تكتب لوحدها وتقرأ لوحدها عند التفكيك .""",
                        style: myStyle,
                      )
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
