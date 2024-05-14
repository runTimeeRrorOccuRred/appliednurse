import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/filter_bottom_sheet/filter_bottom_sheet_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/upcoming/widget/myshift_upcoming_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShiftPageUpcoming extends ConsumerStatefulWidget {
  const ShiftPageUpcoming({super.key});

  @override
  ConsumerState<ShiftPageUpcoming> createState() => _ShiftPageUpcomingState();
}

class _ShiftPageUpcomingState extends ConsumerState<ShiftPageUpcoming> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sorted By',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Color(0xFF808080),
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Text(
                      "Dates",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: royalBlue.withOpacity(0.8),
                          fontSize: AppSizes.p16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder: (context, set) {
                            return const FilterBottomSheetPage();
                          },
                        );
                      },
                    );
                  },
                  child: Container(
                    width: AppSizes.p28,
                    height: AppSizes.p28,
                    decoration: BoxDecoration(
                      color: royalBlue,
                      borderRadius: BorderRadius.circular(AppSizes.p5),
                    ),
                    padding: const EdgeInsets.all(6),
                    child: SvgPicture.asset(
                      'assets/images/iconfile.svg',
                      color: kWhite,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 80,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const MyShiftUpcomingItem();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
