import 'package:doctorapp/Pages/upcomingSchedule.dart';
import 'package:doctorapp/pageWidget/doctorCard.dart';
import 'package:doctorapp/pageWidget/features.dart';
import 'package:doctorapp/pageWidget/nearDoctor.dart';
import 'package:doctorapp/pageWidget/searchBar.dart';
import 'package:flutter/material.dart';

import '../pageWidget/wlcmWidget.dart';


class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              wlcmWidget(),
              doctorCard(),
              searchBar(),
              features(),
              nearDoctor(),


            ],
          
          
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 65,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,  // 🔥 yahan kaam karega
            children: [

              // Home
              Row(
                children: [
                  Image.asset("/Img/Home.png", height: 35),
                  const SizedBox(width: 6),
                  const Text(
                    "Home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF63B4FF),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),

              // Calendar
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => upcomingSchedule(),));
                },
                  child: Image.asset("/Img/calendarMenu.png", height: 35)),

              // Message
              Image.asset("/Img/message.png", height: 35),

              // Profile
              Image.asset("/Img/profile.png", height: 35),
            ],
          ),
        ),
      ),

    );


  }
}
