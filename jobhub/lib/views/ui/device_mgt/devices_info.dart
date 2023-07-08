import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/device_mgt/widgets/device_info.dart';
import 'package:jobhub/views/ui/onboarding/onboarding_screen.dart';
import 'package:provider/provider.dart';

import '../../common/app_bar.dart';
import '../../common/drawer/drawerWidget.dart';

class DeviceManagement extends StatelessWidget {
  const DeviceManagement({super.key});

  @override
  Widget build(BuildContext context) {
    //importing the zoom notifier
    var zoomNotifier = Provider.of<ZoomNotifier>(context);
    var onBoardNotifier = Provider.of<OnBoardNotifier>(context);
    //getting device ci=urrent date
    String date = DateTime.now().toString();
    String loginDate = date.substring(0, 11);
    
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: "Device management",
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const DrawerWidget(),
          ),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeightSpacer(size: 50),
                  Text("You are loggged in into your account on this device ..",
                      style: appstyle(
                        16,
                        Color(kDark.value),
                        FontWeight.normal,
                      )),
                  const HeightSpacer(size: 50),
                  DevicesInfo(
                      location: "Lagos Nigeria",
                      devices: "TECHNO SPARK 7",
                      platform: "Job Hub",
                      date: loginDate,
                      ipAddress: "10.3.03.440"),
                  const HeightSpacer(size: 50),
                  DevicesInfo(
                      location: "Lagos Nigeria",
                      devices: "TECHNO SPARK 10 pro",
                      platform: "Job hub",
                      date: loginDate,
                      ipAddress: "10.3.03.440"),
                ],
              )),
          Consumer<LoginNotifier>(builder: (context, loginNotifier, child) {
            return Padding(
              padding: EdgeInsets.all(8.h),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    zoomNotifier.currentIndex = 0;
                    onBoardNotifier.isLastPage = false;
                    Get.to(() => const OnBoardingScreen());
                  },
                  child: ReusableText(
                      text: "Sign out of all devices",
                      style:
                          appstyle(16, Color(kOrange.value), FontWeight.w600)),
                ),
              ),
            );
          })
        ],
      )),
    );
  }
}
