import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginpage.dart';

class Resetpassword extends StatefulWidget {
  const Resetpassword({super.key});

  @override
  State<Resetpassword> createState() => _ResetpasswordState();
}

class _ResetpasswordState extends State<Resetpassword> {
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
        color: Color(0xFFF8F8F8),
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
                        child: Icon(
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
                height: screenHeight * (320 / screenHeight),
                width: screenWidth * (320 / screenWidth),
                child: Column(
                  children: [
                    InkWell(
                      child: Text(
                        'Reset Password',
                        style: TextStyle(
                          color: Color(0xFF1A237E),
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * (15 / screenHeight)),
                    Text(
                      'Enter new Password',
                      style: TextStyle(
                        color: Color(0x80222222),
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: screenHeight * (15 / screenHeight)),

                    // Password field
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
                        child: Text(
                          'enter-password',
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

                    // Confirm password field
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
                        child: Text(
                          're-enter password',
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

                    // Submit button
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => LoginPage()),
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
                            color: Color(0xFF1A237E),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              'Submit',
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
                    SizedBox(height: screenHeight * (30 / screenHeight)),
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
