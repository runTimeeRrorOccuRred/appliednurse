// ignore_for_file: must_be_immutable

import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonComponent extends StatefulWidget {
  final String text;
  //final Color? textColor;
  // final Color? color;
  final Function()? onTap;
  bool? blueButton;

  CustomButtonComponent({
    this.blueButton,
    required this.text,
    // this.color=kDodgerBlue,
    //this.textColor,
    this.onTap,
    super.key,
  });

  @override
  State<CustomButtonComponent> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButtonComponent> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: (widget.blueButton == true) ? Colors.white : royalBlue,
          ),
          borderRadius: BorderRadius.circular(10),
          color: (widget.blueButton == true) ? royalBlue : Colors.transparent,
        ),
        width: MediaQuery.of(context).size.width * 0.93,
        height: AppSizes.p54,
        child: Center(
          child: Text(widget.text,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                color: widget.blueButton == true ? kWhite : royalBlue,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),),),
        ),
      ),
    );
  }
}
