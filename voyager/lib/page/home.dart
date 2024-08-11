import 'package:flutter/material.dart';
import 'package:voyager/theme/color_pallete.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                AppColor.ck1,
                AppColor.ck2,
                AppColor.ck3,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
