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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        color: const Color(0xFFF8F8F8),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: screenHeight * (450 / screenHeight),
                      width: screenWidth,
                      padding: EdgeInsets.only(
                        top: screenHeight * (5 / screenHeight),
                        bottom: screenHeight * (15 / screenHeight),
                        left: screenWidth * (15 / screenWidth),
                        right: screenWidth * (15 / screenWidth),
                      ),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Container(
                        height: screenHeight * (430 / screenHeight),
                        width: screenWidth * (320 / screenWidth),
                        decoration: const BoxDecoration(
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
                                width: screenWidth * (35 / screenWidth),
                                height: screenHeight * (35 / screenHeight),
                                margin: EdgeInsets.only(
                                  top: screenHeight * (10 / screenHeight),
                                  left: screenWidth * (5 / screenWidth),
                                ),
                                child: const Icon(Icons.arrow_back),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (15 / screenHeight)),
                    Container(
                      height: screenHeight * (60 / screenHeight),
                      width: screenWidth * (280 / screenWidth),
                      margin: EdgeInsets.only(
                        left: screenWidth * (25 / screenWidth),
                      ),
                      child: const Text(
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
                      height: screenHeight * (75 / screenHeight),
                      width: screenWidth * (305 / screenWidth),
                      margin: EdgeInsets.only(
                        left: screenWidth * (20 / screenWidth),
                      ),
                      child: const Text(
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
                      height: screenHeight * (105 / screenHeight),
                      width: screenWidth * (305 / screenWidth),
                      margin: EdgeInsets.only(
                        left: screenWidth * (20 / screenWidth),
                      ),
                      child: const Text(
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
              height: screenHeight * (70 / screenHeight),
              width: screenWidth,
              padding: EdgeInsets.only(
                left: screenWidth * (25 / screenWidth),
                right: screenWidth * (25 / screenWidth),
              ),
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: screenHeight * (25 / screenHeight),
                      bottom: screenHeight * (25 / screenHeight),
                    ),
                    child: const Text(
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
                        MaterialPageRoute(
                          builder: (builder) => const Shoppingcart(),
                        ),
                      );
                    },
                    child: Container(
                      height: screenHeight * (47 / screenHeight),
                      width: screenWidth * (202 / screenWidth),
                      decoration: BoxDecoration(
                        color: const Color(0xFF1A237E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(
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
