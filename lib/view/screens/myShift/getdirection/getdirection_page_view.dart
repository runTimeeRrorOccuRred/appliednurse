import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/CallOutBottomSheet/callOut_bottomSheet_page_view.dart';
import 'package:flutter/material.dart';

class GetDirectionPage extends ConsumerStatefulWidget {
  const GetDirectionPage({super.key});

  @override
  ConsumerState<GetDirectionPage> createState() => _GetDirectionPageState();
}

class _GetDirectionPageState extends ConsumerState<GetDirectionPage> {
  String dropDownValue = 'Why do you want a call out?';

  int index = 0;

  List<String> items = [
    'Why do you want a call out?',
    'Option 1',
    'Option 2',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhite,
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: AppSizes.p20,
            top: AppSizes.p50,
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
                  Text(
                    "Nurse Required",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: kBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p4,
                  ),
                  Text(
                    "Apollo Hospital",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF808080),
                        fontSize: AppSizes.p12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Text(
                    "About Company",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: kBlack,
                        fontSize: AppSizes.p16,
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
                        fontSize: AppSizes.p12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p12,
                  ),
                  Text(
                    "Shift Rate",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: kBlack,
                        fontSize: AppSizes.p16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p8,
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
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Text(
                      "\$446.00/hr",
                      style: TextStyle(color: royalBlue, fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Shift Time & Schedule",
                        style: TextStyle(color: richBalck, fontSize: 16),
                      ),
                      const SizedBox(
                        height: AppSizes.p12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 35,
                                top: MediaQuery.of(context).size.width / 35,
                                bottom: MediaQuery.of(context).size.width / 35,
                                right: MediaQuery.of(context).size.width / 10,
                              ),
                              decoration: BoxDecoration(
                                color: success.withOpacity(0.03),
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                                border: Border.all(
                                  color: success,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_filled,
                                        color: success,
                                      ),
                                      SizedBox(
                                        width: AppSizes.p8,
                                      ),
                                      Text(
                                        'Shift Start',
                                        style: TextStyle(
                                            color: richBalck, fontSize: 14,),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: AppSizes.p4,
                                  ),
                                  Text(
                                    "12:00 PM",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: AppSizes.p16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: AppSizes.p3),
                              padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 35,
                                top: MediaQuery.of(context).size.width / 35,
                                bottom: MediaQuery.of(context).size.width / 35,
                                right: MediaQuery.of(context).size.width / 10,
                              ),
                              decoration: BoxDecoration(
                                color: redColor.withOpacity(0.03),
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p10),
                                border: Border.all(
                                  color: redColor,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.access_time_filled,
                                        color: redColor,
                                      ),
                                      SizedBox(
                                        width: AppSizes.p8,
                                      ),
                                      Text(
                                        'Shift End',
                                        style: TextStyle(
                                            color: richBalck, fontSize: 14,),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: AppSizes.p4,
                                  ),
                                  Text(
                                    "19:00 PM",
                                    style: GoogleFonts.montserrat(
                                      textStyle: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: AppSizes.p16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                            const Text(
                              'Shift Type',
                              style: TextStyle(color: richBalck, fontSize: 16),
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p10,
                                    right: AppSizes.p10,
                                    top: AppSizes.p6,
                                    bottom: AppSizes.p6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: rowColumnColor,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.business_center_sharp,
                                        color: royalBlue,
                                      ),
                                      const SizedBox(
                                        width: AppSizes.p6,
                                      ),
                                      Text(
                                        "Night Shift",
                                        style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                            color: royalBlue,
                                            fontSize: AppSizes.p12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p10,
                                    right: AppSizes.p10,
                                    top: AppSizes.p6,
                                    bottom: AppSizes.p6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: rowColumnColor,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: royalBlue,
                                      ),
                                      const SizedBox(
                                        width: AppSizes.p6,
                                      ),
                                      Text(
                                        "Kolkata,West Bnegal",
                                        style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                            color: royalBlue,
                                            fontSize: AppSizes.p12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p10,
                                    right: AppSizes.p10,
                                    top: AppSizes.p6,
                                    bottom: AppSizes.p6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: rowColumnColor,
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: royalBlue,
                                      ),
                                      const SizedBox(
                                        width: AppSizes.p6,
                                      ),
                                      Text(
                                        "5 km",
                                        style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                            color: royalBlue,
                                            fontSize: AppSizes.p12,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Text(
                                      "Get Direction",
                                      style: TextStyle(
                                        color: royalBlue,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: royalBlue,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  CustomButtonComponent(
                    text: 'Call Out',
                    blueButton: true,
                    onTap: () => showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, set) {
                            return const CallOutBottomsheetPage();
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  InkWell(
                      onTap: () {},
                      child: CustomButtonComponent(
                        text: 'Back to Home',
                        blueButton: false,
                      ),),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
