import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/home/profile_home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:signature/signature.dart';

class ManagerSignatureClockOut extends ConsumerStatefulWidget {
  const ManagerSignatureClockOut({super.key});

  @override
  ConsumerState<ManagerSignatureClockOut> createState() =>
      _ManagerSignaturePageClockOutState();
}

class _ManagerSignaturePageClockOutState
    extends ConsumerState<ManagerSignatureClockOut> {
  @override
  Widget build(BuildContext context) {
    final SignatureController controller = SignatureController();
    final textFieldController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        centerTitle: true,
        title: const Text(
          'Manager Signature',
          style: TextStyle(color: richBalck, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                          Text(
                            'Clock out for Alichia',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: richBalck,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
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
                                    color: Color(0xFF4F4F4F),
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Signature(
                  controller: controller,
                  backgroundColor: rowColumnColor,
                  width: double.infinity,
                  height: 250,
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
              height: AppSizes.p10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p16,
                right: AppSizes.p16,
              ),
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: kWhite,
                  // border: Border.all(color: kGrey)
                ),
                child: TextFormField(
                  controller: textFieldController,
                  decoration: InputDecoration(
                    hintText: 'Enter Comment about the shift...',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Color(0xFF4F4F4F),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: kGrey.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(AppSizes.p10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: kGrey.withOpacity(0.3),
                      ),
                      borderRadius: BorderRadius.circular(AppSizes.p10),
                    ),
                  ),
                  maxLines: 3,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p12,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Center(
                child: CustomButtonComponent(
                  text: 'Approve',
                  blueButton: true,
                  onTap: () {
                    ref.read(profileHomePageViewModel).changeClockInValue(0);
                    context.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
