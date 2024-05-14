import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class MyShiftPastItem extends StatefulWidget {
  const MyShiftPastItem({
    super.key,
  });

  @override
  State<MyShiftPastItem> createState() => _MyShiftPastItemState();
}

class _MyShiftPastItemState extends State<MyShiftPastItem> {
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
                        color: Color(0xFF10BAAB),
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
                            "09:00 AM",
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
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                    top: 7,
                    bottom: 7,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFF10BAAB).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(AppSizes.p5),
                  ),
                  child: Text(
                    "Completed",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF10BAAB),
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
                        color: Colors.red,
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
                            "15:00 PM",
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
                left: AppSizes.p14,
                right: AppSizes.p14,
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
                            Icon(
                              Icons.business_center_sharp,
                              color: Colors.grey.shade700,
                              size: 15,
                            ),
                            const SizedBox(
                              width: AppSizes.p8,
                            ),
                            Text(
                              "Afternoon Shift",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.grey.shade700,
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
                            Icon(
                              Icons.location_on,
                              color: Colors.grey.shade700,
                              size: 15,
                            ),
                            const SizedBox(
                              width: AppSizes.p8,
                            ),
                            Text(
                              "Kolkata,West Bengal",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.grey.shade700,
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
                              style: TextStyle(color: royalBlue, fontSize: 14),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: royalBlue,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
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
