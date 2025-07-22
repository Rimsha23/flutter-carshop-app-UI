import 'package:flutter/material.dart';
import 'package:flutter_application_2/home1.dart';

class Orderplaced extends StatefulWidget {
  const Orderplaced({super.key});

  @override
  State<Orderplaced> createState() => _OrderplacedState();
}

class _OrderplacedState extends State<Orderplaced> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        color: Color(0xFFF8F8F8),
        child: Center(
          child: Container(
            height: 335,
            padding: EdgeInsets.only(
              left: screenWidth * 50 / screenWidth,
              right: screenWidth * 50 / screenWidth,
            ),
            child: Column(
              children: [
                Container(
                  width: screenWidth * 77 / screenWidth,
                  height: screenHeight * 77 / screenHeight,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/interface@3x.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 156,
                  height: 57,
                  child: Center(
                    child: Text(
                      'Thank you for your order!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF1A237E),

                        fontFamily: 'Montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 257,
                  height: 73,
                  child: Center(
                    child: Text(
                      'Quisque suscipit ipsum est, eu venenatis leo ornare eget. Ut porta facilisis elementum. Sed ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: Color(0x80222222),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (builder) => Home1()),
                    );
                  },
                  child: Card(
                    margin: EdgeInsets.only(top: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 4,
                    child: Container(
                      width: 190,
                      height: 47,
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(
                        color: Color(0xFF1A237E),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child: Text(
                          'Back to home',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
