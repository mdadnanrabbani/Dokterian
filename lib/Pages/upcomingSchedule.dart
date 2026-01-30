import 'package:doctorapp/Pages/homeApp.dart';
import 'package:flutter/material.dart';


var doctorsList=["Dr. Adnan", "Dr. Rabbani", "Dr.Faizan Rabbani", "Dr. Saif Ali Khan"];



class upcomingSchedule extends StatelessWidget {
  const upcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Old schedule",
                    style: TextStyle(
                        color: Color(0xFF8696BB),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("Upcoming schedule",
                    style: TextStyle(
                        color: Color(0xFF4894FE),
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text("History",
                    style: TextStyle(
                        color: Color(0xFF8696BB),
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: doctorsList.length,
                    itemBuilder: (context, index){
                      return SizedBox(
                        height: 200,
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              width: double.infinity,
                              color: Colors.white,
                            ),

                            Positioned(
                              top: 30,
                              left: 30,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("/Img/doctorimg.png"),
                                backgroundColor: Colors.white,
                                radius: 35,
                              ),
                            ),
                            Positioned(
                              top: 30,
                              left: 120,
                              child: Text(doctorsList[index], style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),),
                            ),
                            Positioned(
                              top: 70,
                              left: 120,
                              child: Text("Dental Specialist", style: TextStyle(
                                fontWeight: FontWeight.w100,
                                fontSize: 18,
                              ),),
                            ),
                            Positioned(
                                bottom: 30,
                                left: 30,
                                child: Image.asset('/Img/calendar-3.png', height: 30,)),
                            Positioned(
                              bottom: 30,
                              left: 70,
                              child: Text("Sunday, 12 June", style: TextStyle(
                                color: Color(0xFF8696BB),
                                fontSize: 18
                              ),),
                            ),
                            Positioned(
                                bottom: 30,
                                right: 200,
                                child: Image.asset("/Img/clockGrey.png", height: 30,)),
                            Positioned(
                              bottom: 32,
                              right: 55,
                              child: Text("Sunday, 12 June", style: TextStyle(
                                  color: Color(0xFF8696BB),
                                  fontSize: 18
                              ),),
                            ),
                            Positioned(
                              bottom: 4,
                              right: 250,
                              child: Text("Detail", style: TextStyle(
                                color: Color(0xFF4894FE),
                                fontWeight: FontWeight.w800,
                              
                              
                              ),),
                            ),
                          ],
                        ),
                      );
                    }

                ),
              ),
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
              // Calendar
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>homePage()));
                  },
                  child: Image.asset("/Img/home-2.png", height: 35)),

              // Home
              Row(
                children: [
                  Image.asset("/Img/calendar-4.png", height: 35),
                  const SizedBox(width: 6),
                  const Text(
                    "Schedule",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF63B4FF),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),



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
