import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/addcard.dart';
import 'package:flutter_application_2/orderplaced.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth * (screenWidth / screenWidth),
        height: screenHeight * (screenHeight / screenHeight),
        padding: EdgeInsets.all(screenWidth * (20 / screenWidth)),
        color: Color(0xFFF8F8F8),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * (50 / screenHeight),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      SizedBox(width: screenWidth * (110 / screenWidth)),
                      Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: screenHeight * (15 / screenHeight),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A237E),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * (40 / screenHeight)),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      screenWidth * (10 / screenWidth),
                    ),
                  ),
                  elevation: 8,
                  child: Container(
                    height: screenHeight * (97 / screenHeight),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        screenWidth * (10 / screenWidth),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * (22 / screenWidth),
                                height: screenWidth * (22 / screenWidth),
                                margin: EdgeInsets.only(
                                  left: screenWidth * (10 / screenWidth),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xFFF97891),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: screenWidth * (2.5 / screenWidth),
                                        top: screenWidth * (2.5 / screenWidth),
                                      ),
                                      child: Container(
                                        width: screenWidth * (15 / screenWidth),
                                        height:
                                            screenWidth * (15 / screenWidth),
                                        decoration: BoxDecoration(
                                          color: Color(0xFF5E49AD),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: screenWidth * (49 / screenWidth),
                                height: screenHeight * (32 / screenHeight),
                                margin: EdgeInsets.only(
                                  left: screenWidth * (15 / screenWidth),
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/visa@3x.png'),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: screenWidth * (12 / screenWidth),
                                ),
                                margin: EdgeInsets.only(
                                  right: screenWidth * (52 / screenWidth),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Globel',
                                      style: TextStyle(
                                        fontSize:
                                            screenHeight * (18 / screenHeight),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF5D5D5D),
                                      ),
                                    ),
                                    Text(
                                      '034XXX-00X0001',
                                      style: TextStyle(
                                        fontSize:
                                            screenHeight * (14 / screenHeight),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF5D5D5D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Transform.rotate(
                            angle: pi / 2,
                            child: Icon(
                              Icons.more_horiz,
                              color: Color(0xFFA7A7A7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * (10 / screenHeight)),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      screenWidth * (10 / screenWidth),
                    ),
                  ),
                  elevation: 8,
                  child: Container(
                    height: screenHeight * (97 / screenHeight),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        screenWidth * (10 / screenWidth),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: screenWidth * (22 / screenWidth),
                                height: screenWidth * (22 / screenWidth),
                                margin: EdgeInsets.only(
                                  left: screenWidth * (10 / screenWidth),
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xFF9B9B9B),
                                  ),
                                ),
                              ),
                              Container(
                                width: screenWidth * (49 / screenWidth),
                                height: screenHeight * (32 / screenHeight),
                                margin: EdgeInsets.only(
                                  left: screenWidth * (15 / screenWidth),
                                ),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/master_card.png'),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: screenWidth * (12 / screenWidth),
                                ),
                                margin: EdgeInsets.only(
                                  right: screenWidth * (52 / screenWidth),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fast Cash',
                                      style: TextStyle(
                                        fontSize:
                                            screenHeight * (18 / screenHeight),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF5D5D5D),
                                      ),
                                    ),
                                    Text(
                                      '034XXX-00X0001',
                                      style: TextStyle(
                                        fontSize:
                                            screenHeight * (14 / screenHeight),
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xFF5D5D5D),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Transform.rotate(
                            angle: pi / 2,
                            child: Icon(
                              Icons.more_horiz,
                              color: Color(0xFFA7A7A7),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * (50 / screenHeight)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => Addcard()),
                    );
                  },
                  child: Container(
                    height: screenHeight * (44 / screenHeight),
                    width: screenWidth * (324 / screenWidth),
                    padding: EdgeInsets.only(
                      left: screenWidth * (108 / screenWidth),
                      right: screenWidth * (105 / screenWidth),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Color(0xFF049BDE)),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.add),
                          Text(
                            'Add Card',
                            style: TextStyle(
                              fontSize: screenHeight * (16 / screenHeight),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * (100 / screenHeight)),
                Container(
                  height: screenHeight * (150 / screenHeight),
                  margin: EdgeInsets.only(
                    left: screenWidth * (25 / screenWidth),
                    right: screenWidth * (25 / screenWidth),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight * (50 / screenHeight),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color(0x335E7FB1),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount',
                              style: TextStyle(
                                fontSize: screenHeight * (13 / screenHeight),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            Text(
                              'AED 26',
                              style: TextStyle(
                                fontSize: screenHeight * (13 / screenHeight),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD32F2F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight * (50 / screenHeight),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: Color(0x335E7FB1),
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                fontSize: screenHeight * (14 / screenHeight),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            Text(
                              'AED 324',
                              style: TextStyle(
                                fontSize: screenHeight * (17 / screenHeight),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD32F2F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: screenHeight * (50 / screenHeight),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: screenHeight * (14 / screenHeight),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            Text(
                              'AED 328',
                              style: TextStyle(
                                fontSize: screenHeight * (17 / screenHeight),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD32F2F),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * (40 / screenHeight)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => Orderplaced()),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        screenWidth * (40 / screenWidth),
                      ),
                    ),
                    elevation: 4,
                    child: Container(
                      width: screenWidth * (319 / screenWidth),
                      height: screenHeight * (47 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (12 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF1A237E),
                        borderRadius: BorderRadius.circular(
                          screenWidth * (40 / screenWidth),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Place Order',
                          style: TextStyle(
                            fontSize: screenHeight * (14 / screenHeight),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * (30 / screenHeight)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
