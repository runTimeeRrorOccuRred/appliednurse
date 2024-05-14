import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsPage extends StatelessWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGrey.withOpacity(0.18),
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_ios),
            onTap: () {
              context.pop();
            },),
        centerTitle: true,
        title: const Text(
          "Terms and Privacy Policy",
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
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "Our Privacy Policy",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: royalBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
                padding: const EdgeInsets.only(left: AppSizes.p16),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur. "
                  "Ligula sit id odio pellentesque interdum vel. "
                  "Urna enim consectetur aliquam gravida."
                  " Ornare sagittis ac imperdiet lorem dignissim massa in tincidunt."
                  " Facilisi amet viverra pretium nec pharetra vitae odio elementum. "
                  "Risus nunc faucibus urna eu quisque purus id."
                  " Tempus viverra vitae hac facilisis amet mauris blandit duis."
                  " Est massa quam vitae massa lorem amet sed blandit purus."
                  " Praesent integer cursus.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF808080),
                    ),
                  ),
                ),),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                'Terms of Services',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: royalBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "Lorem ipsum dolor sit amet consectetur. "
                "Ligula sit id odio pellentesque interdum vel. "
                "Urna enim consectetur aliquam gravida."
                " Ornare sagittis ac imperdiet lorem dignissim massa in tincidunt."
                " Facilisi amet viverra pretium nec pharetra vitae odio elementum. "
                "Risus nunc faucibus urna eu quisque purus id."
                " Tempus viverra vitae hac facilisis amet mauris blandit duis."
                " Est massa quam vitae massa lorem amet sed blandit purus."
                " Praesent integer cursus.",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFF808080),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "Authorized Users",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22,
                    color: royalBlue,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p16,
            ),
            Padding(
                padding: const EdgeInsets.only(left: AppSizes.p16),
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur."
                  " Ligula sit id odio pellentesque interdum vel."
                  " Urna enim consectetur aliquam gravida."
                  " Ornare sagittis ac imperdiet lorem dignissim massa in tincidunt."
                  " Facilisi amet viverra pretium nec pharetra vitae odio elementum.\n\n"
                  "Lorem ipsum dolor sit amet consectetur. "
                  "Ligula sit id odio pellentesque interdum vel.",
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFF808080),
                    ),
                  ),
                ),),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
