import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jobhub/controllers/exports.dart';
import 'package:jobhub/views/common/custom_btn.dart';
import 'package:provider/provider.dart';

import '../../../constants/app_constants.dart';
import '../../common/app_bar.dart';
import '../../common/app_style.dart';
import '../../common/custom_textfield.dart';
import '../../common/height_spacer.dart';
import '../../common/reusable_text.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpNotifier>(builder: (context, signupNotifier, child) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: CustomAppBar(
            text: "Signup",
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
                  text: "Welcome!",
                  style: appstyle(25, Color(kDark.value), FontWeight.w600)),
              ReusableText(
                  text: "Enter your credentials to register or signup",
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
                controller: name,
                keyboardType: TextInputType.emailAddress,
                hintText: "Fullname",
                validator: (name) {
                  if (name!.isEmpty) {
                    return "Please enter your fullname";
                  } else {
                    return null;
                  }
                },
              ),
              const HeightSpacer(size: 20),
              CustomTextField(
                controller: password,
                hintText: "Password",
                obscureText: signupNotifier.obscureText,
                suffixIcon: GestureDetector(
                  onTap: () {
                    signupNotifier.obscureText = !signupNotifier.obscureText;
                  },
                  child: Icon(
                    signupNotifier.obscureText
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.text,
                validator: (password) {
                  if (signupNotifier.passwordValidator(password ?? "")) {
                    return "Please enter a password with al least one uppercase, one digit, a special character and length of not more than eight(8) characters ";
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
                    Get.back();
                  },
                  child: ReusableText(
                      text: "Login",
                      style: appstyle(16, Colors.black, FontWeight.bold)),
                ),
              ),
              const HeightSpacer(size: 50),
              CustomButton(
                onTap: () {},
                text: "Sign up",
              ),
            ],
          ),
        ),
      );
    });
  }
}
