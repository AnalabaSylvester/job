import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class JobHorizontalTile extends StatelessWidget {
  const JobHorizontalTile({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
          width: width * 0.8,
          height: hieght * 0.27,
          color: Color(kLightGrey.value),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Facebook.png"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ReusableText(
                    text: "FaceBook",
                    style: appstyle(20, Color(kDark.value), FontWeight.w600),
                  ),
                  const HeightSpacer(size: 20),
                ],
              ),
              ReusableText(
                  text: "Senior flutter developer",
                  style: appstyle(18, Color(kDark.value), FontWeight.w500)),
              ReusableText(
                  text: "Lagos Nigeria",
                  style: appstyle(15, Color(kDarkGrey.value), FontWeight.w500)),
              const HeightSpacer(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ReusableText(
                          text: "15k",
                          style: appstyle(
                              20, Color(kDark.value), FontWeight.w400)),
                      ReusableText(
                          text: "/Monthly",
                          style: appstyle(
                              18, Color(kDarkGrey.value), FontWeight.w400)),
                    ],
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Color(kLight.value),
                    child: const Icon(Ionicons.chevron_forward),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
