import 'package:flutter/material.dart';
import 'package:voyager/theme/color_pallete.dart';
import 'package:voyager/widgets/circuilar_icon_button.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: AppColor.ckgrey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(35),
        border: Border.all(
          color: AppColor.ckwhite.withOpacity(0.6),
          width: 0.1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircularIconButton(
            currentindex: currentindex,
            index: 0,
            onTap: (value) => setState(() {
              currentindex = value;
            }),
          ),
          CircularIconButton(
            currentindex: currentindex,
            index: 1,
            onTap: (value) => setState(() {
              currentindex = value;
            }),
          ),
          CircularIconButton(
            currentindex: currentindex,
            index: 2,
            onTap: (value) => setState(() {
              currentindex = value;
            }),
          ),
          CircularIconButton(
            currentindex: currentindex,
            index: 3,
            onTap: (value) => setState(() {
              currentindex = value;
            }),
          ),
        ],
      ),
    );
  }
}
