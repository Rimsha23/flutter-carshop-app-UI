import 'package:flutter/material.dart';
import 'package:flutter_application_2/addaddress.dart';
import 'package:flutter_application_2/payment.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
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
                      'Address',
                      style: TextStyle(
                        fontSize: screenWidth * (15 / screenWidth),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: Container(
                  height: screenHeight * (97 / screenHeight),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth * (22 / screenWidth),
                        height: screenWidth * (22 / screenWidth),
                        margin: EdgeInsets.only(
                          left: screenWidth * (10 / screenWidth),
                          top: screenHeight * (10 / screenHeight),
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
                                top: screenHeight * (2.5 / screenHeight),
                              ),
                              child: Container(
                                width: screenWidth * (15 / screenWidth),
                                height: screenWidth * (15 / screenWidth),
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
                        padding: EdgeInsets.only(
                          left: screenWidth * (10 / screenWidth),
                          top: screenHeight * (10 / screenHeight),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Michelangelo Flores',
                              style: TextStyle(
                                fontSize: screenWidth * (16 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5D5D5D),
                              ),
                            ),
                            Text(
                              '0989975432',
                              style: TextStyle(
                                fontSize: screenWidth * (14 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0x66000000),
                              ),
                            ),
                            Text(
                              '658 Yost Island Apt, Seattle, US',
                              style: TextStyle(
                                fontSize: screenWidth * (14 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0x66000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * (20 / screenWidth),
                          top: screenHeight * (8 / screenHeight),
                        ),
                        child: Container(
                          width: screenWidth * (12.8 / screenWidth),
                          height: screenWidth * (12.8 / screenWidth),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF9B9B9B),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: screenWidth * (8 / screenWidth),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * (10 / screenHeight)),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: Container(
                  height: screenHeight * (97 / screenHeight),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: screenWidth * (22 / screenWidth),
                        height: screenWidth * (22 / screenWidth),
                        margin: EdgeInsets.only(
                          left: screenWidth * (10 / screenWidth),
                          top: screenHeight * (10 / screenHeight),
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
                        padding: EdgeInsets.only(
                          left: screenWidth * (10 / screenWidth),
                          top: screenHeight * (10 / screenHeight),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Michelangelo Flores',
                              style: TextStyle(
                                fontSize: screenWidth * (16 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF5D5D5D),
                              ),
                            ),
                            Text(
                              '0989975432',
                              style: TextStyle(
                                fontSize: screenWidth * (14 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0x66000000),
                              ),
                            ),
                            Text(
                              '658 Yost Island Apt, Seattle, US',
                              style: TextStyle(
                                fontSize: screenWidth * (14 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0x66000000),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * (20 / screenWidth),
                          top: screenHeight * (8 / screenHeight),
                        ),
                        child: Container(
                          width: screenWidth * (12.8 / screenWidth),
                          height: screenWidth * (12.8 / screenWidth),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF9B9B9B),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                              size: screenWidth * (8 / screenWidth),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * (160 / screenHeight)),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Addaddress()),
                  );
                },
                child: Container(
                  height: screenHeight * (44 / screenHeight),
                  width: screenWidth * (324 / screenWidth),
                  padding: EdgeInsets.only(
                    left: screenWidth * (90 / screenWidth),
                    right: screenWidth * (90 / screenWidth),
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
                          'Add Address',
                          style: TextStyle(
                            fontSize: screenWidth * (16 / screenWidth),
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
              SizedBox(height: screenHeight * (20 / screenHeight)),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (builder) => Payment()),
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
                        'Continue to Payment',
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
            ],
          ),
        ),
      ),
    );
  }
}
