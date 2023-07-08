import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';


class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, this.onTap});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: width * 0.84,
                  child: Row(
                    children: [
                      Icon(
                        Feather.search,
                        color: Colors.grey,
                        size: 20.h,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ReusableText(
                        text: "Search for jobs",
                        style: appstyle(16, Colors.pink, FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Icon(
                  FontAwesome.sliders,
                  color: Color(kDarkGrey.value),
                  size: 20.w,
                ),
              ],
            ),
            const HeightSpacer(size: 7),
            Divider(
              color: Color(kDarkGrey.value),
              thickness: 0.5,
              endIndent: 30.w,
            )
          ],
        ));
  }
}
