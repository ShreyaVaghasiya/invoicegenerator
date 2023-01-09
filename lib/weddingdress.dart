import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';
import 'package:sprung/sprung.dart';
class wedd extends StatefulWidget {
  const wedd({Key? key}) : super(key: key);

  @override
  State<wedd> createState() => _weddState();
}

class _weddState extends State<wedd> {
  bool isView = true;
  dynamic viewicon = Icons.menu;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> weddress = [
      {
        'pic': 'assets/myimages/wed1.png',
        'name': 'SHARIRI',
        'subname': 'Embroderied Semi stich',
        'price': '19500',
        'dis': '10% ',
      },
      {
        'pic': 'assets/myimages/wed2.png',
        'name': 'Cute Fellow',
        'subname': 'Embroderied Semi stich',
        'price': '15799',
        'dis': '15% ',
      },
      {
        'pic': 'assets/myimages/wed3.png',
        'name': 'SLISH',
        'subname': 'Embroderied Semi Stich',
        'price': '16799',
        'dis': '20% ',
      },
      {
        'pic': 'assets/myimages/wed4.png',
        'name': 'Rainbow Creation',
        'subname': 'Self Design Semi Stich ',
        'price': '25000',
        'dis': '10% ',
      },
      {
        'pic': 'assets/myimages/wed5.png',
        'name': 'Neha Creation',
        'subname': 'Self Design Semi Stich ',
        'price': '20000',
        'dis': '10% ',
      },
      {
        'pic': 'assets/myimages/wed6.png',
        'name': 'Blue Creation',
        'subname': 'Self Design Semi Stich ',
        'price': '30000',
        'dis': '10% ',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            child: Icon(
              Icons.arrow_back_ios_sharp,
              size: 30,
              color: Color(0xffFBF2CF),
            )),
        title: Text(
          "Best Collection",
          style: GoogleFonts.amiri(
              textStyle: TextStyle(
                  fontSize: 30,
                  color: Color(0xffFBF2CF),
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff7895B2),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    isView = !isView;
                    (isView==true)
                        ? {viewicon = Icons.menu}
                        : {viewicon = Icons.apps_outlined};
                  });
                },
                child: Icon(
                  viewicon,
                  size: 30,
                  color: Color(0xffFBF2CF),
                )),
          ),
        ],
      ),
      body: (isView==true)
          ? ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    ...weddress.map((e) {
                      return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                 Navigator.pushNamed(context,'kn',arguments: [
                                   e['pic'],
                                   e['name'],
                                   e['subname'],
                                   e['price'],
                                   e['dis'],
                                 ]);
                              });
                            },
                            child: Container(
                              width: 400,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xffD2DAFF),
                                      Color(0xffEEF1FF),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  border: Border.all(color: Color(0xff25316D),width: 2)
                              ),
                              child: Card(
                                borderOnForeground: true,
                                elevation: 50,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        child: WidgetAnimator(
                                          incomingEffect: WidgetTransitionEffects
                                              .incomingScaleUp(),
                                          child: Image(
                                            image: AssetImage("${e['pic']}"),
                                            height: 100,
                                            width: 100,
                                            fit: BoxFit.scaleDown,
                                          ),
                                        )),
                                    Padding(padding: EdgeInsets.all(10)),
                                    Column(
                                      children: [
                                        WidgetAnimator(
                                          incomingEffect: WidgetTransitionEffects
                                              .incomingSlideInFromBottom(
                                                  duration: Duration(seconds: 2)),
                                          child: Text(
                                            "${e['name']}",
                                            style: GoogleFonts.anticDidone(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5)),
                                        WidgetAnimator(
                                          incomingEffect: WidgetTransitionEffects
                                              .incomingSlideInFromBottom(
                                              duration: Duration(seconds: 2)),
                                          child: Text(
                                            "${e['subname']}",
                                            style: GoogleFonts.roboto(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.all(5)),
                                    Column(
                                      children: [
                                        WidgetAnimator(
                                          incomingEffect: WidgetTransitionEffects
                                              .incomingSlideInFromRight(
                                              duration: Duration(seconds: 1)),
                                          child: Text(
                                            "${e['price']}",
                                            style: GoogleFonts.anticDidone(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.all(5)),
                                        WidgetAnimator(
                                          incomingEffect: WidgetTransitionEffects
                                              .incomingSlideInFromRight(
                                              duration: Duration(seconds: 1)),
                                          child: Text(
                                            "${e['dis']}",
                                            style: GoogleFonts.arvo(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blueAccent,
                                            ),
                                          ),

                                        ),
                                      ],
                                    ),
                                    Padding(padding: EdgeInsets.all(1)),

                                  ],
                                ),
                              ),
                            ),
                          ));
                    }),
                  ],
                ),
              ],
            )
          : GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
        childAspectRatio: 0.7,
        children: [
          ...weddress.map((e) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context,'kn',arguments: [
                    e['pic'],
                    e['name'],
                    e['subname'],
                    e['price'],
                    e['dis'],
                  ]);
                });
              },
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffD2DAFF),
                      Color(0xffEEF1FF),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  border: Border.all(color: Color(0xff25316D),width: 2)
                ),

                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.all(10),
                          child: WidgetAnimator(
                            incomingEffect: WidgetTransitionEffects
                                .incomingScaleUp(),
                            child: Image(
                              image: AssetImage("${e['pic']}"),
                              height: 100,
                              width: 100,
                              fit: BoxFit.scaleDown,
                            ),
                          )),
                      Padding(padding: EdgeInsets.all(10)),
                      WidgetAnimator(
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(
                            duration: Duration(seconds: 2)),
                        child: Text(
                          "${e['name']}",
                          style: GoogleFonts.anticDidone(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      WidgetAnimator(
                        incomingEffect: WidgetTransitionEffects
                            .incomingScaleDown(
                            duration: Duration(seconds: 2)),
                        child: Text(
                          "${e['subname']}",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      WidgetAnimator(
                        incomingEffect: WidgetTransitionEffects
                            .incomingSlideInFromBottom(
                            duration: Duration(seconds: 1)),
                        child: Text(
                          "${e['price']}",
                          style: GoogleFonts.anticDidone(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      WidgetAnimator(
                        incomingEffect: WidgetTransitionEffects
                            .incomingSlideInFromBottom(
                            duration: Duration(seconds: 1)),
                        child: Text(
                          "${e['dis']}",
                          style: GoogleFonts.arvo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ],
            ),
    );
  }
}
