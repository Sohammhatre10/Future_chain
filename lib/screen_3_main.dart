import 'package:flutter/material.dart';
class Screen_3_main extends StatefulWidget {
  const Screen_3_main({super.key});

  @override
  State<Screen_3_main> createState() => _Screen_3_mainState();
}

class _Screen_3_mainState extends State<Screen_3_main> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1E1E1E),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 360,),
                Icon(Icons.horizontal_split,color: Colors.white,size: 40,),
              ],
            ),//vertical_lines
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Container(
                  width: 48,
                  height: 48,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/images/User.png'),
                      fit: BoxFit.contain,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ],
            ),//image_icon
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 25,),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hello',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: ' baby',
                        style: TextStyle(
                          color: Color(0xFF6552FE),
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),//Hello Baby
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text(
                  'Holdings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                ),//Holdings
                SizedBox(width: 250,),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                    height: 1.14,
                  ),
                ),//See all
              ],
            ),//see all
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 330,
                        height: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 282,
                              top: 28,
                              child: Text(
                                '100 DOGE',
                                style: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 271,
                              top: 0,
                              child: Text(
                                '\$50.02',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 24,
                              child: SizedBox(
                                width: 39.83,
                                child: Text(
                                  'DOGE',
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 3,
                              child: SizedBox(
                                width: 84.89,
                                child: Text(
                                  'Dogecoin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 48,
                                height: 45,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.10000000149011612),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),//doge coin
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        width: 330,
                        height: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 282,
                              top: 28,
                              child: Text(
                                '100 DOGE',
                                style: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 271,
                              top: 0,
                              child: Text(
                                '\$50.02',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 24,
                              child: SizedBox(
                                width: 39.83,
                                child: Text(
                                  'DOGE',
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 3,
                              child: SizedBox(
                                width: 84.89,
                                child: Text(
                                  'Dogecoin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 48,
                                height: 45,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.10000000149011612),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),//Etherum
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        width: 330,
                        height: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 282,
                              top: 28,
                              child: Text(
                                '100 DOGE',
                                style: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 271,
                              top: 0,
                              child: Text(
                                '\$50.02',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 24,
                              child: SizedBox(
                                width: 39.83,
                                child: Text(
                                  'DOGE',
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 3,
                              child: SizedBox(
                                width: 84.89,
                                child: Text(
                                  'Dogecoin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 48,
                                height: 45,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.10000000149011612),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),//Bitcoin
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        width: 330,
                        height: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 282,
                              top: 28,
                              child: Text(
                                '100 DOGE',
                                style: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 271,
                              top: 0,
                              child: Text(
                                '\$50.02',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 24,
                              child: SizedBox(
                                width: 39.83,
                                child: Text(
                                  'DOGE',
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 3,
                              child: SizedBox(
                                width: 84.89,
                                child: Text(
                                  'Dogecoin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 48,
                                height: 45,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.10000000149011612),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),//Litecoin
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Container(
                        width: 330,
                        height: 45,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 282,
                              top: 28,
                              child: Text(
                                '100 DOGE',
                                style: TextStyle(
                                  color: Color(0xFF6C757D),
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 271,
                              top: 0,
                              child: Text(
                                '\$50.02',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 24,
                              child: SizedBox(
                                width: 39.83,
                                child: Text(
                                  'DOGE',
                                  style: TextStyle(
                                    color: Color(0xFF6C757D),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60.79,
                              top: 3,
                              child: SizedBox(
                                width: 84.89,
                                child: Text(
                                  'Dogecoin',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 48,
                                height: 45,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.10000000149011612),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),//Ripple
                ],
              ),
            ),//doge coin
          ],
        ),
        // bottomNavigationBar: CurvedNavigationBar(
        //   backgroundColor: Colors.blueAccent,
        //   color:  Color(0xFF1E1E1E),
        //   height: 75,
        //   items: items,
        //   onTap: (index)=> setState(() {
        //     this.index=index;
        //   }),
        // ),
      ),
    );
  }
}
