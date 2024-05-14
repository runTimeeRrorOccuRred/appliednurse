import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/fonts.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class FilterBottomSheetPage extends ConsumerStatefulWidget {
  const FilterBottomSheetPage({super.key});

  @override
  ConsumerState<FilterBottomSheetPage> createState() =>
      _FilterBottomSheetPageState();
}

class _FilterBottomSheetPageState extends ConsumerState<FilterBottomSheetPage> {
  int sortOptions = 0;
  int facilityOption = 0;
  int shiftOption = 0;
  int distanceOption = 0;
  int postWithinOption = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    top: AppSizes.p50,
                    left: AppSizes.p20,
                  ),
                  child: Text(
                    "Filter",
                    style: TextStyle(
                      color: richBalck,
                      fontSize: AppSizes.p24,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 54,
                    right: AppSizes.p16,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: BorderRadius.circular(AppSizes.p20),
                    ),
                    child: InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: const Icon(
                        Icons.close,
                        color: kWhite,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 0,
            ),
            const SizedBox(
              height: AppSizes.p6,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  sortOptions = 0;
                  facilityOption = 0;
                  shiftOption = 0;
                  distanceOption = 0;
                  postWithinOption = 0;
                });
              },
              child: Container(
                padding: const EdgeInsets.only(right: AppSizes.p16),
                alignment: Alignment.bottomRight,
                child: Text(
                  'Reset',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: royalBlue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p12),
                    child: Text(
                      'Sort By',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: richBalck,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 1,
                          groupValue: sortOptions,
                          onChanged: (value) {
                            setState(() {
                              sortOptions = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Shift",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 2,
                          groupValue: sortOptions,
                          onChanged: (value) {
                            setState(() {
                              sortOptions = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Days",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 0,
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p12),
                    child: Text(
                      'Facility',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: richBalck,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 1,
                          groupValue: facilityOption,
                          onChanged: (value) {
                            setState(() {
                              facilityOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Option 1",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 2,
                          groupValue: facilityOption,
                          onChanged: (value) {
                            setState(() {
                              facilityOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Option 2",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 3,
                          groupValue: facilityOption,
                          onChanged: (value) {
                            setState(() {
                              facilityOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Option 3",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 0,
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p12),
                    child: Text(
                      'Shift',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: richBalck,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 1,
                          groupValue: shiftOption,
                          onChanged: (value) {
                            setState(() {
                              shiftOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "All",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 2,
                          groupValue: shiftOption,
                          onChanged: (value) {
                            setState(() {
                              shiftOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Morning Shift",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 3,
                          groupValue: shiftOption,
                          onChanged: (value) {
                            setState(() {
                              shiftOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Afternoon Shift",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 4,
                          groupValue: shiftOption,
                          onChanged: (value) {
                            setState(() {
                              shiftOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Evening Shift",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 5,
                          groupValue: shiftOption,
                          onChanged: (value) {
                            setState(() {
                              shiftOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Night Shift",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 0,
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p12),
                    child: Text(
                      'Distance',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: richBalck,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 1,
                          groupValue: distanceOption,
                          onChanged: (value) {
                            setState(() {
                              distanceOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Within 4 Km",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 2,
                          groupValue: distanceOption,
                          onChanged: (value) {
                            setState(() {
                              distanceOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Within 6 Km",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 3,
                          groupValue: distanceOption,
                          onChanged: (value) {
                            setState(() {
                              distanceOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Within 8 Km",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 4,
                          groupValue: distanceOption,
                          onChanged: (value) {
                            setState(() {
                              distanceOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Within 14 Km",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 5,
                          groupValue: distanceOption,
                          onChanged: (value) {
                            setState(() {
                              distanceOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Doesn't matter",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            const DottedLine(
              dashColor: Colors.grey,
              dashGapLength: 0,
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p12),
                    child: Text(
                      'Post Within',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: richBalck,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 1,
                          groupValue: postWithinOption,
                          onChanged: (value) {
                            setState(() {
                              postWithinOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Any Time",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 2,
                          groupValue: postWithinOption,
                          onChanged: (value) {
                            setState(() {
                              postWithinOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Last 24 hours",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 3,
                          groupValue: postWithinOption,
                          onChanged: (value) {
                            setState(() {
                              postWithinOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Last 3 Days",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio<int>(
                          activeColor: royalBlue,
                          value: 4,
                          groupValue: postWithinOption,
                          onChanged: (value) {
                            setState(() {
                              postWithinOption = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "Last 14 Days",
                        style:
                            normalText.copyWith(color: richBalck, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: CustomButtonComponent(
                  text: 'Update',
                  blueButton: true,
                  onTap: () => context.pop(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
