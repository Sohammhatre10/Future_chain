import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Screen_1 extends StatefulWidget {
  const Screen_1({super.key});

  @override
  State<Screen_1> createState() => _Screen_1State();
}

class _Screen_1State extends State<Screen_1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1E1E1E),
        body: Column(
          children: [
           SizedBox(height: 170,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Predic',
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'to',
                          style: GoogleFonts.lato(
                            color: Color(0xFF6552FE),
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                          )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: Image.asset('lib/images/predicto.png',height: 200,width: 220,),
            ),
            SizedBox(height: 60,),
            SizedBox(
              width: 340,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Want to take charge of ',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        height: 1.50,
                        letterSpacing: -0.48,
                      )
                    ),
                    TextSpan(
                      text: 'trading charts',
                      style: GoogleFonts.lato(
                        color: Color(0xFF6552FE),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        height: 1.50,
                        letterSpacing: -0.48,
                      )
                    ),
                    TextSpan(
                      text: '?',
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        height: 1.50,
                        letterSpacing: -0.48,
                      )
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 70,),
            Text(
              'Get insights on leveling up your crypto game ',
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w500,
                height: 1.50,
              )
            ),
            SizedBox(height: 60,),
            Container(
              width: 327,
              height: 52,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x3D830BCD),
                    blurRadius: 24,
                    offset: Offset(8, 8),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 52,
                    padding: const EdgeInsets.symmetric(horizontal: 115, vertical: 14),
                    decoration: ShapeDecoration(
                      color: Color(0xFF6552FE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Get Started',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
