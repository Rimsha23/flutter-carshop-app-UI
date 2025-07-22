import 'package:flutter/material.dart';
import 'package:flutter_application_2/tyresandwheels.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({super.key});

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  List<Map<String, String>> categories = [
    {'title': 'Engine parts', 'imgUrl': 'assets/rectangle_488@3x.png'},
    {'title': 'Lights', 'imgUrl': 'assets/rectangle_489@3x.png'},
    {'title': 'Tyres & Wheels', 'imgUrl': 'assets/rectangle_492@3x.png'},
    {'title': 'Brake system', 'imgUrl': 'assets/rectangle_493@3x.png'},
    {'title': 'Service Parts', 'imgUrl': 'assets/rectangle_494@3x.png'},
    {'title': 'Filters', 'imgUrl': 'assets/rectangle_497@3x.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        color: Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 300 / screenHeight,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage('assets/rectangle_497@3x.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: screenHeight * 35 / screenHeight,
                      width: screenWidth * 35 / screenWidth,
                      margin: EdgeInsets.only(
                        top: screenHeight * 20 / screenHeight,
                        left: screenWidth * 15 / screenWidth,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: screenHeight * 35 / screenHeight,
                      width: screenWidth * 250 / screenWidth,
                      margin: EdgeInsets.only(
                        top: screenHeight * 230 / screenHeight,
                        left: screenWidth * 100 / screenWidth,
                      ),
                      child: Text(
                        '4X4 Catalogue',
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
              SizedBox(height: screenHeight * 20 / screenHeight),
              Container(
                height: screenHeight * 45 / screenHeight,
                padding: EdgeInsets.only(
                  left: screenWidth * 25 / screenWidth,
                  right: screenWidth * 25 / screenWidth,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: screenWidth * 8 / screenWidth,
                        right: screenWidth * 8 / screenWidth,
                      ),
                      width: screenWidth * 245 / screenWidth,
                      height: screenHeight * 42 / screenHeight,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xFF1A237E)),
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Gladiator mojova 2020',
                            style: TextStyle(
                              color: Color(0xFF1A237E),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          Icon(Icons.close, color: Color(0xFF1A237E), size: 18),
                        ],
                      ),
                    ),
                    Icon(Icons.filter_alt, color: Color(0xFF1A237E), size: 30),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 245 / screenHeight,
                width: screenWidth,
                margin: EdgeInsets.only(
                  top: screenHeight * 30 / screenHeight,
                  left: screenWidth * 20 / screenWidth,
                  right: screenWidth * 20 / screenWidth,
                ),
                child: ListView.builder(
                  itemCount: (categories.length / 2).ceil(),
                  itemBuilder: (context, index) {
                    var firstIndex = index * 2;
                    var secondIndex = firstIndex + 1;
                    return SizedBox(
                      height: screenHeight * 210 / screenHeight,
                      width: screenWidth * 210 / screenWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => Tyresandwheels(),
                                ),
                              );
                            },
                            child: SizedBox(
                              width: screenWidth * 150 / screenWidth,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenHeight * 150 / screenHeight,
                                    width: screenWidth * 150 / screenWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          categories[firstIndex]['imgUrl']!,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 10 / screenHeight,
                                  ),
                                  Text(
                                    categories[firstIndex]['title']!,
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
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => Tyresandwheels(),
                                ),
                              );
                            },
                            child: SizedBox(
                              width: screenWidth * 150 / screenWidth,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: screenHeight * 150 / screenHeight,
                                    width: screenWidth * 150 / screenWidth,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          categories[secondIndex]['imgUrl']!,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenHeight * 10 / screenHeight,
                                  ),
                                  Text(
                                    categories[secondIndex]['title']!,
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
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
