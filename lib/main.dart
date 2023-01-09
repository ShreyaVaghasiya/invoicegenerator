import 'dart:async';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoicegenerator/weddingdress.dart';

import 'buypage.dart';
import 'homepage.dart';
import 'knowmore.dart';
import 'mycart.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
   routes: {
      '/' : (context) => Splash(),
     'one' : (context) => Home(),
     'wd' : (context) => wedd(),
     'kn' : (context) => know(),
     'ca' : (context) => cart(),
     'by' : (context) => BuyNow(),
   },
  ));
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   splashscreen();
  // }

  // splashscreen() {
  //   Timer(Duration(seconds: 5), () {
  //    Navigator.pushReplacementNamed(context,'one');
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash:Container(
          decoration: BoxDecoration(color: Colors.purple),
          child: Center(
            child: Text(
              "Your\n  Appearance\nShows Your\n  Quality",
              style: GoogleFonts.benne(
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  letterSpacing: 2,
                  fontWeight: FontWeight.bold
                )
              ),
            ),
          ),
        ),
        animationDuration:Duration(seconds: 3),
        backgroundColor: Colors.purple,
        splashTransition: SplashTransition.rotationTransition,
        nextScreen: Home(),

        // child: Column(
        //   children: [
        //     Image(
        //       image: AssetImage('assets/myimages/splashimage.png'),
        //     ),
        //     Container(
        //       height: 569,
        //       width: 500,
        //       decoration: BoxDecoration(color: Colors.purple),
        //       child: Center(
        //         child: Text(
        //           "Your\n  Appearance\nShows Your\n  Quality",
        //           style: GoogleFonts.benne(
        //             textStyle: TextStyle(
        //               fontSize: 60,
        //               color: Colors.white,
        //               letterSpacing: 2,
        //               fontWeight: FontWeight.bold
        //             )
        //           ),
        //         ),
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
