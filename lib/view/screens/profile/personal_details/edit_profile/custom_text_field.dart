import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? labelText;
  final String? Function(String?)? validator;

  const CustomTextField(
      {super.key,
      required this.controller,
      this.prefixIcon,
      this.labelText,
      this.keyboardType,
      this.suffixIcon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.p14,
        right: AppSizes.p14,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        autocorrect: false,
        enableSuggestions: false,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            color: richBalck,
            fontSize: AppSizes.p14,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
        ),
        validator: validator,
        // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          // const Icon(
          //   Icons.person,
          //   color: royalBlue,
          //   size: AppSizes.p24,
          // ),
          labelText: labelText,
          labelStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: richBalck,
              fontSize: AppSizes.p14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kGrey),
            borderRadius: BorderRadius.circular(AppSizes.p10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: royalBlue,
            ),
            borderRadius: BorderRadius.circular(AppSizes.p10),
          ),
          // hintText: "Enter your first name",
          hintStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: richBalck,
              fontSize: AppSizes.p14,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
