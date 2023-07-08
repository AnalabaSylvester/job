import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/search/widgets/custom_field.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        iconTheme: IconThemeData(
          color: Color(kLight.value),
        ),
        title: CustomField(
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: const Icon(AntDesign.search1),
            ),
            hintText: "search for jobs",
            controller: search),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/optimized_search.png"),
            HeightSpacer(size: 20.h),
            ReusableText(
                text: "Start searching for jobs",
                style: appstyle(23, Color(kDark.value), FontWeight.bold))
          ],
        ),
      ),
    );
  }
}