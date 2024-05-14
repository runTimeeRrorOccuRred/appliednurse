import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/fonts.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class PersonalDetailsPage extends ConsumerStatefulWidget {
  const PersonalDetailsPage({super.key});

  @override
  ConsumerState<PersonalDetailsPage> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends ConsumerState<PersonalDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kGrey.withOpacity(0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: kGrey.withOpacity(0.18),
                ),
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: AppSizes.p50,
                        left: AppSizes.p16,
                      ),
                      child: InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: richBalck,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 65,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: AppSizes.p40),
                      child: Text(
                        "Personal Details",
                        style: TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: AppSizes.p20),
                  child: CircleAvatar(
                    backgroundColor: kWhite,
                    maxRadius: 52,
                    child: Image.asset('assets/icons/person_icon.png'),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Michael Mitc",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: richBalck,
                          ),
                        ),
                      ),
                      Text(
                        "Position: Nurse",
                        style: normalText.copyWith(color: richBalck),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.p24,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p16,
                      right: AppSizes.p16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Full Name',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              CustomContainer(text: "Michael Mitc")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p16,
                      right: AppSizes.p16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Date of Birth',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              CustomContainer(text: "04/03/2020")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p16,
                      right: AppSizes.p16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              // Text(
                              //   "13 North",
                              //   style: GoogleFonts.montserrat(
                              //     textStyle: const TextStyle(
                              //       color: Color(0xFF4F4F4F),
                              //       fontSize: AppSizes.p16,
                              //       fontWeight: FontWeight.w500,
                              //       decoration: TextDecoration.none,
                              //     ),
                              //   ),
                              // ),
                              CustomContainer(text: "13 North")
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p16,
                      right: AppSizes.p16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email address',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              // Text(
                              //   "michealmitc30@gmail.com",
                              //   style: GoogleFonts.montserrat(
                              //     textStyle: const TextStyle(
                              //       color: Color(0xFF4F4F4F),
                              //       fontSize: AppSizes.p16,
                              //       fontWeight: FontWeight.w500,
                              //       decoration: TextDecoration.none,
                              //     ),
                              //   ),
                              // ),
                              CustomContainer(
                                text: "michealmitc30@gmail.com",
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p16,
                      right: AppSizes.p16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Mobile phone',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              // Text(
                              //   "9876543210",
                              //   style: GoogleFonts.montserrat(
                              //     textStyle: const TextStyle(
                              //       color: Color(0xFF4F4F4F),
                              //       fontSize: AppSizes.p16,
                              //       fontWeight: FontWeight.w500,
                              //       decoration: TextDecoration.none,
                              //     ),
                              //   ),
                              // ),
                              CustomContainer(
                                text: "9876543210",
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Emergency Contact Details',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: royalBlue,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Please provide emergency contact person details',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4F4F4F),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              // Text(
                              //   "Johny Wilson",
                              //   style: GoogleFonts.montserrat(
                              //     textStyle: const TextStyle(
                              //       color: Color(0xFF4F4F4F),
                              //       fontSize: AppSizes.p16,
                              //       fontWeight: FontWeight.w500,
                              //       decoration: TextDecoration.none,
                              //     ),
                              //   ),
                              // ),
                              CustomContainer(
                                text: "Johny Wilson",
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Relationship',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              // Text(
                              //   "Mother",
                              //   style: GoogleFonts.montserrat(
                              //     textStyle: const TextStyle(
                              //       color: Color(0xFF4F4F4F),
                              //       fontSize: AppSizes.p16,
                              //       fontWeight: FontWeight.w500,
                              //       decoration: TextDecoration.none,
                              //     ),
                              //   ),
                              // ),
                              CustomContainer(
                                text: "Mother",
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        DottedLine(
                          dashColor: kGrey.withOpacity(0.4),
                          dashGapLength: 0,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Phone Number',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                              // Text(
                              //   "+123 9280000030",
                              //   style: GoogleFonts.montserrat(
                              //     textStyle: const TextStyle(
                              //       color: Color(0xFF4F4),
                              //       fontSize: AppSizes.p16,
                              //       fontWeight: FontWeight.w500,
                              //       decoration: TextDecoration.nF4Fone,
                              //     ),
                              //   ),
                              // ),
                              const CustomContainer(
                                text: "+123 9280000030",
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              DottedLine(
                                dashColor: kGrey.withOpacity(0.4),
                                dashGapLength: 0,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Expanded(child: Container()),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: AppSizes.p16),
            child: Center(
              child: CustomButtonComponent(
                text: 'Edit Profile',
                blueButton: true,
                onTap: () {
                  context.pushNamed(AppRoute.editProfile.name);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String text;
  // final double size;
  // final FontWeight fontWeight;
  // final Color color;

  const CustomContainer({
    super.key,
    required this.text,
    // required this.size,
    // required this.fontWeight,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        textStyle: const TextStyle(
          color: Color(0xFF4F4F4F),
          fontSize: AppSizes.p16,
          fontWeight: FontWeight.w500,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }
}
