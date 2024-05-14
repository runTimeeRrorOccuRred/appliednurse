import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends ConsumerStatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  ConsumerState<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends ConsumerState<ChangePasswordPage> {
  bool showOldPassword = false;
  bool showPassword = false;
  bool showReEnterPassword = false;
  final oldPasswordController = TextEditingController();
  final passwordController = TextEditingController();
  final reEnterPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Change Password",
          style: TextStyle(color: richBalck, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: AppSizes.p32,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.p14,
              right: AppSizes.p14,
            ),
            child: TextFormField(
              controller: oldPasswordController,
              obscureText: showOldPassword ? false : true,
              // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      showOldPassword = !showOldPassword;
                    });
                  },
                  child: showOldPassword
                      ? const Icon(
                          Icons.visibility,
                          color: Color(0xFF808080),
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Color(0xFF808080),
                        ),
                ),
                // prefixIcon: const Icon(
                //   Icons.lock,
                //   color: royalBlue,
                //   size: AppSizes.p24,
                // ),
                labelText: "Old Password",
                labelStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: richBalck,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: royalBlue,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kGrey),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                hintText: "Enter Your Old Password",
                hintStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: richBalck,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: AppSizes.p14, right: AppSizes.p14),
            child: TextFormField(
              controller: passwordController,
              obscureText: showPassword ? false : true,
              // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  child: showPassword
                      ? const Icon(
                          Icons.visibility,
                          color: Color(0xFF808080),
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Color(0xFF808080),
                        ),
                ),
                // prefixIcon: const Icon(
                //   Icons.lock,
                //   color: royalBlue,
                //   size: AppSizes.p24,
                // ),
                labelText: "New Password",
                labelStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: richBalck,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: royalBlue,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kGrey),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                hintText: "Enter Your New Password",
                hintStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: richBalck,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: AppSizes.p14, right: AppSizes.p14),
            child: TextFormField(
              controller: reEnterPasswordController,
              // ignore: avoid_bool_literals_in_conditional_expressions
              obscureText: showReEnterPassword ? false : true,
              // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      showReEnterPassword = !showReEnterPassword;
                    });
                  },
                  child: showReEnterPassword
                      ? const Icon(
                          Icons.visibility,
                          color: Color(0xFF808080),
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Color(0xFF808080),
                        ),
                ),
                // prefixIcon: const Icon(
                //   Icons.lock,
                //   color: royalBlue,
                //   size: AppSizes.p24,
                // ),
                labelText: "Re-enter New Password",
                labelStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: richBalck,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: royalBlue,
                  ),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: kGrey),
                  borderRadius: BorderRadius.circular(AppSizes.p10),
                ),
                hintText: "Re-enter your New Password",
                hintStyle: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: richBalck,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Container()),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: CustomButtonComponent(
              text: 'Update',
              blueButton: true,
              onTap: () => context.pop(),
            ),
          ),
        ],
      ),
    );
  }
}
