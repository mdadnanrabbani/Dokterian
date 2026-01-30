import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 40, right: 28, top: 18),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Image.asset("/Img/search-normal.png", height: 12,),
            labelText: "  Search doctor or health issue",
            hintText: "Dr. Adnan Rabbani",
            labelStyle: TextStyle(
              color: Color(0xFF8696BB)
            )

          ),
        ),
      ),
    );
  }
}
