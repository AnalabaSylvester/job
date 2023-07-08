import 'package:flutter/material.dart';

import 'package:jobhub/views/common/exports.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.keyboardType,
    this.validator,
    this.suffixIcon,
    this.obscureText,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(kLightGrey.value),
          borderRadius: BorderRadius.circular(5)),
      child: TextFormField(
        controller: controller,
        validator: validator,
        cursorHeight: 25,
        style: appstyle(16, Color(kDark.value), FontWeight.w500),
        keyboardType: keyboardType,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: appstyle(
                14, const Color.fromARGB(255, 240, 129, 190), FontWeight.w500),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.red, width: 0.5)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.red, width: 0.5)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.grey, width: 0.5)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0.5)),
            border: InputBorder.none),
      ),
    );
  }
}
