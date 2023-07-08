import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_three.dart';
import 'package:jobhub/views/ui/onboarding/widgets/page_two.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/page_one.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //managing state with provider not to scrool back when ui gets to last page
          Consumer<OnBoardNotifier>(builder: (context, onBoardNotifier, child) {
        return Stack(
          children: [
            //page view widget for onBoarding screen
            PageView(
              physics: onBoardNotifier.isLastPage
                  ? const NeverScrollableScrollPhysics()
                  : const AlwaysScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: (page) {
                onBoardNotifier.isLastPage = page == 2;
              },
              //onBoarding screen
              children: const [PageOne(), PageTwo(), PageThree()],
            ),

            //Scrool page dots indicator
            Positioned(
                bottom: hieght * 0.1,
                left: 0,
                right: 0,
                child: onBoardNotifier.isLastPage
                    ? const SizedBox
                        .shrink() //Removes te dot indicator from the last page
                    : Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: WormEffect(
                              dotHeight: 10,
                              dotWidth: 10,
                              spacing: 10,
                              dotColor: Color(kDarkGrey.value),
                              activeDotColor: Color(kLight.value)),
                        ),
                      )),

            //The skip and next text button
            Positioned(
              child: onBoardNotifier
                      .isLastPage //Removes next and Skip from the last page
                  ? const SizedBox.shrink()
                  : Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.w, vertical: 30.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                pageController.jumpToPage(2);
                              },
                              child: ReusableText(
                                  text: "Skip",
                                  style: appstyle(16, Color(kLight.value),
                                      FontWeight.w500)),
                            ),
                            GestureDetector(
                              onTap: () {
                                pageController.nextPage(
                                    duration: const Duration(
                                      milliseconds: 300,
                                    ),
                                    curve: Curves.easeOut);
                              },
                              child: ReusableText(
                                  text: "Next",
                                  style: appstyle(16, Color(kLight.value),
                                      FontWeight.w500)),
                            )
                          ],
                        ),
                      ),
                    ),
            ),
          ],
        );
      }),
    );
  }
}
