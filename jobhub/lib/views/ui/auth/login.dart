import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/app_bar.dart';
import 'package:jobhub/views/common/custom_btn.dart';
import 'package:jobhub/views/common/exports.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/ui/auth/signup.dart';
import 'package:provider/provider.dart';

import '../../common/custom_textfield.dart';
import '../mainscreen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginNotifier>(builder: (context, loginNotifier, child) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomAppBar(
            text: "Login",
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(CupertinoIcons.arrow_left),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              ReusableText(
                  text: "Welcome Back!",
                  style: appstyle(25, Color(kDark.value), FontWeight.w600)),
              const HeightSpacer(size: 50),
              ReusableText(
                  text: "Enter your credentials to login",
                  style: appstyle(14, Color(kDark.value), FontWeight.normal)),
              const HeightSpacer(size: 30),
              CustomTextField(
                controller: email,
                keyboardType: TextInputType.emailAddress,
                hintText: "Email",
                validator: (email) {
                  if (email!.isEmpty || !email.contains("@")) {
                    return "Please enter a valid emailAddress";
                  } else {
                    return null;
                  }
                },
              ),
              const HeightSpacer(size: 20),
              CustomTextField(
                controller: password,
                hintText: "Password",
                obscureText: loginNotifier.obscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    loginNotifier.obscureText = !loginNotifier.obscureText;
                  },
                  child: Icon(
                    loginNotifier.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.text,
                validator: (password) {
                  if (password!.isEmpty || password.length < 7) {
                    return "Enter a valid password";
                  } else {
                    return null;
                  }
                },
              ),
              const HeightSpacer(size: 30),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => const RegistrationPage());
                  },
                  child: ReusableText(
                      text: "Sign up",
                      style: appstyle(16, Colors.black, FontWeight.bold)),
                ),
              ),
              const HeightSpacer(size: 50),
              CustomButton(
                onTap: () {
                  Get.to(() => const MainScreen());
                },
                text: "Login",
              ),
            ],
          ),
        ),
      );
    });
  }
}
