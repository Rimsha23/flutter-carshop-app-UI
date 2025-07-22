import 'package:flutter/material.dart';
import 'package:flutter_application_2/walkthrough.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: 800,
        width: screenWidth,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: screenWidth * (344 / 375),
                child: Center(
                  child: SizedBox(
                    height: 47.67,
                    width: screenWidth * (149.94 / 375),
                    child: Image.asset('assets/logo@3x.png'),
                  ),
                ),
              ),
              Container(
                height: 490,
                padding: EdgeInsets.only(bottom: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 4,
                        child: Container(
                          width: screenWidth * (344 / 375),
                          height: 376,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: screenWidth * (344 / 375),
                                height: 213,
                                padding: EdgeInsets.only(left: 17, top: 35),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 0.25,
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 64.61,
                                      width: screenWidth * (65.64 / 375),
                                      child: Image.asset('assets/icon@3x.png'),
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      'Choose Your Preferred Language',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w800,
                                        color: Color(0xFF5D5D5D),
                                      ),
                                    ),
                                    Text(
                                      'Please select your language',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFFB4B4B4),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 80,
                                padding: EdgeInsets.only(left: 12),
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      width: 0.25,
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Walkthrough(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      left: 18,
                                      right: 25,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 37,
                                              width: screenWidth * (37 / 375),
                                              child: Image.asset(
                                                'assets/french_flag@3x.png',
                                              ),
                                            ),
                                            SizedBox(width: 25),
                                            Text(
                                              'Arabic',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Exo',
                                                color: Color(0xFF474747),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 20,
                                          width: screenWidth * (20 / 375),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1A237E),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 81,
                                padding: EdgeInsets.only(left: 12),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Walkthrough(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(
                                      left: 18,
                                      right: 25,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                              height: 37,
                                              width: screenWidth * (37 / 375),
                                              child: Image.asset(
                                                'assets/english_flag@3x.png',
                                              ),
                                            ),
                                            SizedBox(width: 25),
                                            Text(
                                              'English',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Exo',
                                                color: Color(0xFF474747),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 20,
                                          width: screenWidth * (20 / 375),
                                          decoration: BoxDecoration(
                                            color: Color(0xFF1A237E),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 12,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: screenWidth * (133 / 375),
                      decoration: BoxDecoration(
                        color: Color(0xFFE8E8E8),
                        borderRadius: BorderRadius.circular(20),
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
