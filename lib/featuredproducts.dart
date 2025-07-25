import 'package:flutter/material.dart';
import 'package:flutter_application_2/productdetails.dart';

class Featuredproducts extends StatefulWidget {
  const Featuredproducts({super.key});

  @override
  State<Featuredproducts> createState() => _FeaturedproductsState();
}

class _FeaturedproductsState extends State<Featuredproducts> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> featuredProducts = [
      {
        'imageUrl': 'assets/tyres.png',
        'part': 'Jeep BF Goodrich Tires',
        'price': 'AED 33',
      },
      {
        'imageUrl': 'assets/brakes.png',
        'part': 'Jeep Power Stop Brakes',
        'price': 'AED 29',
      },
      {
        'imageUrl': 'assets/rectangle_492@3x.png',
        'part': 'RT Off-Road Jeep Accessories & Parts',
        'price': 'AED 41',
      },
      {
        'imageUrl': 'assets/rectangle_501@3x.png',
        'part': 'Jeep Rubicon Express Suspension',
        'price': 'AED 34',
      },
    ];
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                    image: AssetImage('assets/featured.png'),
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
                    Center(
                      child: Container(
                        height: screenHeight * 35 / screenHeight,
                        width: screenWidth * 250 / screenWidth,
                        margin: EdgeInsets.only(
                          top: screenHeight * 230 / screenHeight,
                        ),
                        child: Center(
                          child: Text(
                            'Featured Products',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 30 / screenHeight,
                width: screenWidth,
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: Color(0xFFD32F2F),
                          ),
                        ),
                      ),
                      child: Text(
                        'Honda',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0xFF1A237E),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'Audi',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0x401A227D),
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        'Mercedes',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Montserrat',
                          color: Color(0x401A227D),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 275,
                padding: EdgeInsets.only(left: 20, right: 50),
                margin: EdgeInsets.only(top: 15),
                child: Expanded(
                  child: ListView.builder(
                    itemCount: featuredProducts.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 110,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => Productdetails(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              SizedBox(
                                height: 97,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 97,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      child: Image.asset(
                                        featuredProducts[index]['imageUrl']!,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 97,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            featuredProducts[index]['part']!,
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFF1A237E),
                                            ),
                                          ),
                                          Text(
                                            featuredProducts[index]['price']!,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Montserrat',
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
                      );
                    },
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
