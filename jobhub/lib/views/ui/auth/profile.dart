import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';

import '../../common/app_bar.dart';
import '../../common/drawer/drawerWidget.dart';
import '../homepage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: "Profile",
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const DrawerWidget(),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.zero,
        child: ListView(
          children: [
            Container(
              width: width,
              height: hieght * 0.12,
              color: Color(kLight.value),
              //decorate the container if you wish ..
              // i will do some decoration here
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: SizedBox(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(kLightGrey.value),
                            // border: Border.all(width: 3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Icon(MaterialIcons.person),
                        ),
                      ),
                      const HeightSpacer(size: 20),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReusableText(
                                text: "Analaba sylvester",
                                style: appstyle(
                                    18, Color(kDark.value), FontWeight.w600)),
                            Row(
                              children: [
                                Icon(
                                  MaterialIcons.location_pin,
                                  color: Color(kDarkGrey.value),
                                ),
                                ReusableText(
                                    text: "Lagos Nigeria",
                                    style: appstyle(16, Color(kDarkGrey.value),
                                        FontWeight.normal)),
                              ],
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Feather.edit,
                          size: 23,
                          color: Colors.pink,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const HeightSpacer(size: 20),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: width,
                    height: hieght * 0.12,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 5,
                              offset: Offset(0.02, 2),
                              color: Colors.grey)
                        ],
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 245, 234, 228)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 18),
                          child: Container(
                              height: 70.h,
                              width: 60.w,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15))),
                              child: const Icon(
                                FontAwesome.file_pdf_o,
                                size: 35,
                                color: Colors.red,
                              )),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ReusableText(
                                text: "Resume from XlyTexh",
                                style: appstyle(
                                    18, Color(kDark.value), FontWeight.w500)),
                            ReusableText(
                                text: "XlyTech Resume",
                                style: appstyle(15, Color(kDarkGrey.value),
                                    FontWeight.normal))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 54.h,
                    right: 30.w,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 25.h,
                          width: 70.h,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(7)),
                              border: Border.all(
                                width: 0.5,
                                color: Colors.pink,
                              ),
                              color: Colors.white),
                          child: Center(
                            child: ReusableText(
                              text: "Edit",
                              style:
                                  appstyle(14, Colors.pink, FontWeight.normal),
                            ),
                          )),
                    ))
              ],
            ),
            const HeightSpacer(size: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: width,
                height: hieght * 0.08,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(0.02, 2),
                          color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 245, 234, 228)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ReusableText(
                        text: "Ubachukwusylvester8@gmail.com",
                        style: appstyle(16, Colors.black, FontWeight.w500)),
                  ),
                ),
              ),
            ),
            const HeightSpacer(size: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: width,
                height: hieght * 0.08,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5,
                          offset: Offset(0.02, 2),
                          color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromARGB(255, 245, 234, 228)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.green,
                        size: 30,
                      ),
                      const SizedBox(width: 20),
                      ReusableText(
                          text: "07043458913",
                          style: appstyle(16, Colors.black, FontWeight.w500)),
                    ],
                  ),
                ),
              ),
            ),
            const HeightSpacer(size: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 245, 234, 228),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: ReusableText(
                          text: "Skills",
                          style: appstyle(
                              18, Color(kDark.value), FontWeight.w600)),
                    ),
                    const HeightSpacer(size: 30),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
                      child: SizedBox(
                        height: hieght * 0.5,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: ListView.builder(
                                itemCount: skills.length,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  final skill = skills[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        width: double.infinity,
                                        height: hieght * 0.06,
                                        color: Color(kLight.value),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ReusableText(
                                              text: skill,
                                              style: appstyle(
                                                  16,
                                                  Color(kDark.value),
                                                  FontWeight.normal)),
                                        )),
                                  );
                                })),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.pink,
          icon: const Icon(
            FontAwesome.home,
            color: Colors.white,
          ),
          onPressed: () {
            Get.to(() => const HomePage());
          },
          label: ReusableText(
              text: "Home",
              style: appstyle(18, Colors.white, FontWeight.w500))),
    );
  }
}
