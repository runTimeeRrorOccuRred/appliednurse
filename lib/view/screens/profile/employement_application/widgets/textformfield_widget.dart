import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFormFieldWidget extends StatefulWidget {
  final String labelText;
  final String hintText;
  final Icon icon;
  TextInputType? textInput;
  TextEditingController? textController;
  TextFormFieldWidget({
    required this.labelText,
    required this.hintText,
    required this.icon,
    this.textInput,
    this.textController,
    super.key,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.p14,
        right: AppSizes.p14,
      ),
      child: TextFormField(
        controller: widget.textController,
        onChanged: (value) {
          setState(() {
            widget.textController!.text = value;
          });
        },
        autocorrect: false,
        enableSuggestions: false,
        keyboardType: TextInputType.number,
        style: GoogleFonts.montserrat(
          textStyle: const TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            decoration: TextDecoration.none,
          ),
        ),
        // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          //prefixIcon: widget.icon,
          labelText: widget.labelText,
          labelStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kGrey),
            borderRadius: BorderRadius.circular(AppSizes.p10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: kGrey,
            ),
            borderRadius: BorderRadius.circular(AppSizes.p10),
          ),
          hintText: widget.hintText,
          hintStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
