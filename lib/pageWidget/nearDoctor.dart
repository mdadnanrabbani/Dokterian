import 'package:flutter/material.dart';


class nearDoctor extends StatelessWidget {
  const nearDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text("Near Doctor",
              style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
                fontSize: 22,
            ),),
          ),
          Stack(
            children: [
              //========Container========
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(

                  ),
                ),
              ),

              //============Doctor Details===========
              Positioned(
                top: 50,
                left: 50,
                child: CircleAvatar(
                  backgroundImage: AssetImage('/Img/doctorimg.png'),
                  radius: 35,
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                top: 55,
                left: 140,
                child: Text("Dr. Joseph Brostito", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Positioned(
                top: 90,
                left: 140,
                child: Text("Dental Specialist", style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 18
                ),),
              ),
              Positioned(
                top: 70,
                right: 110,
                child: Image.asset("/Img/location.png",
                height: 25,
                  width: 25,
                ),
              ),
              Positioned(
                top: 70,
                right: 45,
                child: Text("1.2 KM", style: TextStyle(
                  color: Color(0xFF8696BB),
                  fontSize: 18
                ),),
              ),


              Positioned(
                bottom: 45,
                left: 50,
                child: Image.asset("/Img/clockYellow.png",
                  height: 25,
                  width: 25,

                ),
              ),
              Positioned(
                bottom: 47,
                left: 88,
                child: Text("4,8 (120 Reviews)", style: TextStyle(
                  color: Color(0xFFFEB052)
                ),),
              ),
              
              Positioned(
                bottom: 45,
                right: 240,
                child: Image.asset("/Img/clockBlue.png",
                height: 25,
                    width: 25,
                  ),
              ),
              Positioned(
                bottom: 46 ,
                right: 110,
                child: Text("Open at 17.00", style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4894FE)
                ),),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
