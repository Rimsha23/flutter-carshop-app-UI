import 'package:flutter/material.dart';
import 'package:flutter_application_2/address.dart';

class Shoppingcart extends StatefulWidget {
  const Shoppingcart({super.key});

  @override
  State<Shoppingcart> createState() => _ShoppingcartState();
}

class _ShoppingcartState extends State<Shoppingcart> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color(0xFFF8F8F8),
        child: Column(
          children: [
            Container(
              height: screenHeight * (80 / screenHeight),
              padding: EdgeInsets.only(
                left: screenWidth * (25 / screenWidth),
                top: screenHeight * (30 / screenHeight),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: screenWidth * (120 / screenWidth)),
                  Text(
                    'Cart',
                    style: TextStyle(
                      fontSize: screenWidth * (18 / screenWidth),
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF1A237E),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: screenHeight * (60 / screenHeight),
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * (30 / screenWidth),
                      ),
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'PRODUCTS',
                            style: TextStyle(
                              fontSize: screenWidth * (14 / screenWidth),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1A237E),
                            ),
                          ),
                          Text(
                            '4 ITEMS',
                            style: TextStyle(
                              fontSize: screenWidth * (14 / screenWidth),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF1A237E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * (30 / screenHeight)),

                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * (25 / screenWidth),
                      ),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: screenHeight * (160 / screenHeight),
                            child: Column(
                              children: [
                                Container(
                                  height: screenHeight * (145 / screenHeight),
                                  padding: EdgeInsets.only(
                                    bottom: screenHeight * (15 / screenHeight),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 0.25,
                                        color: Color(0xFF707070),
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width:
                                            screenWidth * (130 / screenWidth),
                                        height:
                                            screenWidth * (130 / screenWidth),
                                        child: Image.asset('assets/tyres.png'),
                                      ),
                                      SizedBox(
                                        width: screenWidth * (95 / screenWidth),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'BF Goodrich 315/70R17 ',
                                              style: TextStyle(
                                                fontSize:
                                                    screenWidth *
                                                    (14 / screenWidth),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1A237E),
                                              ),
                                            ),
                                            Text(
                                              'AED 41 ',
                                              style: TextStyle(
                                                fontSize:
                                                    screenWidth *
                                                    (17 / screenWidth),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFFD32F2F),
                                              ),
                                            ),
                                            SizedBox(
                                              height:
                                                  screenHeight *
                                                  (15 / screenHeight),
                                            ),
                                            Text(
                                              'Delete ',
                                              style: TextStyle(
                                                fontSize:
                                                    screenWidth *
                                                    (14 / screenWidth),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1A237E),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: screenWidth * (35 / screenWidth),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width:
                                                  screenWidth *
                                                  (32 / screenWidth),
                                              height:
                                                  screenWidth *
                                                  (32 / screenWidth),
                                              decoration: BoxDecoration(
                                                color: Color(0x405E7FB1),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '3',
                                              style: TextStyle(
                                                fontSize:
                                                    screenWidth *
                                                    (18 / screenWidth),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF1A237E),
                                              ),
                                            ),
                                            Container(
                                              width:
                                                  screenWidth *
                                                  (32 / screenWidth),
                                              height:
                                                  screenWidth *
                                                  (32 / screenWidth),
                                              decoration: BoxDecoration(
                                                color: Color(0x405E7FB1),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * (15 / screenHeight),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * (15 / screenHeight)),
                    Container(
                      height: screenHeight * (47 / screenHeight),
                      padding: EdgeInsets.only(
                        left: screenWidth * (25 / screenWidth),
                        right: screenWidth * (20 / screenWidth),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth * (210 / screenWidth),
                            height: screenHeight * (47 / screenHeight),
                            padding: EdgeInsets.only(
                              left: screenWidth * (20 / screenWidth),
                              top: screenHeight * (15 / screenHeight),
                              bottom: screenHeight * (15 / screenHeight),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 0.75,
                                color: Color(0x335E7FB1),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              'Coupon Number',
                              style: TextStyle(
                                fontSize: screenWidth * (13 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0x80222222),
                              ),
                            ),
                          ),
                          Container(
                            width: screenWidth * (100 / screenWidth),
                            height: screenHeight * (47 / screenHeight),
                            decoration: BoxDecoration(
                              color: Color(0xFF1A237E),
                              border: Border.all(
                                width: 0.75,
                                color: Color(0x335E7FB1),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text(
                                'Apply',
                                style: TextStyle(
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * (30 / screenHeight),
                      margin: EdgeInsets.symmetric(
                        horizontal: screenWidth * (25 / screenWidth),
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0x335E7FB1),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight * (100 / screenHeight),
                      margin: EdgeInsets.symmetric(
                        horizontal: screenWidth * (25 / screenWidth),
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
                                    fontSize: screenWidth * (13 / screenWidth),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1A237E),
                                  ),
                                ),
                                Text(
                                  'AED 26',
                                  style: TextStyle(
                                    fontSize: screenWidth * (13 / screenWidth),
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
                                    fontSize: screenWidth * (14 / screenWidth),
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1A237E),
                                  ),
                                ),
                                Text(
                                  'AED 324',
                                  style: TextStyle(
                                    fontSize: screenWidth * (17 / screenWidth),
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
                    SizedBox(height: screenHeight * (35 / screenHeight)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => Address()),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 4,
                        child: Container(
                          width: screenWidth * (320 / screenWidth),
                          height: screenHeight * (47 / screenHeight),
                          padding: EdgeInsets.only(
                            top: screenHeight * (12 / screenHeight),
                            bottom: screenHeight * (12 / screenHeight),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF1A237E),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                fontSize: screenWidth * (14 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (35 / screenHeight)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
