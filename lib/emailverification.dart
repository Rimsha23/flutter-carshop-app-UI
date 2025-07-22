import 'package:flutter/material.dart';
import 'package:flutter_application_2/resendemail.dart';
import 'package:flutter_application_2/resetpassword.dart';

class Emailverification extends StatefulWidget {
  const Emailverification({super.key});

  @override
  State<Emailverification> createState() => _EmailverificationState();
}

class _EmailverificationState extends State<Emailverification> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.only(
          top: screenHeight * (8 / screenHeight),
          left: screenWidth * (20 / screenWidth),
        ),
        color: const Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: screenWidth * (175 / screenWidth),
                    height: screenHeight * (160 / screenHeight),
                    child: Center(
                      child: SizedBox(
                        width: screenWidth * (175 / screenWidth),
                        height: screenHeight * (60 / screenHeight),
                        child: Image.asset('assets/logo@3x.png'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * (240 / screenHeight),
                width: screenWidth * (320 / screenWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Text(
                        'Enter Code',
                        style: TextStyle(
                          color: const Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth * (14 / screenWidth),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'enter a verification code we sent \n you on your email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0x80222222),
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth * (14 / screenWidth),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 4,
                          child: Container(
                            width: screenWidth * (55 / screenWidth),
                            height: screenHeight * (47 / screenHeight),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0x80222222),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            width: screenWidth * (55 / screenWidth),
                            height: screenHeight * (47 / screenHeight),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0x80222222),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            width: screenWidth * (60 / screenWidth),
                            height: screenHeight * (55 / screenHeight),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0x80222222),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          elevation: 4,
                          child: Container(
                            width: screenWidth * (60 / screenWidth),
                            height: screenHeight * (55 / screenHeight),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                  fontSize: screenWidth * (14 / screenWidth),
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.normal,
                                  color: const Color(0x80222222),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Resetpassword(),
                          ),
                        );
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        elevation: 4,
                        child: Container(
                          width: screenWidth * (320 / screenWidth),
                          height: screenHeight * (47 / screenHeight),
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * (12 / screenHeight),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A237E),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              'Verify',
                              style: TextStyle(
                                fontSize: screenWidth * (14 / screenWidth),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * (30 / screenHeight)),
              SizedBox(
                width: screenWidth,
                height: screenHeight * (80 / screenHeight),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'not received?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0x80222222),
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth * (14 / screenWidth),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (builder) => const Resendemail(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Resend Code   ',
                                style: TextStyle(
                                  color: const Color(0xFF1A237E),
                                  fontFamily: 'Montserrat',
                                  fontSize: screenWidth * (16 / screenWidth),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF1A237E),
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
