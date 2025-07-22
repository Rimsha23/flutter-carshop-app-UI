import 'package:flutter/material.dart';
import 'package:flutter_application_2/forgotpassword.dart';
import 'package:flutter_application_2/home1.dart';
import 'package:flutter_application_2/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: const Color(0xFFF8F8F8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: screenWidth * (175 / screenWidth),
                height: screenHeight * (150 / screenHeight),
                child: Center(
                  child: SizedBox(
                    width: screenWidth * (175 / screenWidth),
                    height: screenHeight * (60 / screenHeight),
                    child: Image.asset('assets/logo@3x.png'),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * (260 / screenHeight),
                width: screenWidth * (320 / screenWidth),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 4,
                      child: Container(
                        width: screenWidth * (320 / screenWidth),
                        height: screenHeight * (47 / screenHeight),
                        padding: EdgeInsets.only(
                          top: screenHeight * (12 / screenHeight),
                          bottom: screenHeight * (12 / screenHeight),
                          left: screenWidth * (18 / screenWidth),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text(
                          'E-mail',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: Color(0x80222222),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (10 / screenHeight)),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      elevation: 4,
                      child: Container(
                        width: screenWidth * (320 / screenWidth),
                        height: screenHeight * (47 / screenHeight),
                        padding: EdgeInsets.only(
                          top: screenHeight * (12 / screenHeight),
                          bottom: screenHeight * (12 / screenHeight),
                          left: screenWidth * (18 / screenWidth),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: Color(0x80222222),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (15 / screenHeight)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => Home1()),
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
                          padding: EdgeInsets.only(
                            top: screenHeight * (12 / screenHeight),
                            bottom: screenHeight * (12 / screenHeight),
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFF1A237E),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (10 / screenHeight)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const Forgotpassword(),
                          ),
                        );
                      },
                      child: const Text(
                        'Forgot Your Password?',
                        style: TextStyle(
                          color: Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (30 / screenHeight)),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * (55 / screenHeight),
                width: screenWidth * (200 / screenWidth),
                child: Column(
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Color(0xFF1A237E),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: screenHeight * (8 / screenHeight)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (builder) => const SignUpPage(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Register ',
                            style: TextStyle(
                              color: Color(0xFFD32F2F),
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFD32F2F),
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: screenHeight * (22 / screenHeight),
                padding: EdgeInsets.only(
                  right: screenWidth * (30 / screenWidth),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Skip ',
                      style: TextStyle(
                        color: Color(0xFF1A237E),
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF1A237E),
                      size: 16,
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
