import 'dart:math';

import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoicegenerator/globals.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class know extends StatefulWidget {
  const know({Key? key}) : super(key: key);

  @override
  State<know> createState() => _knowState();
}

class _knowState extends State<know> {
  ScrollController scrollController = ScrollController();

  late String opic ;
  late String oname ;
  late String osub ;
  late String oprice;
  late String odis;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute
        .of(context)!
        .settings
        .arguments as List;
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
              size: 20,
              color: Color(0xffFBF2CF),
            )),
        title: Text(
          "Your choice",
          style: GoogleFonts.amiri(
              textStyle: TextStyle(
                  fontSize: 20,
                  color: Color(0xffFBF2CF),
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff7895B2),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
                child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff15316D), width: 5),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 2,
                              color: Color(0xffFFF2F2))
                        ]),
                    margin: EdgeInsets.all(10),
                    child: WidgetAnimator(
                      incomingEffect:
                      WidgetTransitionEffects.incomingOffsetThenScale(
                          duration: Duration(seconds: 2)),
                      child: Image(
                        image: AssetImage("${args[0]}"),
                        height: 200,
                        width: 400,
                      ),
                    ))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                WidgetAnimator(
                  incomingEffect:
                  WidgetTransitionEffects.incomingSlideInFromLeft(
                      duration: Duration(seconds: 2)),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          opic = args[0];
                          oname = args[1];
                          osub = args[2];
                          oprice = args[3];
                          odis = args[4];
                          Map cart = {'opic' : opic,'oname' : oname,'osub' : osub,'oprice' : oprice,'odis' : odis};
                          globals.addcart.add(cart);
                          print(globals.addcart);
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5,
                              blurRadius: 5,
                            )
                          ],
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.orange.shade900, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "ADD TO CART",
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(
                          "Available Color : 3",
                          style: GoogleFonts.autourOne(
                              textStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold)),
                        ))),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "${args[1]}",
                    style: GoogleFonts.autourOne(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                            fontWeight: FontWeight.bold)),
                  )),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "  ${args[2]}",
                style: GoogleFonts.share(
                    textStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(15),
                      child: WidgetAnimator(
                        incomingEffect:
                        WidgetTransitionEffects.outgoingSlideOutToLeft(
                            duration: Duration(seconds: 2)),
                        child: Text(
                          "${args[3]}",
                          style: GoogleFonts.autourOne(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(5),
                      child: WidgetAnimator(
                        incomingEffect:
                        WidgetTransitionEffects.outgoingSlideOutToLeft(
                            duration: Duration(seconds: 2)),
                        child: Text(
                          "${args[4]}",
                          style: GoogleFonts.autourOne(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green.shade900,
                                  fontWeight: FontWeight.bold)),
                        ),
                      )),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Product Details",
                    style: GoogleFonts.buenard(
                        textStyle: TextStyle(
                          fontSize: 28,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Product Dimensions  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "12x12x12 cm",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Date First Available  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "6 May 1515",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Manufacturer  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "ARADHNA CLOTH",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "ASIN  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "B09ZP7M886",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Item part number  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "115456",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Country of Origin  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "INDIA",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(2)),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        "Item Dimensions LxWxH  : ",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text(
                        "12 x 12  Cm",
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            )),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
      // backgroundColor: Color(0xffC9BBCF),
      backgroundColor: Colors.white,
    );
  }
}
