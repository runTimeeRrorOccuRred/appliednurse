import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRegisterPage3 extends StatefulWidget {
  const CustomRegisterPage3({super.key});

  @override
  State<CustomRegisterPage3> createState() => _CustomRegisterPage3State();
}

class _CustomRegisterPage3State extends State<CustomRegisterPage3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: AppSizes.p14, right: AppSizes.p14),
          child: TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              // prefixIcon: const Icon(
              //   Icons.location_city,
              //   color: royalBlue,
              // ),
              labelText: "Company Name",
              labelStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: "Enter your company name",
              hintStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: AppSizes.p16,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppSizes.p20,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: AppSizes.p14, right: AppSizes.p14),
          child: TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              // prefixIcon: const Icon(
              //   Icons.contact_phone,
              //   color: royalBlue,
              // ),
              labelText: "Phone Number",
              labelStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: "Enter company phone number",
              hintStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: AppSizes.p16,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppSizes.p20,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: AppSizes.p14, right: AppSizes.p14),
          child: TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              // prefixIcon: const Icon(
              //   Icons.supervisor_account,
              //   color: royalBlue,
              // ),
              labelText: "Supervisor",
              labelStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              hintText: "Company supervisor name",
              hintStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: AppSizes.p16,
                fontWeight: FontWeight.w600,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppSizes.p40,
        ),
      ],
    );
  }
}
