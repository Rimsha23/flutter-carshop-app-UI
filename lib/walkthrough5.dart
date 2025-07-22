import 'package:flutter/material.dart';
import 'package:flutter_application_2/loginpage.dart';

class Walkthrough5 extends StatefulWidget {
  const Walkthrough5({super.key});

  @override
  State<Walkthrough5> createState() => _Walkthrough5State();
}

class _Walkthrough5State extends State<Walkthrough5> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: 750,
        width: screenWidth,
        color: Colors.white,
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 110,
                  width: screenWidth * 310 / 375,
                  padding: const EdgeInsets.only(top: 50),
                  child: Center(
                    child: Text(
                      'In consequat, quam id sodales \n hendrerit, eros mi molestie leo, nec \nlacinia risus neque tristique augue. ',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        color: Color(0x80222222),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 450,
                  width: screenWidth * 364 / 375,
                  child: Image.asset('assets/mask_iphone_x.png'),
                ),
                Container(
                  width: screenWidth * 344 / 375,
                  padding: const EdgeInsets.only(left: 50, right: 20),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              '5',
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF1A237E),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              ' \\ 5',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xFF1A237E),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Color(0x405E7FB1),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF1A237E),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
