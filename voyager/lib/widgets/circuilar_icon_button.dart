import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voyager/theme/color_pallete.dart';

class CircularIconButton extends StatelessWidget {
  final bool isSelected;
  const CircularIconButton({
    this.isSelected = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColor.ckwhite
            : AppColor.ckdarkgrey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(
        child: Icon(CupertinoIcons.home),
      ),
    );
  }
}
