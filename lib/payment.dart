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
    return Scaffold(
      body: Container(
        width: 375,
        height: 800,
        padding: EdgeInsets.all(20),
        color: Color(0xFFF8F8F8),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      SizedBox(width: 110),
                      Text(
                        'Payment',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A237E),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 8,
                  child: Container(
                    height: 97,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            margin: EdgeInsets.only(left: 10),
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
                                  padding: EdgeInsets.only(left: 2.5, top: 2.5),
                                  child: Container(
                                    width: 15,
                                    height: 15,
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
                            width: 49,
                            height: 32,
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/visa@3x.png'),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            margin: EdgeInsets.only(right: 52),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Globel',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF5D5D5D),
                                  ),
                                ),
                                Text(
                                  '034XXX-00X0001',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF5D5D5D),
                                  ),
                                ),
                              ],
                            ),
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

                SizedBox(height: 10),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 8,
                  child: Container(
                    height: 97,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 1,
                                color: Color(0xFF9B9B9B),
                              ),
                            ),
                          ),
                          Container(
                            width: 49,
                            height: 32,
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/master_card.png'),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            margin: EdgeInsets.only(right: 52),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fast Cash',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF5D5D5D),
                                  ),
                                ),
                                Text(
                                  '034XXX-00X0001',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF5D5D5D),
                                  ),
                                ),
                              ],
                            ),
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
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => Addcard()),
                    );
                  },
                  child: Container(
                    height: 44,
                    width: 324,
                    padding: EdgeInsets.only(left: 108, right: 105),
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
                              fontSize: 16,
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
                SizedBox(height: 100),
                Container(
                  height: 150,
                  margin: EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
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
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            Text(
                              'AED 26',
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD32F2F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
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
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            Text(
                              'AED 324',
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFD32F2F),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF1A237E),
                              ),
                            ),
                            Text(
                              'AED 328',
                              style: TextStyle(
                                fontSize: 17,
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
                SizedBox(height: 40),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => Orderplaced()),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                    child: Container(
                      width: 319,
                      height: 47,
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF1A237E),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Place Order',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
