import 'package:flutter/material.dart';

class wlcmWidget extends StatelessWidget {
  const wlcmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //===============Hello==============
                Text("Hello,",
                  style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),),
                Text("Hi, James", style: TextStyle(
                  color: Color(0xFF0D1B34),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),),
              ],
            ),

            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('/Img/avtar.png'),
            ),
          ],
        ),
      ),
    );
  }
}
