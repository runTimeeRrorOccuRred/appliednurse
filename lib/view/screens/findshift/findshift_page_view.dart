// ignore_for_file: unnecessary_import

import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/findshift/widget/findShift_item_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FindShiftPage extends ConsumerStatefulWidget {
  const FindShiftPage({super.key});

  @override
  ConsumerState<FindShiftPage> createState() => _FindShiftPageState();
}

class _FindShiftPageState extends ConsumerState<FindShiftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            //height: 300,
            padding: const EdgeInsets.only(top: AppSizes.p50),
            decoration: const BoxDecoration(color: royalBlue),
            child: Column(
              children: [
                const Text(
                  "Find Shifts",
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
                      left: AppSizes.p20, right: AppSizes.p20,),
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
                            borderRadius: BorderRadius.circular(10),),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: royalBlue),
                            borderRadius: BorderRadius.circular(10),),
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
                                fontWeight: FontWeight.w400,),),
                      ),
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: AppSizes.p16,
                            fontWeight: FontWeight.w600,
                            decoration: TextDecoration.none,),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.p16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: AppSizes.p20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sorted by',
                      style: TextStyle(fontSize: AppSizes.p16),
                    ),
                    Text(
                      "Dates",
                      style: TextStyle(
                        color: royalBlue,
                        fontSize: AppSizes.p20,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: Container(
                  width: AppSizes.p28,
                  height: AppSizes.p28,
                  decoration: BoxDecoration(
                    color: royalBlue,
                    borderRadius: BorderRadius.circular(AppSizes.p6),
                  ),
                  padding: const EdgeInsets.all(6),
                  child: SvgPicture.asset(
                    'assets/images/iconfile.svg',
                    color: kWhite,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.p6,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  itemBuilder: (context, items) {
                    return const FindShiftItems();
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
