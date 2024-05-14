import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRegisterPage2 extends StatefulWidget {
  const CustomRegisterPage2({super.key});

  @override
  State<CustomRegisterPage2> createState() => _CustomRegisterPage2State();
}

class _CustomRegisterPage2State extends State<CustomRegisterPage2> {
  bool registeredNurse = false;
  bool licensedNurse = false;
  bool certifiedNurse = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: AppSizes.p14),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Positions",
                style: TextStyle(fontSize: AppSizes.p20, color: Colors.black),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: royalBlue,
                  checkColor: kWhite,
                  value: registeredNurse,
                  onChanged: (value) => setState(() {
                    registeredNurse = value!;
                  }),
                ),
                const Text(
                  'Registered Nurse',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: royalBlue,
                  checkColor: kWhite,
                  value: licensedNurse,
                  onChanged: (value) => setState(() {
                    licensedNurse = value!;
                  }),
                ),
                const Text(
                  'License Practical Nurse',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: royalBlue,
                  checkColor: kWhite,
                  value: certifiedNurse,
                  onChanged: (value) => setState(() {
                    certifiedNurse = value!;
                  }),
                ),
                const Text(
                  'Certified Nursing Assistant',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p40,
            ),
            Container(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "References",
                style: TextStyle(
                  fontSize: AppSizes.p20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p12,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: const Text(
                "Please list three professional references\n(please do not list former co-workers).",
                style: TextStyle(fontSize: AppSizes.p14),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: AppSizes.p14),
              child: const Text(
                "1. References",
                style: TextStyle(
                  color: royalBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: AppSizes.p16,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p14,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: TextFormField(
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.person,
                      //   color: royalBlue,
                      // ),
                      labelText: "Full Name",
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
                      hintText: "Enter your name",
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
                  height: AppSizes.p16,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: TextFormField(
                    autocorrect: false,
                    enableSuggestions: false,
                    decoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.people,
                      //   color: royalBlue,
                      // ),
                      labelText: "Relationship",
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
                      hintText: "Relationship with the employee",
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
                  height: AppSizes.p16,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.phone,
                      //   color: royalBlue,
                      // ),
                      labelText: "Contact number",
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
                      hintText: "Enter his/her contact number",
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
              ],
            ),
            const SizedBox(
              height: AppSizes.p28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: royalBlue,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(2),
                        child: Icon(
                          Icons.add,
                          color: kWhite,
                          size: 16,
                        ),
                      )),
                  gapW10,
                  const Text(
                    "Add references",
                    style: TextStyle(
                      color: royalBlue,
                      fontSize: AppSizes.p14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
          ],
        ),
      ],
    );
  }
}
