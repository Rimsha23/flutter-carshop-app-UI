import 'package:flutter/material.dart';
import 'package:flutter_application_2/shoppingcart.dart';

class Productdetails extends StatefulWidget {
  const Productdetails({super.key});

  @override
  State<Productdetails> createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375,
        color: Color(0xFFF8F8F8),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 450,
                      width: 375,
                      padding: EdgeInsets.only(
                        top: 5,
                        bottom: 15,
                        left: 15,
                        right: 15,
                      ),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Container(
                        height: 430,
                        width: 320,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/tyres.png'),
                          ),
                        ),
                        child: Stack(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 35,
                                height: 35,
                                margin: EdgeInsets.only(top: 10, left: 5),
                                child: Icon(Icons.arrow_back),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 60,
                      width: 280,
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        'BF Goodrich 315/70R17 Tire, All-Terrain T/A KO2 - 08806',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF1A237E),
                        ),
                      ),
                    ),

                    Container(
                      height: 75,
                      width: 305,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Etiam convallis elementum sapien, a aliquam turpis aliquam vitae. Praesent sollicitudin felis vel mi facilisis posuere.  ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0x80222222),
                        ),
                      ),
                    ),
                    Container(
                      height: 105,
                      width: 305,
                      margin: EdgeInsets.only(left: 20),
                      child: Text(
                        'Size: 315/70R17 \n Side Wall: White letters on one side – Black side wall on the other side Overall \n Diameter: 34.41" \n Load Range: E Max Load: 3195 lbs Tread \n Depth: 15/32 Speed \n Rating: S Tread \n Type: All Terrain ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0x80222222),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              width: 375,
              padding: EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 25, bottom: 25),
                    child: Text(
                      'AED 33',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFD32F2F),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => Shoppingcart()),
                      );
                    },
                    child: Container(
                      height: 47,
                      width: 202,
                      decoration: BoxDecoration(
                        color: Color(0xFF1A237E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
