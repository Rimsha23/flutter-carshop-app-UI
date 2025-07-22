import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_application_2/featuredproducts.dart';
import 'package:flutter_application_2/model/latestproductmodel.dart';
import 'package:flutter_application_2/notifications.dart';
import 'package:flutter_application_2/partssearch.dart';
import 'package:flutter_application_2/search.dart';
import 'package:flutter_application_2/shoppingcart.dart';
import 'model/featuredproductsmodel.dart';

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
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
                height: screenHeight * (50 / screenHeight),
                width: screenWidth,
                padding: EdgeInsets.only(
                  top: screenHeight * (10 / screenHeight),
                  left: screenWidth * (35 / screenWidth),
                  right: screenWidth * (25 / screenWidth),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: screenHeight * (35 / screenHeight),
                      width: screenWidth * (25 / screenWidth),
                      child: Image.asset('assets/menu_icon.png'),
                    ),
                    SizedBox(
                      width: screenWidth * (90 / screenWidth),
                      height: screenHeight * (50 / screenHeight),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications,
                            size: screenWidth * (28 / screenWidth),
                            color: const Color(0xFF1A237E),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Notifications(),
                                ),
                              );
                            },
                            child: SizedBox(
                              height: screenHeight * (32 / screenHeight),
                              width: screenWidth * (21 / screenWidth),
                              child: Image.asset('assets/group_2535@3x.png'),
                            ),
                          ),
                          SizedBox(width: screenWidth * (8 / screenWidth)),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => Shoppingcart(),
                                ),
                              );
                            },
                            child: Transform(
                              alignment: Alignment.center,
                              transform: Matrix4.rotationY(pi),
                              child: Icon(
                                Icons.shopping_cart_outlined,
                                size: screenWidth * (28 / screenWidth),
                                color: const Color(0xFF1A237E),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * (35 / screenHeight)),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => Search()),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  elevation: 8,
                  child: Container(
                    width: screenWidth * (320 / screenWidth),
                    height: screenHeight * (47 / screenHeight),
                    padding: EdgeInsets.symmetric(
                      vertical: screenHeight * (12 / screenHeight),
                      horizontal: screenWidth * (18 / screenWidth),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: const Color(0xFF1A237E),
                          size: screenWidth * (22 / screenWidth),
                        ),
                        SizedBox(width: screenWidth * (10 / screenWidth)),
                        Text(
                          'Search name or chassis number',
                          style: TextStyle(
                            fontSize: screenWidth * (14 / screenWidth),
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: const Color(0x80222222),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * (20 / screenHeight)),
              Container(
                height: screenHeight * (265 / screenHeight),
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * (30 / screenWidth),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Partssearch()),
                            );
                          },
                          child: Text(
                            'Featured Products',
                            style: TextStyle(
                              color: const Color(0xFF1A237E),
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth * (16 / screenWidth),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Featuredproducts(),
                              ),
                            );
                          },
                          child: Text(
                            'View All',
                            style: TextStyle(
                              color: const Color(0x80222222),
                              fontFamily: 'Montserrat',
                              fontSize: screenWidth * (13 / screenWidth),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * (220 / screenHeight),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: featuredProducts.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: screenWidth * (164 / screenWidth),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: screenHeight * (200 / screenHeight),
                                  width: screenWidth * (144 / screenWidth),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            screenHeight * (150 / screenHeight),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        child: Image.asset(
                                          featuredProducts[index].imageUrl,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            screenHeight * (10 / screenHeight),
                                      ),
                                      Text(
                                        featuredProducts[index].partName,
                                        style: TextStyle(
                                          color: const Color(0xFF5E7FB1),
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              screenWidth * (13 / screenWidth),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        featuredProducts[index].modelName,
                                        style: TextStyle(
                                          color: const Color(0xFFD32F2F),
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              screenWidth * (15 / screenWidth),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * (20 / screenWidth),
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
              SizedBox(height: screenHeight * (10 / screenHeight)),
              Container(
                height: screenHeight * (265 / screenHeight),
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * (30 / screenWidth),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Latest Products',
                          style: TextStyle(
                            color: const Color(0xFF1A237E),
                            fontFamily: 'Montserrat',
                            fontSize: screenWidth * (16 / screenWidth),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: const Color(0x80222222),
                            fontFamily: 'Montserrat',
                            fontSize: screenWidth * (13 / screenWidth),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * (220 / screenHeight),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: latestProducts.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            width: screenWidth * (164 / screenWidth),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: screenHeight * (200 / screenHeight),
                                  width: screenWidth * (144 / screenWidth),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height:
                                            screenHeight * (150 / screenHeight),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            5,
                                          ),
                                        ),
                                        child: Image.asset(
                                          latestProducts[index].imageUrl,
                                        ),
                                      ),
                                      SizedBox(
                                        height:
                                            screenHeight * (10 / screenHeight),
                                      ),
                                      Text(
                                        latestProducts[index].partName,
                                        style: TextStyle(
                                          color: const Color(0xFF5E7FB1),
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              screenWidth * (13 / screenWidth),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        latestProducts[index].modelName,
                                        style: TextStyle(
                                          color: const Color(0xFFD32F2F),
                                          fontFamily: 'Montserrat',
                                          fontSize:
                                              screenWidth * (15 / screenWidth),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * (20 / screenWidth),
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
            ],
          ),
        ),
      ),
    );
  }
}
