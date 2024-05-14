// ignore_for_file: unused_import

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class ReferFriendPage extends ConsumerStatefulWidget {
  const ReferFriendPage({super.key});

  @override
  ConsumerState<ReferFriendPage> createState() => _ReferFriendPageState();
}

class _ReferFriendPageState extends ConsumerState<ReferFriendPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: royalBlue,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onTap: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Refer a Friend",
          style: TextStyle(color: kWhite, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSizes.p20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Row(
                children: [
                  Text(
                    'We appreciate the referral.',
                    style: blackTextColor.copyWith(fontSize: AppSizes.p20),
                  ),
                  const SizedBox(
                    width: AppSizes.p6,
                  ),
                  Image.asset('assets/images/thumbsup1x.png'),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p50,
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
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kGrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: royalBlue,
                        size: AppSizes.p20,
                      ),
                      labelText: "Friend's Full Name",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: richBalck,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Enter Full name",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: richBalck,
                        ),
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
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kGrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: royalBlue,
                        size: AppSizes.p20,
                      ),
                      labelText: "Friend's Phone Number",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: richBalck,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Enter your friend's phone number",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: richBalck,
                        ),
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
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email,
                        color: royalBlue,
                        size: AppSizes.p20,
                      ),
                      labelText: "Friend's Email",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: richBalck,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: kGrey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(AppSizes.p10),
                      ),
                      hintText: "Enter your friend's email",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: richBalck,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: DottedBorder(
                          dashPattern: index == 0 ? [6, 0] : [6, 4],
                          radius: const Radius.circular(6),
                          color: index == 0 ? kWhite : const Color(0xFFACAFB5),
                          borderType: BorderType.RRect,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    index == 0 ? rowColumnColor : Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                    color: index == 0 ? blueColor : kWhite,
                                    width: index == 0 ? 2 : 0,
                                  ),
                                  top: BorderSide(
                                    color: index == 0
                                        ? kGrey.withOpacity(0.3)
                                        : kWhite,
                                  ),
                                  left: BorderSide(
                                    color: index == 0
                                        ? kGrey.withOpacity(0.3)
                                        : kWhite,
                                  ),
                                  right: BorderSide(
                                    color: index == 0
                                        ? kGrey.withOpacity(0.3)
                                        : kWhite,
                                  ),
                                ),
                              ),
                              height: 88,
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.message,
                                    color: index == 0
                                        ? royalBlue
                                        : const Color(0xFFACAFB5),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Text Message',
                                    style: TextStyle(
                                      color: index == 0
                                          ? royalBlue
                                          : const Color(0xFFACAFB5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: DottedBorder(
                          dashPattern: index == 1 ? [6, 0] : [6, 4],
                          radius: const Radius.circular(6),
                          color: index == 1 ? kWhite : const Color(0xFFACAFB5),
                          borderType: BorderType.RRect,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    index == 1 ? rowColumnColor : Colors.white,
                                border: Border(
                                  bottom: BorderSide(
                                    color: index == 1 ? blueColor : kWhite,
                                    width: index == 1 ? 2 : 0,
                                  ),
                                  top: BorderSide(
                                    color: index == 1
                                        ? kGrey.withOpacity(0.3)
                                        : kWhite,
                                  ),
                                  left: BorderSide(
                                    color: index == 1
                                        ? kGrey.withOpacity(0.3)
                                        : kWhite,
                                  ),
                                  right: BorderSide(
                                    color: index == 1
                                        ? kGrey.withOpacity(0.3)
                                        : kWhite,
                                  ),
                                ),
                              ),
                              height: 88,
                              width: MediaQuery.of(context).size.width / 2.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/mailicon1x.png',
                                    color: index == 1
                                        ? royalBlue
                                        : const Color(0xFFACAFB5),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Email',
                                    style: TextStyle(
                                      color: index == 1
                                          ? royalBlue
                                          : const Color(0xFFACAFB5),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p40,
                ),
                CustomButtonComponent(
                  text: "Send",
                  blueButton: true,
                  onTap: () => context.pop(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
// Container(
//                   margin: EdgeInsets.symmetric(horizontal: 16),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             index = 0;
//                           });
//                         },
//                         child: Container(
//                           height: 40,
//                           width: 100,
//                           decoration: BoxDecoration(
//                               border: Border.all(
//                                   color:
//                                       index == 0 ? Colors.blue : Colors.black)),
//                           child: Text(
//                             "Text 1",
//                             style: TextStyle(
//                                 color: index == 0 ? Colors.blue : Colors.black),
//                           ),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             index = 1;
//                           });
//                         },
//                         child: Container(
//                           height: 40,
//                           width: 100,
//                           decoration: BoxDecoration(
//                               border: Border.all(
//                                   color:
//                                       index == 1 ? Colors.blue : Colors.black)),
//                           child: Text(
//                             "Text 2",
//                             style: TextStyle(
//                                 color: index == 1 ? Colors.blue : Colors.black),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
