import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/views/common/exports.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.text,
    required this.child,
    this.actions,
  }) : super(key: key);

  final String text;
  final Widget child;
  final List<Widget>? actions;

  // ReuseAble AppBar widget
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(),
      backgroundColor: Color(kLight.value),
      elevation: 0,
      automaticallyImplyLeading: false,
      leadingWidth: 70.w,
      leading: child,
      actions: actions,
      centerTitle: true,
      title: ReusableText(
          text: text, style: appstyle(18, Color(kDark.value), FontWeight.w600)),
    );
  }
}
