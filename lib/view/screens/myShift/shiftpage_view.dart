import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:applied_nurse/view/screens/myShift/offered/shiftpage_offered_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/past/shiftpage_past_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/upcoming/shiftpage_upcoming_page_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShiftPage extends StatefulWidget {
  const ShiftPage({super.key});

  @override
  State<ShiftPage> createState() => _ShiftPageState();
}

class _ShiftPageState extends State<ShiftPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.1),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: AppSizes.p50),
              decoration: const BoxDecoration(color: royalBlue),
              child: Column(
                children: [
                  const Text(
                    "My Shifts",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: AppSizes.p20,
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppSizes.p20,
                      right: AppSizes.p20,
                    ),
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(
                        cursorColor: Colors.white,
                        cursorHeight: 25,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: royalBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: royalBlue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.2),
                          prefixIcon: const Icon(
                            Icons.search_outlined,
                            color: Colors.white,
                            size: AppSizes.p24,
                          ),
                          hintText: "Search Shifts",
                          hintStyle: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: AppSizes.p14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: AppSizes.p16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p20,
                  ),
                  const TabBar(
                    indicatorColor: royalBlue,
                    tabs: [
                      Tab(
                        child: Text(
                          'Upcoming',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Offered",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Past',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  ShiftPageUpcoming(),
                  ShiftPageOffered(),
                  ShiftPagePast(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
