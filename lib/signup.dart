import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 375,
        height: 812,
        padding: EdgeInsets.only(top: 8, left: 20),
        color: Color(0xFFF8F8F8),
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
                      child: Icon(Icons.arrow_back_ios, color: Colors.black38),
                    ),
                  ],
                ),
                SizedBox(
                  width: 175,
                  height: 200,
                  child: Center(
                    child: SizedBox(
                      width: 175,
                      height: 60,
                      child: Image.asset('assets/logo@3x.png'),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 320,
              width: 320,
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                    child: Container(
                      width: 320,
                      height: 47,
                      padding: EdgeInsets.only(top: 12, bottom: 12, left: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                          color: Color(0x80222222),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                    child: Container(
                      width: 320,
                      height: 47,
                      padding: EdgeInsets.only(top: 12, bottom: 12, left: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
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
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                    child: Container(
                      width: 320,
                      height: 47,
                      padding: EdgeInsets.only(top: 12, bottom: 12, left: 18),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
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
                  SizedBox(height: 15),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                    child: Container(
                      width: 320,
                      height: 47,
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF1A237E),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
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
                  SizedBox(height: 10),
                  InkWell(
                    child: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        color: Color(0xFF1A237E),
                        decoration: TextDecoration.underline,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
