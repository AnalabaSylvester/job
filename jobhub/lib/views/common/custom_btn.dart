import 'package:flutter/material.dart';

import 'package:jobhub/views/common/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.color,
    this.onTap,
  }) : super(key: key);
  final String text;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hieght * 0.065,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 210, 13, 118),
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: ReusableText(
              text: text,
              style:
                  appstyle(16, color ?? Color(kLight.value), FontWeight.w800)),
        ),
      ),
    );
  }
}
