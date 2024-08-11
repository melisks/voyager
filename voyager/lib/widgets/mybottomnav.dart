import 'package:flutter/material.dart';
import 'package:voyager/theme/color_pallete.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
          color: AppColor.ckgrey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: AppColor.ckwhite,
              borderRadius: BorderRadius.circular(35),
            ),
          )
        ],
      ),
    );
  }
}
