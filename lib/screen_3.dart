
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:predicto/screen_1.dart';
import 'package:predicto/screen_4.dart';
import 'package:predicto/screen_3_main.dart';
import 'package:predicto/screen_5.dart';
class Screen_3 extends StatefulWidget {
  const Screen_3({super.key});

  @override
  State<Screen_3> createState() => _Screen_3State();
}

class _Screen_3State extends State<Screen_3> {
  int index=1;
  @override
  Widget build(BuildContext context) {
    final screens=[Screen_3_main(),Screen_4(),Screen_5()];
    final items=<Widget>[
      Icon(Icons.dashboard,size: 25,color: Colors.blueAccent,),
      Icon(Icons.currency_exchange,size: 25,color: Colors.blueAccent,),
      Icon(Icons.person,size: 25,color: Colors.blueAccent,),
    ];
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xFF1E1E1E),
        body: screens[index],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          color:  Color(0xFF1E1E1E),
          height: 75,
          items: items,
          onTap: (index)=> setState(() {
            this.index=index;
          }),
        ),
      ),
    );
  }
}
