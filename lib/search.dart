import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * (48 / screenHeight),
                margin: EdgeInsets.only(
                  top: screenHeight * (15 / screenHeight),
                ),
                padding: EdgeInsets.only(
                  left: screenWidth * (15 / screenWidth),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: screenWidth * (120 / screenWidth)),
                    const Text(
                      'SEARCH',
                      style: TextStyle(
                        color: Color(0xFF1A237E),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: screenWidth * (343 / screenWidth),
                height: screenHeight * (48 / screenHeight),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Color(0xFF1A237E)),
                    SizedBox(width: screenWidth * (10 / screenWidth)),
                    const Text(
                      'Au  |',
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF1A237E),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: screenWidth * (343 / screenWidth),
                height: screenHeight * (192 / screenHeight),
                margin: EdgeInsets.only(
                  top: screenHeight * (20 / screenHeight),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (15 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFF1F9FF)),
                        ),
                      ),
                      child: const Text(
                        'Audi Q8 engine 2015',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (15 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFF1F9FF)),
                        ),
                      ),
                      child: const Text(
                        'Audi suspension 2 locks',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (15 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFF1F9FF)),
                        ),
                      ),
                      child: const Text(
                        'Audi brake system 2001',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (15 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      child: const Text(
                        'Audi gear kit 2018',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: screenHeight * (25 / screenHeight)),

              Container(
                width: screenWidth * (343 / screenWidth),
                height: screenHeight * (192 / screenHeight),
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (12 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFF1F9FF)),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Color(0xFFBCE0FD)),
                          SizedBox(width: screenWidth * (15 / screenWidth)),
                          const Text(
                            'Audi Q8 engine 2015',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF1A237E),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (12 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFF1F9FF)),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Color(0xFFBCE0FD)),
                          SizedBox(width: screenWidth * (15 / screenWidth)),
                          const Text(
                            'Audi Q8 engine 2015',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF1A237E),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (12 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFF1F9FF)),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Color(0xFFBCE0FD)),
                          SizedBox(width: screenWidth * (15 / screenWidth)),
                          const Text(
                            'Audi Q8 engine 2015',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF1A237E),
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: screenWidth * (311 / screenWidth),
                      height: screenHeight * (48 / screenHeight),
                      padding: EdgeInsets.only(
                        top: screenHeight * (12 / screenHeight),
                        bottom: screenHeight * (12 / screenHeight),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Color(0xFFBCE0FD)),
                          SizedBox(width: screenWidth * (15 / screenWidth)),
                          const Text(
                            'Audi Q8 engine 2015',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF1A237E),
                              fontFamily: 'Montserrat',
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
    );
  }
}
