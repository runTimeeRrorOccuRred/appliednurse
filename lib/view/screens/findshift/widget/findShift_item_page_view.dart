import 'package:applied_nurse/utils/accept_decline_button.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class FindShiftItems extends StatefulWidget {
  const FindShiftItems({
    super.key,
  });

  @override
  State<FindShiftItems> createState() => _FindShiftItemsState();
}

class _FindShiftItemsState extends State<FindShiftItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.p12, right: AppSizes.p12),
      child: Card(
        elevation: 0,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppSizes.p10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nurse required",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(color: richBalck),
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),),
                        const Text('Apollo Hospital'),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: AppSizes.p14),
                    child: Image.asset('assets/images/apollo_logo1x.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/calendericon.png'),
                      const SizedBox(
                        width: AppSizes.p5,
                      ),
                      Text(
                        "02 OCT 2023",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: royalBlue,
                            fontSize: AppSizes.p12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p6,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/night_shift1x.png'),
                      const SizedBox(
                        width: AppSizes.p4,
                      ),
                      Text(
                        "Night shift",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: AppSizes.p12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p6,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/locationicon.png'),
                      const SizedBox(
                        width: AppSizes.p4,
                      ),
                      Text(
                        "Kolkata,West Bengal",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: AppSizes.p12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p6,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/distance1x.png'),
                      const SizedBox(
                        width: AppSizes.p2,
                      ),
                      Text(
                        "5 km",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: AppSizes.p12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p6,
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
                      borderRadius: BorderRadius.circular(AppSizes.p20),
                    ),
                    child: Text(
                      "\$102.00 - \$250.00 per week",
                      style: TextStyle(
                        color: royalBlue.withOpacity(0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p6,
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
                          borderRadius: BorderRadius.circular(AppSizes.p20),
                        ),
                        child: Text(
                          "Full Time",
                          style: TextStyle(
                            color: royalBlue.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: AppSizes.p6,
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
                          borderRadius: BorderRadius.circular(AppSizes.p20),
                        ),
                        child: Text(
                          "Monday - Saturday",
                          style: TextStyle(
                            color: royalBlue.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AcceptDeclineButton(
                          text: "Details",
                          onTap: () =>
                              context.pushNamed(AppRoute.shiftdetails.name),
                          blueButoon: false,
                        ),
                      ),
                      const SizedBox(
                        width: AppSizes.p10,
                      ),
                      Expanded(
                        child: AcceptDeclineButton(
                            text: 'Apply',
                            onTap: () => context
                                .pushNamed(AppRoute.appliedsuccessful.name),
                            blueButoon: true,),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
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
