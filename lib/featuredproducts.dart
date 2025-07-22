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

    return Scaffold(
      body: Container(
        height: 812,
        width: 375,
        color: Color(0xFFF8F8F8),
        child: Column(
          children: [
            Container(
              height: 300,
              width: 375,
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
                    height: 35,
                    width: 35,
                    margin: EdgeInsets.only(top: 20, left: 15),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 250,
                    margin: EdgeInsets.only(top: 230, left: 80),
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
                ],
              ),
            ),
            Container(
              height: 30,
              width: 375,
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 2, color: Color(0xFFD32F2F)),
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
                    return Container(
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
                            Container(
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
                                  Container(
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
    );
  }
}
