import 'package:flutter/material.dart';
class Screen_2 extends StatefulWidget {
  const Screen_2({super.key});

  @override
  State<Screen_2> createState() => _Screen_2State();
}

class _Screen_2State extends State<Screen_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
              child: Row(
                children: [
                  Image.asset('lib/images/predicto.png',height: 70,width: 70,),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: ' Predic',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'to',
                          style: TextStyle(
                            color: Color(0xFF6552FE),
                            fontSize: 32,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
              ),
            ),//Line 1 predicto logo and image

          ],
        ),
      ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 125,),
                  Text(
                    'Welcome to Predicto!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.50,
                      letterSpacing: -0.40,
                    ),
                  ), //Welcome to predicto
                  SizedBox(height: 20,),
                  Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    "Enter username",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
                  SizedBox(height: 14,),
                  Container(
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        "Enter Password",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 14,),
                  Container(
                    width: 320,
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3D830BCD),
                            blurRadius: 24,
                            offset: Offset(8, 8),
                            spreadRadius: 0,
                          )
                        ],
                        color: Color(0xFF6552FE),
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  Text('Don\'t have an account? Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                ],
              ),
            )
      ],
    ),
      ),
    );
  }
}
