import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class TimeSheetPage extends ConsumerStatefulWidget {
  const TimeSheetPage({super.key});

  @override
  ConsumerState<TimeSheetPage> createState() => _TimeSheetPageState();
}

class _TimeSheetPageState extends ConsumerState<TimeSheetPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: kGrey.withOpacity(0),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: AppSizes.p50),
              decoration: const BoxDecoration(color: royalBlue),
              child: const Column(
                children: [
                  Center(
                    child: Text(
                      "Time Sheet",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: AppSizes.p24,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppSizes.p20,
                  ),
                  TabBar(
                    indicatorColor: kWhite,
                    tabs: [
                      Tab(
                        child: Text(
                          'Sep',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Oct",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Nov',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Dec',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          '2023',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: AppSizes.p6,
                      left: AppSizes.p12,
                      right: AppSizes.p12,
                    ),
                    child: Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.p12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'September 5,2023',
                              style: TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              height: AppSizes.p14,
                            ),
                            const DottedLine(
                              dashColor: Colors.grey,
                              dashGapLength: 8,
                            ),
                            const SizedBox(
                              height: AppSizes.p14,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.access_time_filled,
                                      color: Color(0xFF10BAAB),
                                    ),
                                    SizedBox(
                                      width: AppSizes.p6,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Clock In',
                                          style: TextStyle(
                                              color: richBalck,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,),
                                        ),
                                        Text(
                                          '09:00 AM',
                                          style: TextStyle(
                                              color: Color(0xFF4F4F4F),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                    left: AppSizes.p14,
                                    right: AppSizes.p14,
                                    top: AppSizes.p4,
                                    bottom: AppSizes.p4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF10BAAB).withOpacity(0.08),
                                    borderRadius:
                                        BorderRadius.circular(AppSizes.p10),
                                  ),
                                  child: Text(
                                    "Completed",
                                    style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                            color: Color(0xFF10BAAB),
                                            fontWeight: FontWeight.w500,),),
                                  ),
                                ),
                                const Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.access_time_filled,
                                      color: redColor,
                                    ),
                                    SizedBox(
                                      width: AppSizes.p6,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Clock Out',
                                          style: TextStyle(color: richBalck),
                                        ),
                                        Text(
                                          '15:00 PM',
                                          style: TextStyle(
                                              color: Color(0xFF4F4F4F),),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
