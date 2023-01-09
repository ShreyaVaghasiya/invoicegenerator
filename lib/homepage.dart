import 'dart:ui';
import 'globals.dart';
import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Menu",
            style: GoogleFonts.bubblerOne(
                textStyle: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                    color: Color(0xffFFCACA))),

          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff251B37),
          actions: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.of(context).pushNamed('ca');
                });
              },
              child: Container(
                margin: EdgeInsets.all(10),
                  child: Icon(Icons.shopping_cart,size: 25,color: Color(0xffFFCACA))),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                             Navigator.of(context).pushNamed('wd');
                      });
                    },
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                      child: Image(
                        image: AssetImage('assets/myimages/wedding.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                      left: 100,
                      child: Column(
                        children: [
                          Align(
                              child: Text("Wedding Dress",
                                style: GoogleFonts.capriola(
                                  fontSize: 25,
                                  color: Color(0xff251B37)
                                ),
                              )),
                          Align(
                              child: Text("New Collection",
                                style: GoogleFonts.capriola(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffE14D2A)
                                ),
                              )),
                        ],
                      ))
                ],
              ),
              Stack(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Image(
                      image: AssetImage('assets/myimages/modern.png'),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 100,
                      child: Column(
                        children: [
                          Align(
                              child: Text("Stylish Wear",
                                style: GoogleFonts.capriola(
                                    fontSize: 25,
                                    color: Colors.white
                                ),
                              )),
                          Align(
                              child: Text("New Collection",
                                style: GoogleFonts.capriola(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffE14D2A)
                                ),
                              )),
                        ],
                      ))
                ],
              ),
              Stack(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Image(
                      image: AssetImage('assets/myimages/kurti.png'),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 100,
                      child: Column(
                        children: [
                          Align(
                              child: Text("Traditional Wear",
                                style: GoogleFonts.capriola(
                                    fontSize: 25,
                                    color: Color(0xff251B37)
                                ),
                              )),
                          Align(
                              child: Text("New Collection",
                                style: GoogleFonts.capriola(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffE14D2A)
                                ),
                              )),
                        ],
                      ))
                ],
              ),
              Stack(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Image(
                      image: AssetImage('assets/myimages/saree.png'),

                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 125,
                      child: Column(
                        children: [
                          Align(
                              child: Text("Saree",
                                style: GoogleFonts.capriola(
                                    fontSize: 25,
                                    color: Colors.white
                                ),
                              )),
                          Align(
                              child: Text("New Collection",
                                style: GoogleFonts.capriola(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffE14D2A)
                                ),
                              )),
                        ],
                      ))
                ],
              ),
              Stack(
                children: [
                  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                    child: Image(
                      image: AssetImage('assets/myimages/skirts.png'),

                    ),
                  ),
                  Positioned(
                      top: 100,
                      left: 125,
                      child: Column(
                        children: [
                          Align(
                              child: Text("Stylish Girl",
                                style: GoogleFonts.capriola(
                                    fontSize: 25,
                                    color: Colors.black,
                                ),
                              )),
                          Align(
                              child: Text("New Collection",
                                style: GoogleFonts.capriola(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffE14D2A)
                                ),
                              )),
                        ],
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
