import 'package:flutter/material.dart';

class Brandselection extends StatefulWidget {
  const Brandselection({super.key});

  @override
  State<Brandselection> createState() => _BrandselectionState();
}

class _BrandselectionState extends State<Brandselection> {
  List<String> carBrands = [
    'Gladiator',
    'Jeep',
    'Land Rover',
    'Range Rover',
    'Mercedes-Benz',
    'Nissan Frontier',
    'Toyota',
    'Gladiator',
    'Jeep',
    'Land Rover',
    'Range Rover',
    'Mercedes-Benz',
    'Nissan Frontier',
    'Toyota',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 150 / screenHeight,
                child: Center(
                  child: Text(
                    'Select brand',
                    style: TextStyle(
                      fontSize: screenWidth * 22 / screenWidth,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF1A237E),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 310 / screenHeight,
                width: screenWidth * 196 / screenWidth,
                child: ListView.builder(
                  itemCount: carBrands.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: screenHeight * 45 / screenHeight,
                      child: Column(
                        children: [
                          Text(
                            carBrands[index],
                            style: TextStyle(
                              fontSize: screenWidth * 23 / screenWidth,
                              fontWeight: FontWeight.w600,
                              color: const Color(0x80222222),
                            ),
                          ),
                          SizedBox(height: screenHeight * 10 / screenHeight),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: screenHeight * 70 / screenHeight,
                width: screenWidth * 70 / screenWidth,
                margin: EdgeInsets.only(top: screenHeight * 40 / screenHeight),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Center(
                    child: Icon(Icons.close, color: Color(0xFF1A237E)),
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
