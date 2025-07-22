import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/brandselection.dart';
import 'package:flutter_application_2/catalogue.dart';
import 'package:flutter_application_2/modelselection.dart';
import 'package:flutter_application_2/partyear.dart';

class Partssearch extends StatefulWidget {
  const Partssearch({super.key});

  @override
  State<Partssearch> createState() => _PartssearchState();
}

class _PartssearchState extends State<Partssearch> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: const Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 70 / 812 * screenHeight,
                padding: EdgeInsets.only(
                  top: 15 / screenHeight * screenHeight,
                  left: 20 / screenWidth * screenWidth,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  ],
                ),
              ),
              Container(
                height: 110 / screenHeight * screenHeight,
                width: screenWidth,
                margin: EdgeInsets.only(top: 15 / screenHeight * screenHeight),
                padding: EdgeInsets.only(
                  left: 70 / screenWidth * screenWidth,
                  right: 70 / screenWidth * screenWidth,
                ),
                child: const Text(
                  'Find parts for 4x4 \n and adventures',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1A237E),
                  ),
                ),
              ),
              SizedBox(
                height: 320 / screenHeight * screenHeight,
                width: 320 / screenWidth * screenWidth,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Brandselection(),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 4,
                        child: Container(
                          width: 320 / screenWidth * screenWidth,
                          height: 47 / screenHeight * screenHeight,
                          padding: EdgeInsets.only(
                            top: 12 / screenHeight * screenHeight,
                            bottom: 12 / screenHeight * screenHeight,
                            left: 18 / screenWidth * screenWidth,
                            right: 15 / screenWidth * screenWidth,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Brand Name',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0x80222222),
                                ),
                              ),
                              Transform.rotate(
                                angle: pi / 2,
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF1A237E),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Modelselection(),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 4,
                        child: Container(
                          width: 320 / screenWidth * screenWidth,
                          height: 47 / screenHeight * screenHeight,
                          padding: EdgeInsets.only(
                            top: 12 / screenHeight * screenHeight,
                            bottom: 12 / screenHeight * screenHeight,
                            left: 18 / screenWidth * screenWidth,
                            right: 15 / screenWidth * screenWidth,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Model Name',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0x80222222),
                                ),
                              ),
                              Transform.rotate(
                                angle: pi / 2,
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF1A237E),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10 / screenHeight * screenHeight),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Partyear(),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 4,
                        child: Container(
                          width: 320 / screenWidth * screenWidth,
                          height: 47 / screenHeight * screenHeight,
                          padding: EdgeInsets.only(
                            top: 12 / screenHeight * screenHeight,
                            bottom: 12 / screenHeight * screenHeight,
                            left: 18 / screenWidth * screenWidth,
                            right: 15 / screenWidth * screenWidth,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Parts Year',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: Color(0x80222222),
                                ),
                              ),
                              Transform.rotate(
                                angle: pi / 2,
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xFF1A237E),
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30 / screenHeight * screenHeight),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Catalogue(),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 4,
                        child: Container(
                          width: 320 / screenWidth * screenWidth,
                          height: 47 / screenHeight * screenHeight,
                          padding: EdgeInsets.only(
                            top: 12 / screenHeight * screenHeight,
                            bottom: 12 / screenHeight * screenHeight,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A237E),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'Search',
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
                    SizedBox(height: 10 / screenHeight * screenHeight),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
