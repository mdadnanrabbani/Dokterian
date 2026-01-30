import 'package:flutter/material.dart';

class doctorCard extends StatelessWidget {
  const doctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          //==========Container of Blue Color
          Container(
            margin: EdgeInsets.all(18),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF4894FE),
              borderRadius: BorderRadius.circular(12)
            ),
          ),
         
         
          // ==========Doctor image as Avatar========
          Positioned(
            left: 50,
            top: 50,
            child: CircleAvatar(
              backgroundImage: AssetImage("/Img/doctor.png"),
              backgroundColor: Colors.white,
              radius: 35,
            ),
          ),
          
          // ==============Doctor Name=====================
          Positioned(
            top: 53,
            left: 140,
            child: Text("Dr. Imran Syahir", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),),
          ),

          // =============Post=======================
          Positioned(
            top: 91,
            left: 140,
            child: Text("General Doctor", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w100,
              fontSize: 18,
            ),),
          ),

          //============Arrow==============
          Positioned(
              top: 75,
              right: 50,
              child: Image.asset("/Img/arrow-right.svg.png")),

          //=============Divider===========
          Positioned(
            top: 140,
            left: 50,
            right: 50,
            child: Container(
              height: 1,
              color: Colors.white,
            ),
          ),

          //================Calendar===

          Positioned(
              bottom: 40,
              left: 50,
              child: Image.asset("/Img/calendar-2.png",
                height: 26,
                width: 26,
              ),),
          
          
          Positioned(
            bottom: 40,
            left: 90,
            child: Text("Sunday, 12 June", style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          ),

          Positioned(
            bottom: 40,
            right: 220,
            child: Image.asset("/Img/clock.png",
              height: 26,
              width: 26,
            ),),

          Positioned(
            bottom: 40,
            right: 70,
            child: Text("11:00 - 12:00 AM", style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
          ),

        ],

      ),
    );
  }
}
