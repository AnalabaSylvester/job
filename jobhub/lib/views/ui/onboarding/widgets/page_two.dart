import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_style.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kDarkBlue.value),
        child: Column(children: [
          const HeightSpacer(
            size: 65,
          ),
          Padding(
            padding: EdgeInsets.all(8.h),
            child: Image.asset("assets/images/page2.png"),
          ),
          const HeightSpacer(size: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Stable your self \n With your ability",
                textAlign: TextAlign.center,
                style: appstyle(30, Color(kLight.value), FontWeight.w500),
              ),
              const HeightSpacer(size: 10),
              Padding(
                padding: EdgeInsets.all(10.h),
                child: Text(
                  "We help you find your dream job with your skillset, location and your profile",
                  textAlign: TextAlign.center,
                  style: appstyle(14, Color(kLight.value), FontWeight.normal),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
