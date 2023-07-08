import 'package:flutter/material.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

class DevicesInfo extends StatelessWidget {
  const DevicesInfo(
      {super.key,
      required this.location,
      required this.devices,
      required this.platform,
      required this.date,
      required this.ipAddress});

  final String location;
  final String devices;
  final String platform;
  final String date;
  final String ipAddress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableText(
            text: location,
            style: appstyle(16, Color(kDark.value), FontWeight.bold)),
        ReusableText(
            text: platform,
            style: appstyle(16, Color(kDark.value), FontWeight.bold)),
        ReusableText(
            text: devices,
            style: appstyle(16, Color(kDark.value), FontWeight.bold)),
        const HeightSpacer(size: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                    text: date,
                    style:
                        appstyle(16, Color(kDarkGrey.value), FontWeight.w400)),
                ReusableText(
                    text: ipAddress,
                    style:
                        appstyle(16, Color(kDarkGrey.value), FontWeight.w400))
              ],
            ),
            CustomOutlineBtn(
              text: "Sign out",
              color: Color(kDarkGrey.value),
              height: hieght * 0.05,
              width: width * 0.3,
            )
          ],
        )
      ],
    );
  }
}
