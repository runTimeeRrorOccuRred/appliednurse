// ignore: file_names
import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/home/profile_home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';
// ignore: depend_on_referenced_packages

class ManagerSignatureClockInPage extends ConsumerStatefulWidget {
  const ManagerSignatureClockInPage({super.key});

  @override
  ConsumerState<ManagerSignatureClockInPage> createState() =>
      _ManagerSignatureClockInPageState();
}

class _ManagerSignatureClockInPageState
    extends ConsumerState<ManagerSignatureClockInPage> {
  SignatureController controller = SignatureController(
    penStrokeWidth: 3,
    penColor: richBalck,
    exportBackgroundColor: success,
  );
  // late ProfileHomePageViewModel _viewModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppSizes.p48),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.p16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  const SizedBox(
                    width: 68,
                  ),
                  const Text(
                    'Manager Signature',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: AppSizes.p20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p12,
                right: AppSizes.p12,
              ),
              child: Card(
                elevation: 0.1,
                color: kWhite.withOpacity(0.8),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Approve',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: richBalck,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: AppSizes.p6,
                          ),
                          Text(
                            "Monday",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Color(0xFF4F4F4F),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Clock out for Alichia',
                            style: TextStyle(
                              color: richBalck,
                              fontSize: AppSizes.p16,
                            ),
                          ),
                          const SizedBox(
                            height: AppSizes.p6,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.calendar_month,
                                color: royalBlue,
                              ),
                              const SizedBox(
                                width: AppSizes.p4,
                              ),
                              Text(
                                "04 SEP 2023 | 09:00 AM",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                    color: Color(0xFf4F4F4F),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p12,
                right: AppSizes.p12,
              ),
              child: Card(
                elevation: 0,
                color: rowColumnColor.withOpacity(1),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/note_icon1x.png',
                      ),
                      const SizedBox(
                        width: AppSizes.p20,
                      ),
                      Text(
                        textAlign: TextAlign.start,
                        "Manager please sign this after\n"
                        "physically seeing "
                        "this employee \non location.",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Color(0xFF4F4F4F),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p16,
                right: AppSizes.p16,
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: kGrey),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                padding: const EdgeInsets.all(AppSizes.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppSizes.p4),
                    Text(
                      'Michael Mitc',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Color(0xFF808080),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(
            //     left: AppSizes.p16,
            //     right: AppSizes.p16,
            //   ),
            //   child: DecoratedBox(
            //     decoration: const BoxDecoration(
            //       color: rowColumnColor,
            //       // border: Border.all(color: kGrey)
            //     ),
            //     child: TextFormField(
            //       controller: textFieldController,
            //       decoration: InputDecoration(
            //         hintText: 'Enter your message here...',
            //         hintStyle: GoogleFonts.montserrat(
            //           textStyle: const TextStyle(
            //             color: Color(0xFF808080),
            //             fontSize: 16,
            //             fontWeight: FontWeight.w400,
            //           ),
            //         ),
            //         enabledBorder: OutlineInputBorder(
            //           borderSide: BorderSide(
            //             color: kGrey.withOpacity(0.3),
            //           ),
            //           borderRadius: BorderRadius.circular(AppSizes.p10),
            //         ),
            //         focusedBorder: OutlineInputBorder(
            //           borderSide: BorderSide(
            //             color: kGrey.withOpacity(0.3),
            //           ),
            //           borderRadius: BorderRadius.circular(AppSizes.p10),
            //         ),
            //       ),
            //       maxLines: 10,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Signature(
                  controller: controller,
                  width: double.infinity,
                  height: 250,
                  backgroundColor: rowColumnColor,
                ),
              ),
            ),

            const SizedBox(
              height: AppSizes.p6,
            ),
            Padding(
              padding: const EdgeInsets.only(right: AppSizes.p16),
              child: Container(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    controller.clear();
                  },
                  child: Text(
                    "Clear",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: royalBlue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p12,
            ),
            Center(
              child: CustomButtonComponent(
                text: 'Approve',
                blueButton: true,
                onTap: () {
                  ref.read(profileHomePageViewModel).changeClockInValue(1);
                  context.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
