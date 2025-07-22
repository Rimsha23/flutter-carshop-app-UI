import 'package:flutter/material.dart';
import 'package:flutter_application_2/emailverification.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
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
                    height: screenHeight * (200 / screenHeight),
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
                height: screenHeight * (200 / screenHeight),
                width: screenWidth * (320 / screenWidth),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Center(
                      child: Text(
                        'Forgot Password?',
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
                        'enter email address to receive a \n  4 digit verification code',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0x80222222),
                          fontFamily: 'Montserrat',
                          fontSize: screenWidth * (14 / screenWidth),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 4,
                      child: Container(
                        width: screenWidth * (320 / screenWidth),
                        height: screenHeight * (47 / screenHeight),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Center(
                          child: Text(
                            'E-mail',
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Emailverification(),
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
                              'Submit',
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
            ],
          ),
        ),
      ),
    );
  }
}
