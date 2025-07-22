import 'package:flutter/material.dart';

class Addaddress extends StatefulWidget {
  const Addaddress({super.key});

  @override
  State<Addaddress> createState() => _AddaddressState();
}

class _AddaddressState extends State<Addaddress> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth * (screenWidth / screenWidth),
        height: screenHeight * (screenHeight / screenHeight),
        padding: EdgeInsets.only(
          left: screenWidth * (25 / screenWidth),
          right: screenWidth * (25 / screenWidth),
        ),
        color: Color(0xFFF8F8F8),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: screenHeight * (50 / screenHeight),
                  margin: EdgeInsets.only(
                    top: screenHeight * (15 / screenHeight),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back),
                      ),
                      SizedBox(width: screenWidth * (100 / screenWidth)),
                      Text(
                        'Add Address',
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
                SizedBox(height: screenHeight * (30 / screenHeight)),
                Container(
                  width: screenWidth * (313 / screenWidth),
                  height: screenHeight * (410.5 / screenHeight),
                  margin: EdgeInsets.only(
                    top: screenHeight * (30 / screenHeight),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: screenHeight * (70 / screenHeight),
                        width: screenWidth * (313 / screenWidth),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Name',
                              style: TextStyle(
                                fontSize: screenWidth * (15 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            Container(
                              height: screenHeight * (39.3 / screenHeight),
                              width: screenWidth * (313 / screenWidth),
                              padding: EdgeInsets.only(
                                top: screenHeight * (9 / screenHeight),
                                bottom: screenHeight * (6 / screenHeight),
                                left: screenWidth * (15 / screenWidth),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Ruth Willis',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight * (70 / screenHeight),
                        width: screenWidth * (313 / screenWidth),
                        margin: EdgeInsets.only(
                          top: screenHeight * (15 / screenHeight),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Address lane',
                              style: TextStyle(
                                fontSize: screenWidth * (15 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            Container(
                              height: screenHeight * (39.3 / screenHeight),
                              width: screenWidth * (313 / screenWidth),
                              padding: EdgeInsets.only(
                                top: screenHeight * (9 / screenHeight),
                                bottom: screenHeight * (6 / screenHeight),
                                left: screenWidth * (15 / screenWidth),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Sarajevo , iceland',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight * (70 / screenHeight),
                        width: screenWidth * (313 / screenWidth),
                        margin: EdgeInsets.only(
                          top: screenHeight * (15 / screenHeight),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'City',
                              style: TextStyle(
                                fontSize: screenWidth * (15 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            Container(
                              height: screenHeight * (39.3 / screenHeight),
                              width: screenWidth * (313 / screenWidth),
                              padding: EdgeInsets.only(
                                top: screenHeight * (9 / screenHeight),
                                bottom: screenHeight * (6 / screenHeight),
                                left: screenWidth * (15 / screenWidth),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              child: Text(
                                'Madrid',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight * (70 / screenHeight),
                        width: screenWidth * (313 / screenWidth),
                        margin: EdgeInsets.only(
                          top: screenHeight * (15 / screenHeight),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Postal code',
                              style: TextStyle(
                                fontSize: screenWidth * (15 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            Container(
                              height: screenHeight * (39.3 / screenHeight),
                              width: screenWidth * (313 / screenWidth),
                              padding: EdgeInsets.only(
                                top: screenHeight * (9 / screenHeight),
                                bottom: screenHeight * (6 / screenHeight),
                                left: screenWidth * (15 / screenWidth),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              child: Text(
                                '1756',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: screenHeight * (70 / screenHeight),
                        width: screenWidth * (313 / screenWidth),
                        margin: EdgeInsets.only(
                          top: screenHeight * (15 / screenHeight),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: screenWidth * (15 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFA5A5A5),
                              ),
                            ),
                            Container(
                              height: screenHeight * (39.3 / screenHeight),
                              width: screenWidth * (313 / screenWidth),
                              padding: EdgeInsets.only(
                                top: screenHeight * (9 / screenHeight),
                                bottom: screenHeight * (6 / screenHeight),
                                left: screenWidth * (15 / screenWidth),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.white,
                              ),
                              child: Text(
                                '(119)559-5623',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenHeight * (50 / screenHeight)),
                Card(
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
                        'Add Address',
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
                SizedBox(height: screenHeight * (30 / screenHeight)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
