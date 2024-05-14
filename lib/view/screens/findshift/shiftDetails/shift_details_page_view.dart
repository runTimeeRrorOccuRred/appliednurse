import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShiftDetailsPage extends ConsumerStatefulWidget {
  const ShiftDetailsPage({super.key});

  @override
  ConsumerState<ShiftDetailsPage> createState() => _ShiftDetailsPageState();
}

class _ShiftDetailsPageState extends ConsumerState<ShiftDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.p20,
            //  top: AppSizes.p20,
            right: AppSizes.p20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSizes.p12,
              ),
              SizedBox(
                width: AppSizes.p60,
                height: AppSizes.p60,
                child: Image.asset(
                  'assets/images/apollo_logo1.5x.png',
                ),
              ),
              const SizedBox(
                height: AppSizes.p12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Nurse Required",
                    style: TextStyle(
                      color: kBlackPearl,
                      fontSize: AppSizes.p16,
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p4,
                  ),
                  const Text(
                    "Apollo Hospital",
                    style: TextStyle(color: Color(0xFF808080)),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Text(
                    "About Company",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: richBalck,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p4,
                  ),
                  Text(
                    "Lorem ipsum dolor "
                    "sit amet consectetur. Risus orci etiam "
                    "purus nisi eros faucibus. Sollicitudin "
                    "tempor nulla donec phasellus purus sed "
                    "sed at sit. In sed rhoncus quis enim amet "
                    "adipiscing libero vel. Vitae"
                    " mauris a id aliquam.",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF808080),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p12,
                  ),
                  Text(
                    "Job Details",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: richBalck,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p12,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet consectetur."
                    " Risus orci etiam purus nisi eros faucibus. "
                    "Sollicitudin tempor nulla donec phasellus purus "
                    "sed sed at sit. In sed rhoncus quis enim amet "
                    "adipiscing libero vel. Vitae mauris a id aliquam.\n\n"
                    "Sollicitudin tempor nulla donec phasellus purus sed sed at sit."
                    " In sed rhoncus quis enim amet adipiscing libero vel. "
                    "Vitae mauris a id aliquam.",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF808080),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  const Text(
                    "Pay",
                    style: TextStyle(color: richBalck, fontSize: 16),
                  ),
                  const SizedBox(
                    height: AppSizes.p10,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p10,
                      right: AppSizes.p10,
                      top: AppSizes.p6,
                      bottom: AppSizes.p6,
                    ),
                    decoration: BoxDecoration(
                      color: rowColumnColor,
                      borderRadius: BorderRadius.circular(AppSizes.p10),
                    ),
                    child: const Text(
                      "\$150.00 - \$350.00 per week",
                      style: TextStyle(color: royalBlue),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: AppSizes.p10,
                      left: AppSizes.p16,
                      right: AppSizes.p4,
                      bottom: AppSizes.p16,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kGrey,
                      ),
                      borderRadius: BorderRadius.circular(AppSizes.p10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                right: AppSizes.p10,
                                top: AppSizes.p6,
                                bottom: AppSizes.p6,
                              ),
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: royalBlue,
                                  ),
                                  SizedBox(
                                    width: AppSizes.p6,
                                  ),
                                  Text(
                                    "02 OCT,2023",
                                    style: TextStyle(
                                      color: royalBlue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.p4,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                right: AppSizes.p10,
                                bottom: AppSizes.p6,
                              ),
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.business_center_sharp,
                                    color: kGrey,
                                  ),
                                  SizedBox(
                                    width: AppSizes.p6,
                                  ),
                                  Text(
                                    "Night Shift",
                                    style: TextStyle(
                                      color: Color(0xFF808080),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: AppSizes.p4,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                right: AppSizes.p10,
                                bottom: AppSizes.p6,
                              ),
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: kGrey,
                                  ),
                                  SizedBox(
                                    width: AppSizes.p6,
                                  ),
                                  Text(
                                    "Kolkata,West Bengal",
                                    style: TextStyle(color: Color(0xFF808080)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                right: AppSizes.p10,
                                bottom: AppSizes.p6,
                              ),
                              decoration: BoxDecoration(
                                color: kWhite,
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                              ),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: kGrey,
                                  ),
                                  SizedBox(
                                    width: AppSizes.p6,
                                  ),
                                  Text(
                                    "5 km",
                                    style: TextStyle(color: Color(0xFF808080)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: AppSizes.p4),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/nurse_face.svg'),
                              const SizedBox(
                                width: AppSizes.p8,
                              ),
                              const Text(
                                '5 person required',
                                style: TextStyle(color: Color(0xFF808080)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: CustomButtonComponent(
                      text: 'Apply',
                      blueButton: true,
                      onTap: () => context.pushReplacementNamed(
                        AppRoute.appliedsuccessful.name,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
