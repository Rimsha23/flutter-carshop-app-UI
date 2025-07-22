import 'package:flutter/material.dart';
import 'package:flutter_application_2/productdetails.dart';

class Tyresandwheels extends StatefulWidget {
  const Tyresandwheels({super.key});

  @override
  State<Tyresandwheels> createState() => _TyresandwheelsState();
}

class _TyresandwheelsState extends State<Tyresandwheels> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: const Color(0xFFF8F8F8),
        child: Column(
          children: [
            Container(
              height: screenHeight * (300 / screenHeight),
              width: screenWidth,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/rectangle_496@3x.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: screenHeight * (35 / screenHeight),
                    width: screenWidth * (35 / screenWidth),
                    margin: EdgeInsets.only(
                      top: screenHeight * (20 / screenHeight),
                      left: screenWidth * (15 / screenWidth),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  Container(
                    height: screenHeight * (35 / screenHeight),
                    width: screenWidth * (250 / screenWidth),
                    margin: EdgeInsets.only(
                      top: screenHeight * (230 / screenHeight),
                      left: screenWidth * (100 / screenWidth),
                    ),
                    child: const Text(
                      'Tyres and Wheels',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenHeight * (290 / screenHeight),
              width: screenWidth,
              margin: EdgeInsets.only(
                top: screenHeight * (30 / screenHeight),
                left: screenWidth * (20 / screenWidth),
                right: screenWidth * (20 / screenWidth),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Productdetails(),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: screenHeight * (230 / screenHeight),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: screenWidth * (150 / screenWidth),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenHeight * (150 / screenHeight),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/tyres.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * (13 / screenHeight),
                                  ),
                                  const Text(
                                    'Jeep BF Goodrich Tires',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1A237E),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * (5 / screenHeight),
                                  ),
                                  const Text(
                                    'AED 33',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFD32F2F),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * (150 / screenWidth),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenHeight * (150 / screenHeight),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: const DecorationImage(
                                        image: AssetImage('assets/brakes.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * (13 / screenHeight),
                                  ),
                                  const Text(
                                    'Jeep Power Stop Brakes',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF1A237E),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * (5 / screenHeight),
                                  ),
                                  const Text(
                                    'AED 29',
                                    style: TextStyle(
                                      fontSize: 16,
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
                    ),
                    SizedBox(height: screenHeight * (10 / screenHeight)),
                    SizedBox(
                      height: screenHeight * (230 / screenHeight),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: screenWidth * (150 / screenWidth),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: screenHeight * (150 / screenHeight),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/rectangle_492@3x.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * (13 / screenHeight),
                                ),
                                const Text(
                                  'RT Off-Road Jeep Accessories & Parts',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1A237E),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * (5 / screenHeight),
                                ),
                                const Text(
                                  'AED 41',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFD32F2F),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: screenWidth * (150 / screenWidth),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: screenHeight * (150 / screenHeight),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/rectangle_501@3x.png',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * (13 / screenHeight),
                                ),
                                const Text(
                                  'Jeep Rubicon Express Suspension',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF1A237E),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * (5 / screenHeight),
                                ),
                                const Text(
                                  'AED 34',
                                  style: TextStyle(
                                    fontSize: 16,
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
