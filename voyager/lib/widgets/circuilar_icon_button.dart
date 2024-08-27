import 'package:flutter/cupertino.dart';
import 'package:voyager/theme/color_pallete.dart';

class CircularIconButton extends StatelessWidget {
  final int currentindex;
  final int index;
  final ValueChanged<int> onTap;
  const CircularIconButton({
    required this.currentindex,
    required this.index,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = currentindex == index;
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColor.ckwhite
            : AppColor.ckdarkgrey.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColor.ckwhite.withOpacity(0.6),
          width: 0.1,
        ),
      ),
      child: Center(
        child: Icon(CupertinoIcons.home),
      ),
    );
  }
}
