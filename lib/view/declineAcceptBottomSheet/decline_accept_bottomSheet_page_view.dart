import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class DeclineAcceptBottomSheetPage extends ConsumerStatefulWidget {
  const DeclineAcceptBottomSheetPage({super.key});

  @override
  ConsumerState<DeclineAcceptBottomSheetPage> createState() =>
      _DeclineAcceptBottomSheetPageState();
}

class _DeclineAcceptBottomSheetPageState
    extends ConsumerState<DeclineAcceptBottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 350,
      child: Padding(
        padding: const EdgeInsets.all(
          20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Image.asset(
                    "assets/images/cancel.png",
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/declineshift.png",
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Decline Shift",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: AppSizes.p20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Are you sure you want to decline?\n  This action cannot be undone",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: AppSizes.p16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    context.pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade300,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.grey.shade300,
                    ),
                    width: MediaQuery.of(
                          context,
                        ).size.width *
                        0.4,
                    height: AppSizes.p50,
                    child: const Center(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: AppSizes.p16,
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.red,
                    ),
                    width: MediaQuery.of(
                          context,
                        ).size.width *
                        0.4,
                    height: AppSizes.p50,
                    child: const Center(
                      child: Text(
                        "Decline",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppSizes.p16,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
