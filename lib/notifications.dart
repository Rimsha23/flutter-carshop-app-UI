import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color(0xFFF8F8F8),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: screenHeight * 50 / screenHeight,
                padding: EdgeInsets.only(
                  top: screenHeight * 25 / screenHeight,
                  left: screenWidth * 25 / screenWidth,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(width: screenWidth * 90 / screenWidth),
                    Center(
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1A237E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * 518 / screenHeight,
                margin: EdgeInsets.only(top: screenHeight * 40 / screenHeight),
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: screenHeight * 172 / screenHeight,

                      child: Column(
                        children: [
                          SizedBox(
                            height: screenHeight * 74 / screenHeight,
                            width: screenWidth,

                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1,
                                        color: Color(0xFFA5A5A5),
                                      ),
                                    ),
                                  ),
                                  height: screenHeight * 74 / screenHeight,
                                  width: screenWidth,
                                  padding: EdgeInsets.only(
                                    left: screenWidth * 35 / screenWidth,
                                    right: screenWidth * 35 / screenWidth,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        margin: EdgeInsets.only(
                                          top: screenHeight * 8 / screenHeight,
                                        ),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset(
                                          'assets/shopping_bag.png',
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height:
                                            screenHeight * 74 / screenHeight,
                                        width: screenWidth * 0.68,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: screenWidth * 0.8,
                                              height: 40,
                                              child: Text(
                                                'Aenean non accumsan ante. Duis  et risus accumsan sem tempus ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFFA5A5A5),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                              child: Text(
                                                '1 hour ago ',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0x80222222),
                                                ),
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
                          SizedBox(height: screenHeight * 10 / screenHeight),
                          SizedBox(
                            height: screenHeight * 74 / screenHeight,
                            width: screenWidth,

                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        width: 1,
                                        color: Color(0x80222222),
                                      ),
                                    ),
                                  ),
                                  height: 74,
                                  width: screenWidth,
                                  padding: EdgeInsets.only(left: 35, right: 35),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 35,
                                        width: 35,
                                        margin: EdgeInsets.only(top: 8),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.asset('assets/save.png'),
                                      ),
                                      SizedBox(width: 10),
                                      SizedBox(
                                        height:
                                            screenHeight * 74 / screenHeight,
                                        width: screenWidth * 0.68,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              width: screenWidth * 0.8,
                                              height: 40,
                                              child: Text(
                                                'Aenean non accumsan ante. Duis  et risus accumsan sem tempus ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color(0xFFA5A5A5),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 16,
                                              child: Text(
                                                '1 hour ago ',
                                                style: TextStyle(
                                                  fontSize: 11,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.w500,
                                                  color: Color(0x80222222),
                                                ),
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
                          SizedBox(height: 10),
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
