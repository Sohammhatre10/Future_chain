import 'package:flutter/material.dart';
class Screen_4 extends StatefulWidget {
  const Screen_4({super.key});

  @override
  State<Screen_4> createState() => _Screen_4State();
}

class _Screen_4State extends State<Screen_4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(width: 360,),
                Icon(Icons.horizontal_split,color: Colors.white,size: 30,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                SizedBox(width: 5,),
                Text(
                  'Trading',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.41,
                  ),
                ),
                SizedBox(width: 250,),
                Icon(Icons.settings,color: Colors.white,),
              ],
            ),

          ),
          SizedBox(height: 20,),
          Container(
            width: 340,
            height: 45,
            child: Stack(
              children: [
                Positioned(
                  left: 270,
                  top: 1,
                  child: Text(
                    '\$26927',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  left: 282.79,
                  top: 27,
                  child: Text(
                    '2.05 BTC',
                    style: TextStyle(
                      color: Color(0xFF6C757D),
                      fontSize: 10,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Positioned(
                  left: 61.84,
                  top: 24,
                  child: SizedBox(
                    width: 39.83,
                    child: Text(
                      'BTC',
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
                  left: 61.84,
                  top: 3,
                  child: SizedBox(
                    width: 71.27,
                    child: Text(
                      'Bitcoin',
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
                      color: Color(0xFF212125),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ),
                Positioned(
                  left: 13,
                  top: 12,
                  child: Container(
                    width: 22,
                    height: 22,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Stack(children: [

                        ]),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 198,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4,
                        top: 182,
                        child: SizedBox(
                          width: 11,
                          child: Text(
                            '0k',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.78,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 145,
                        child: SizedBox(
                          width: 12,
                          child: Text(
                            '3k',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.78,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 108,
                        child: SizedBox(
                          width: 12,
                          child: Text(
                            '6k',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.78,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 3,
                        top: 71,
                        child: SizedBox(
                          width: 12,
                          child: Text(
                            '9k',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.78,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 34,
                        child: SizedBox(
                          width: 15,
                          child: Text(
                            '12k',
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.78,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 0,
                        child: SizedBox(
                          width: 15,
                          child: Text(
                            '15k',
                            style: TextStyle(
                              color: Color(0xFFEFEFEF),
                              fontSize: 9,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.78,
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
          SizedBox(height: 5,),
          Container(
            width: 284,
            height: 29.37,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 25,
                    height: 15,
                    child: Text(
                      'Mon',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  top: 16,
                  child: SizedBox(
                    width: 14.25,
                    height: 13.37,
                    child: Text(
                      '15',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 39,
                  top: 0,
                  child: SizedBox(
                    width: 22,
                    height: 15,
                    child: Text(
                      'Tue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,

                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  top: 16,
                  child: SizedBox(
                    width: 14.25,
                    height: 13.37,
                    child: Text(
                      '16',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 74,
                  top: 0,
                  child: SizedBox(
                    width: 26,
                    height: 14,
                    child: Text(
                      'Wed',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 81,
                  top: 16,
                  child: SizedBox(
                    width: 18.16,
                    height: 13.37,
                    child: Text(
                      '17',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 113,
                  top: 0,
                  child: SizedBox(
                    width: 23,
                    height: 14,
                    child: Text(
                      'Thu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 117,
                  top: 16,
                  child: SizedBox(
                    width: 14.25,
                    height: 13.37,
                    child: Text(
                      '18',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 153,
                  top: 0,
                  child: SizedBox(
                    width: 15,
                    height: 14,
                    child: Text(
                      'Fri',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 153,
                  top: 16,
                  child: SizedBox(
                    width: 14.25,
                    height: 13.37,
                    child: Text(
                      '19',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 188,
                  top: 0,
                  child: SizedBox(
                    width: 20,
                    height: 14,
                    child: Text(
                      'Sat',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 190,
                  top: 16,
                  child: SizedBox(
                    width: 15.35,
                    height: 13.37,
                    child: Text(
                      '20',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 224,
                  top: 0,
                  child: SizedBox(
                    width: 23,
                    height: 14,
                    child: Text(
                      'Sun',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 229,
                  top: 16,
                  child: SizedBox(
                    width: 15.16,
                    height: 13.37,
                    child: Text(
                      '21',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 259,
                  top: 0,
                  child: SizedBox(
                    width: 25,
                    height: 14,
                    child: Text(
                      'Mon',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFB9C1D9),
                        fontSize: 9.5,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                        height: 1.78,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 264,
                  top: 16,
                  child: SizedBox(
                    width: 15.35,
                    height: 13.37,
                    child: Text(
                      '22',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFEFEFEF),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text(
            'According to the data, one should buy bitcoin.',
            style: TextStyle(
              color: Color(0xFF48D49E),
              fontSize: 17,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 1.38,
              letterSpacing: -0.08,
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 200.95,
            height: 45,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            decoration: ShapeDecoration(
              color: Color(0xFF48D49E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.1),
                  child: Text(
                    'Predicto',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Amount',style: TextStyle(color: Colors.white),),
                    SizedBox(height: 20,),
                    Text('35 USD',style: TextStyle(color: Colors.white),),

                  ],
                ),
              ),
              SizedBox(width: 200,),
              Column(
                children: [
                  Text('Day',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20,),
                  Text('25%',style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Text('Month',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20,),
                  Text('50%',style: TextStyle(color: Colors.white),),
                ],
              ),
              SizedBox(width: 10,),
              Column(
                children: [
                  Text('Year',style: TextStyle(color: Colors.white),),
                  SizedBox(height: 20,),
                  Text('100%',style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
