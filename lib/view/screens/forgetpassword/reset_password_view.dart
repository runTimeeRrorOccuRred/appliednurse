// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class ResetPassword extends ConsumerStatefulWidget {
  const ResetPassword({super.key});

  @override
  ConsumerState<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends ConsumerState<ResetPassword> {
  bool show = false;
  bool reEnterShow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/reset_password2x.png'),
            const SizedBox(
              height: AppSizes.p32,
            ),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: AppSizes.p24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: AppSizes.p4,
            ),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.p16),
              child: Text(
                "Please enter new password.",
                style: TextStyle(fontSize: AppSizes.p16),
              ),
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: TextFormField(
                    obscureText: show ? false : true,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        icon: show
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
                      // ),
                      labelText: "New Password",
                      labelStyle: const TextStyle(
                        fontSize: AppSizes.p14,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Enter New Password",
                      hintStyle: const TextStyle(fontSize: AppSizes.p14),
                    ),
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
                    obscureText: reEnterShow ? false : true,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            reEnterShow = !reEnterShow;
                          });
                        },
                        icon: reEnterShow
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
                      // ),
                      labelText: "Re-Enter Password",
                      labelStyle: const TextStyle(
                        fontSize: AppSizes.p14,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Enter Your Password",
                      hintStyle: const TextStyle(fontSize: AppSizes.p14),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p32,
                ),
                CustomButtonComponent(
                  text: 'Confirm',
                  blueButton: true,
                  onTap: () {
                    context.pop();
                    context.pop();
                    context.pop();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
