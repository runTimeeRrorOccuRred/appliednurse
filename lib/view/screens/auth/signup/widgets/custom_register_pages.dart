// ignore_for_file: prefer_const_declarations, unused_local_variable

import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomRegisterPage extends ConsumerStatefulWidget {
  const CustomRegisterPage({super.key});

  @override
  ConsumerState<CustomRegisterPage> createState() => _CustomRegisterPageState();
}

class _CustomRegisterPageState extends ConsumerState<CustomRegisterPage> {
  final dobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'Arunachal Pradesh';

    final List<String> items = [
      'Arunachal Pradesh',
      'Bihar',
      'Chattisgarh',
      'West Bengal',
    ];

    final bool value = false;
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: AppSizes.p14, right: AppSizes.p14),
          child: TextFormField(
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              // contentPadding: EdgeInsets.zero,
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
              hintText: "Enter Your Full name",
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
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: TextFormField(
            enabled: true,
            autocorrect: false,
            enableSuggestions: false,
            cursorColor: royalBlue,
            keyboardType: TextInputType.datetime,
            controller: dobController,
            onTap: () async {
              DateTime? date = DateTime(1900);
              date = await showDatePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: const ColorScheme.light(
                        primary: royalBlue,
                      ),
                    ),
                    child: child!,
                  );
                },
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(1900),
                lastDate: DateTime(2100),
              );
              if (date != null) {
                final String formattedDate =
                    DateFormat('dd-MM-yyyy').format(date);
                print(formattedDate);
                setState(() {
                  dobController.text = formattedDate;
                });
              } else {
                print("Not Selected");
              }
            },
            //enabled: true, controller: dobController,
            decoration: InputDecoration(
              suffixIcon: const Icon(
                Icons.calendar_month,
                color: Color(0xFF808080),
              ),
              labelText: "Date of birth",
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
                borderRadius: BorderRadius.circular(AppSizes.p20),
              ),
              hintText: "dd/mm/yyyy",
              hintStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w400,
                ),
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
              // prefixIcon: const Icon(Icons.location_on, color: royalBlue),
              labelText: "Address",
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
              hintText: "Enter Your Full address",
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
              // prefixIcon: const Icon(Icons.location_city, color: royalBlue),
              labelText: "City",
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
              hintText: "Enter Your city",
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
          child: DropdownButtonFormField(
            value: dropDownValue,
            icon:
                const Icon(Icons.keyboard_arrow_down, color: Color(0xFF808080)),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(
                  items,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: richBalck,
                      fontSize: AppSizes.p14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue!;
              });
            },
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
              // prefixIcon: const Icon(Icons.location_on, color: royalBlue),
              labelText: "Zip Code",
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
              hintText: "Enter Your Zip Code",
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
              // prefixIcon: const Icon(Icons.email, color: royalBlue),
              labelText: "Email",
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
              hintText: "Enter Your Email id",
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
              // prefixIcon: const Icon(Icons.phone, color: royalBlue),
              labelText: "Contact Number",
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
                borderRadius: BorderRadius.circular(AppSizes.p20),
              ),
              hintText: "Enter Your contact number",
              hintStyle: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p14,
                  fontWeight: FontWeight.w500,
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

        //const SizedBox(height: AppSizes.p14,),

        // RichText(
        //     textAlign: TextAlign.center,
        //     textDirection: TextDirection.rtl,
        //     maxLines: 1,
        //     text: TextSpan(text: 'Dont have an account?',
        //     children: [
        //       TextSpan(text: 'Register')
        //     ]))
      ],
    );
  }
}
