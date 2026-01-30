import 'package:flutter/material.dart';


class features extends StatelessWidget {
  const features({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Column(
              children: [
                Image.asset("/Img/sun.png"),
                Text("Covid 19", style: TextStyle(
                  color: Color(0xFF8696BB)
                ),)
              ],
            ),
            Column(
              children: [
                Image.asset("/Img/profile-add.png"),
                Text("Doctor", style: TextStyle(
                    color: Color(0xFF8696BB)
                ),)
              ],
            ),
            Column(
              children: [
                Image.asset("/Img/link.png"),
                Text("Medicine", style: TextStyle(
                    color: Color(0xFF8696BB)
                ),)
              ],
            ),
            Column(
              children: [
                Image.asset("/Img/hospital.png"),
                Text("Hospital", style: TextStyle(
                    color: Color(0xFF8696BB)
                ),)
              ],
            ),
        
        
          ],
        
        ),
      ),
    );
  }
}
