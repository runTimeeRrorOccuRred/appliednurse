import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends ConsumerStatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  ConsumerState<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends ConsumerState<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/forgot_password.png'),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.p16),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: AppSizes.p24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.p16),
                  child: Text(
                    "Enter your Email ID to change your password.",
                    style: TextStyle(fontSize: AppSizes.p14),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.email,
                      //   color: royalBlue,
                      // ),
                      labelText: "Email",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: AppSizes.p16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: royalBlue,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Enter Your Email address",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: AppSizes.p16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p28,
                ),
                Center(
                  child: CustomButtonComponent(
                    text: 'Send OTP',
                    blueButton: true,
                    onTap: () =>
                        context.pushNamed(AppRoute.otpVerfication.name),
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
