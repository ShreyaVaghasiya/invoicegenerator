import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuyNow extends StatefulWidget {
  const BuyNow({Key? key}) : super(key: key);

  @override
  State<BuyNow> createState() => _BuyNowState();
}

class _BuyNowState extends State<BuyNow> {
  int quant = 0;

  @override
  Widget build(BuildContext context) {
    final cartList = ModalRoute.of(context)!.settings.arguments as List;
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
          "Your Order",
          style: GoogleFonts.amiri(
              textStyle: TextStyle(
                  fontSize: 25,
                  letterSpacing: 1,
                  color: Color(0xffFBF2CF),
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff7895B2),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color(0xff790152),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 5)),
                    child: Image(image: AssetImage(cartList[0]),fit: BoxFit.cover,)
                  ),
                ),
                Padding(padding: EdgeInsets.all(2)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Contact No:",
                          style: GoogleFonts.merriweather(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff4C0033)),
                        ),
                        Text(
                          "9909735649",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffAF0171)),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            "Address:",
                            style: GoogleFonts.merriweather(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff4C0033)),
                          ),
                          Column(
                            children: [
                              Text(
                                "90,Alka Residency",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffAF0171)),
                              ),
                              Text(
                                "Nehru Road",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffAF0171)),
                              ),
                              Text(
                                "Ahemdabad",
                                style: GoogleFonts.roboto(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffAF0171)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Text(
            "Your InVoice",
            style: GoogleFonts.bebasNeue(
                fontSize: 30, letterSpacing: 2, color: Color(0xff4C0033)),
          ),
          Padding(padding: EdgeInsets.all(5)),
          Container(
            margin: EdgeInsets.all(15),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 5)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Product Name :",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Text(
                        "${cartList[1]}",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff4C0033),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Product Price :",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Text(
                        "₹${cartList[3]}",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff4C0033),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Discount :",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Text(
                        "${cartList[4]} Off",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff4C0033),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Quantity :",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      SizedBox(
                          height: 30,
                          width: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.pink,
                            onPressed: () {
                              setState(() {
                                quant++;
                              });
                            },
                            child: Icon(Icons.add),
                          )),
                      Padding(padding: EdgeInsets.all(5)),
                      Text(
                        "${quant}",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff4C0033),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      SizedBox(
                          height: 30,
                          width: 30,
                          child: FloatingActionButton(
                            backgroundColor: Colors.transparent,
                            onPressed: () {
                              setState(() {
                                quant--;
                              });
                            },
                            child: Center(
                                child: Icon(
                              Icons.horizontal_rule,
                              color: Colors.black,
                            )),
                          )),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Amount :",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Text(
                        "₹${int.parse(cartList[3])*quant.toInt()}",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff4C0033),
                        ),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(3)),
                      Text(
                        "Total Payment :",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Text(
                        "₹${(int.parse(cartList[3])*quant*15)-((int.parse(cartList[3])*quant*15)/150).toInt()}",
                        style: GoogleFonts.crimsonPro(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff4C0033),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xffFFFAE7),
    );
  }
}
