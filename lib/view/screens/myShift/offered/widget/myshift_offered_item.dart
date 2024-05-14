import 'package:applied_nurse/utils/accept_decline_button.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/declineAcceptBottomSheet/decline_accept_bottomSheet_page_view.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class MyShiftOfferedItem extends StatefulWidget {
  const MyShiftOfferedItem({
    super.key,
  });

  @override
  State<MyShiftOfferedItem> createState() => _MyShiftOfferedItemState();
}

class _MyShiftOfferedItemState extends State<MyShiftOfferedItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSizes.p12,
        right: AppSizes.p12,
      ),
      child: Card(
        // color: Colors.white.withOpacity(0.2),
        elevation: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppSizes.p12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Monday",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: AppSizes.p16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_rounded,
                        size: AppSizes.p20,
                      ),
                      const SizedBox(
                        width: AppSizes.p4,
                      ),
                      Text(
                        "04 Sep 2023",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: AppSizes.p14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/apollo_logo1x.png',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              lineThickness: 0.5,
              dashGapLength: 8,
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.p8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.access_time_filled,
                        size: AppSizes.p28,
                        color: Colors.black38,
                      ),
                      const SizedBox(
                        width: AppSizes.p4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shift Start",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: AppSizes.p16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "12:00PM",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: AppSizes.p14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p8,
                    right: AppSizes.p8,
                    top: AppSizes.p4,
                    bottom: AppSizes.p4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppSizes.p5),
                  ),
                  child: Text(
                    "Not Started",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.orange,
                        fontSize: AppSizes.p14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: AppSizes.p8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.access_time_filled,
                        size: AppSizes.p28,
                        color: Colors.black38,
                      ),
                      const SizedBox(
                        width: AppSizes.p4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Shift End",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: AppSizes.p16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "18:00PM",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.black54,
                                fontSize: AppSizes.p14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p14,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              lineThickness: 0.5,
              dashGapLength: 8,
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p10,
                right: AppSizes.p10,
                bottom: AppSizes.p16,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: AppSizes.p10,
                          right: AppSizes.p10,
                          top: AppSizes.p4,
                          bottom: AppSizes.p4,
                        ),
                        decoration: BoxDecoration(
                          color: rowColumnColor,
                          borderRadius: BorderRadius.circular(
                            AppSizes.p20,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.business_center_sharp,
                              color: royalBlue,
                              size: 15,
                            ),
                            const SizedBox(
                              width: AppSizes.p8,
                            ),
                            Text(
                              "Night Shift",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: royalBlue.withOpacity(1),
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
                    height: AppSizes.p8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: AppSizes.p10,
                          right: AppSizes.p10,
                          top: AppSizes.p4,
                          bottom: AppSizes.p4,
                        ),
                        decoration: BoxDecoration(
                          color: rowColumnColor,
                          borderRadius: BorderRadius.circular(
                            AppSizes.p20,
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: royalBlue,
                              size: 15,
                            ),
                            const SizedBox(
                              width: AppSizes.p8,
                            ),
                            Text(
                              "Kolkata,West Bengal",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: royalBlue.withOpacity(1),
                                  fontSize: AppSizes.p12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.pushNamed(
                            AppRoute.getdirection.name,
                          );
                        },
                        child: const Row(
                          children: [
                            Text(
                              "Get Direction",
                              style: TextStyle(color: royalBlue),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: royalBlue,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p14,
                  ),
                  const DottedLine(
                    dashColor: Colors.grey,
                    lineThickness: 0.5,
                    dashGapLength: 8,
                  ),
                  const SizedBox(
                    height: AppSizes.p10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Shift Rate",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppSizes.p14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p5,
                  ),
                  Row(
                    children: [
                      Text(
                        "\$406.69/hr",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: royalBlue,
                            fontSize: AppSizes.p20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: AcceptDeclineButton(
                            text: "Decline",
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(
                                        builder: (context, set) {
                                      return const DeclineAcceptBottomSheetPage();
                                    },);
                                  },);
                            },
                            blueButoon: false,),
                      ),
                      const SizedBox(
                        width: AppSizes.p10,
                      ),
                      Expanded(
                        child: AcceptDeclineButton(
                            text: "Accept",
                            onTap: () {
                              AppRoute.acceptingPage.name;
                            },
                            blueButoon: true,),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
