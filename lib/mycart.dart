import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'globals.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
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
          "Cart",
          style: GoogleFonts.amiri(
              textStyle: TextStyle(
                  fontSize: 35,
                  letterSpacing: 1,
                  color: Color(0xffFBF2CF),
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff7895B2),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white70,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 150,
                      child: Image(
                        image: AssetImage(globals.addcart[index]['opic']),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${globals.addcart[index]['oname']}",style: GoogleFonts.lora(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff4C0033)
                        ),),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("${globals.addcart[index]['osub']}",style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff790252)
                        ),),Padding(padding: EdgeInsets.all(5)),
                        Text("₹${globals.addcart[index]['oprice']}",style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xffAF0171)
                        ),),
                        Padding(padding: EdgeInsets.all(5)),
                        Text("${globals.addcart[index]['odis']} Off",style: GoogleFonts.lora(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(0xffE80F88)
                        ),),
                        Padding(padding: EdgeInsets.all(10)),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                                  Navigator.pushNamed(context, 'by',arguments: [
                                    globals.addcart[index]['opic'],
                                    globals.addcart[index]['oname'],
                                    globals.addcart[index]['osub'],
                                    globals.addcart[index]['oprice'],
                                    globals.addcart[index]['odis'],
                                  ]);
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 130,
                          decoration: BoxDecoration(
                            color: Color(0xff790252),
                            borderRadius: BorderRadius.circular(10)
                          ),
                            child:Center(
                              child: Text("Buy Now",style: GoogleFonts.lora(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        )

                      ],
                    ),

                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return  Divider(
              thickness: 5,
              color:  Color(0xff7895B2),
            );
          },
          itemCount: globals.addcart.length),
    );
  }
}
