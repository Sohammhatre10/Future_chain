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
                SizedBox(width: 380,),
                Icon(Icons.horizontal_split,color: Colors.white,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
