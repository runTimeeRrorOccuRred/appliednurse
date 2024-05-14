import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class FilterBottomSheet extends ConsumerStatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  ConsumerState<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends ConsumerState<FilterBottomSheet> {
  int selectedOption = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 320,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: AppSizes.p20,
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
            padding: const EdgeInsets.only(
              left: AppSizes.p8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: AppSizes.p16,
                  ),
                  child: Text(
                    "Sort By",
                    style: TextStyle(
                      color: richBalck,
                      fontSize: AppSizes.p20,
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
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                    const Text(
                      "Facility",
                      style: TextStyle(fontSize: 18),
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
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                    const Text(
                      "Shift",
                      style: TextStyle(fontSize: 18),
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
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                    const Text(
                      'Distance',
                      style: TextStyle(fontSize: 18),
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
                        groupValue: selectedOption,
                        onChanged: (value) {
                          setState(() {
                            selectedOption = value!;
                          });
                        },
                      ),
                    ),
                    const Text(
                      "Days",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
