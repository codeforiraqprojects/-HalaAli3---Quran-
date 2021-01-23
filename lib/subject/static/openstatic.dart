import 'package:flutter/material.dart';
import 'package:quran/text_style/text_styles.dart';

class OpenStatic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OpenStatic();
  }
}

class _OpenStatic extends State<OpenStatic> {
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
        Image.asset('images/open.jpg',height: double.infinity,width: double.infinity,fit: BoxFit.fitHeight,),
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
                "السكون المفتوح",
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
                        """هي علامة توضع فوق الحروف وشكلها يشبه رأس الحاء الصغير( دۡ ) وهذه العلامة تدل على أن الحرف يقرأ دائمًا . الحرف الساكن لا يقرأ وحده يحتاج إلى الحرف المتحرك الذي قبله لكي يشكل مقطعًا معه .""",
                        style: myStyle,
                      ),
                      Text(
                        """وأحيانًا يأتي حرف خالي من أي حركة أو علامة فهذا الحرف ينسب الى السكون المفتوح أي هذا الحرف يقرأ دائمًا .""",
                        style: myStyle,
                      ),
                      Text(
                        """يَعۡرِف   ( يَعۡـ + رِ + فُ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """نَجَحۡـتُ   ( نَ + جَحۡـ + تُ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """وَنُدۡخِلۡكُم   ( وَ + نُدۡ + خِلۡ + كُم ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """فَسَيَكۡفِيكَهُمُ   ( فَ + سَ + يَكۡ + فِي + كَ + هُـ + مُ ) .""",
                        style: myStyle,
                      ),
                      Text(
                        """وهذه اية قرانية فيها السكون المفتوح حاول أن تقراها وتكتشف من خلال القراءة الحرف الساكن :""",
                        style: myStyle,
                      ),
                      Text(
                        """﴿تِلۡكَ أُمَّةࣱ قَدۡ خَلَتۡۖ لَهَا مَا كَسَبَتۡ وَلَكُم مَّا كَسَبۡتُمۡۖ وَلَا تُسۡـَٔلُونَ عَمَّا كَانُوا۟ یَعۡمَلُونَ﴾ [البقرة ١٤١] .""",
                        style: myStyle,
                      ),
                      Text(
                        """أعد القراءة عدة مرات بفتح المصحف لكي تتضح لك الحركات بشكل أفضل وإكتشف الحرف الساكن كيف يحتاج إلى الحرف الذي قبله عند القراءة .""",
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
