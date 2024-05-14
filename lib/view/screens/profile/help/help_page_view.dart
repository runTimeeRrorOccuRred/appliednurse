import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class ProfileInfoHelpPage extends ConsumerStatefulWidget {
  const ProfileInfoHelpPage({super.key});

  @override
  ConsumerState<ProfileInfoHelpPage> createState() =>
      _ProfileInfoHelpPageState();
}

class _ProfileInfoHelpPageState extends ConsumerState<ProfileInfoHelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 110,
            color: kGrey.withOpacity(0.18),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p16,
                    top: AppSizes.p24,
                  ),
                  child: InkWell(
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: richBalck,
                    ),
                    onTap: () {
                      context.pop();
                    },
                  ),
                ),
                const SizedBox(
                  width: 140,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: AppSizes.p24),
                  child: Text(
                    "Help",
                    style: blackTextColor.copyWith(fontSize: 22),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.p16),
            child: Text(
              'How can we help you today?',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: richBalck,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.p16,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: AppSizes.p16, right: AppSizes.p16),
            child: TextFormField(
              maxLines: 10,
              decoration: InputDecoration(
                hintText: "Enter your message here...",
                hintStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: richBalck,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kGrey),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: kGrey,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Center(
              child: CustomButtonComponent(
                text: 'Submit',
                blueButton: true,
                onTap: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
