import 'package:flutter/material.dart';

class Partyear extends StatefulWidget {
  const Partyear({super.key});

  @override
  State<Partyear> createState() => _PartyearState();
}

class _PartyearState extends State<Partyear> {
  List<String> year = [
    "2000",
    "2001",
    "2002",
    "2003",
    "2004",
    "2005",
    "2006",
    "2007",
    "2008",
    "2009",
    "2010",
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
    "2023",
    "2024",
    "2025",
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 170 / screenHeight,
                child: Center(
                  child: Text(
                    'Select year',
                    style: TextStyle(
                      fontSize: screenHeight * 22 / screenHeight,
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
                  itemCount: year.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: screenHeight * 45 / screenHeight,
                      child: Column(
                        children: [
                          Text(
                            year[index],
                            style: TextStyle(
                              fontSize: screenHeight * 23 / screenHeight,
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
