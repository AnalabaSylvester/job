import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/exports.dart';

import '../../common/height_spacer.dart';

class JobPage extends StatefulWidget {
  const JobPage({
    Key? key,
    required this.title,
    required this.id,
  }) : super(key: key);

  final String title;
  final String id;

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.h),
          child: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: CustomAppBar(
              text: widget.title,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: Icon(Entypo.bookmark),
                ),
              ],
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(CupertinoIcons.arrow_left),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    const HeightSpacer(size: 20),
                    Container(
                      width: width,
                      height: hieght * 0.30,
                      decoration: BoxDecoration(
                          color: Color(kLightGrey.value),
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/user.png"),
                          ),
                          const HeightSpacer(size: 10),
                          ReusableText(
                              text: "Senior flutter developer",
                              style: appstyle(
                                  22, Color(kDark.value), FontWeight.w600)),
                          const HeightSpacer(size: 10),
                          ReusableText(
                              text: "Nigeria Lagos",
                              style: appstyle(16, Color(kDarkGrey.value),
                                  FontWeight.normal)),
                          const HeightSpacer(size: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomOutlineBtn(
                                  width: width * 0.26,
                                  height: hieght * 0.034,
                                  color2: Color(kLight.value),
                                  text: "full time",
                                  color: Color(kOrange.value),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Row(
                                  children: [
                                    ReusableText(
                                        text: "20k",
                                        style: appstyle(20, Color(kDark.value),
                                            FontWeight.w600)),
                                    SizedBox(
                                      width: width * 0.2,
                                      child: ReusableText(
                                          text: "/monthly",
                                          style: appstyle(
                                              18,
                                              Color(kDark.value),
                                              FontWeight.normal)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const HeightSpacer(size: 20),
                    ReusableText(
                        text: "Job description",
                        style:
                            appstyle(22, Color(kDark.value), FontWeight.w600)),
                    const HeightSpacer(size: 10),
                    Text(
                      desc,
                      textAlign: TextAlign.justify,
                      maxLines: 8,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(kDarkGrey.value),
                          fontWeight: FontWeight.normal),
                    ),
                    const HeightSpacer(size: 20),
                    ReusableText(
                        text: "Requirements",
                        style:
                            appstyle(22, Color(kDark.value), FontWeight.w600)),
                    const HeightSpacer(size: 5),
                    SizedBox(
                      height: hieght * 0.6,
                      child: ListView.builder(
                          itemCount: requirements.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            String bullet = "\n2022";
                            final req = requirements[index];
                            return Text("$bullet $req\n",
                                maxLines: 4,
                                style: appstyle(16, Color(kDarkGrey.value),
                                    FontWeight.normal));
                          }),
                    ),
                    const HeightSpacer(size: 10),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: CustomOutlineBtn(
                    width: width,
                    height: hieght * 0.07,
                    color2: Colors.pink,
                    text: "Apply Now",
                    color: Color(kLight.value),
                  ),
                ),
              ),
            ],
          ),
        ));
    }
}
