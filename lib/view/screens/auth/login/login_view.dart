import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/auth/signup/signUp_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<LoginPage> {
  bool show = false;
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppSizes.p60),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset('assets/images/applied_nurse_logo_1.5x.png'),
              ),
            ),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/welcome_1x.png'),
            ),
            const SizedBox(
              height: AppSizes.p40,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.p14,
                    right: AppSizes.p14,
                  ),
                  child: TextFormField(
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: richBalck,
                        fontSize: AppSizes.p14,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    autocorrect: false,
                    enableSuggestions: false,
                    // style: TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.email,
                      //   color: royalBlue,
                      //   size: AppSizes.p24,
                      // ),
                      labelText: "Email",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      hintText: "Enter Your Email Address",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: TextFormField(
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: richBalck,
                        fontSize: AppSizes.p14,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    autocorrect: false,
                    enableSuggestions: false,
                    obscureText: show ? false : true,
                    decoration: InputDecoration(
                      // prefixIcon: const Icon(
                      //   Icons.lock,
                      //   color: royalBlue,
                      //   size: AppSizes.p24,
                      // ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            show = !show;
                          });
                        },
                        icon: show
                            ? const Icon(
                                Icons.visibility,
                                color: royalBlue,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                color: royalBlue,
                              ),
                      ),
                      labelText: "Password",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(AppSizes.p20),
                      ),
                      hintText: "Enter Your Password",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: richBalck,
                          fontSize: AppSizes.p14,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: royalBlue,
                          checkColor: kWhite,
                          value: value,
                          onChanged: (value) => setState(() {
                            this.value = value!;
                          }),
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: AppSizes.p14,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(AppRoute.forgotPassword.name);

                        HapticFeedback.heavyImpact();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: AppSizes.p14),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: AppSizes.p14,
                            color: royalBlue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSizes.p14,
                ),
                CustomButtonComponent(
                  text: "Login",
                  blueButton: true,
                  onTap: () {
                    context.pushReplacementNamed(AppRoute.dashboard.name);
                  },
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      ref.read(profileProgressModel).resetProfile();
                      context.pushNamed(AppRoute.signup.name);
                    },
                    child: RichText(
                      textAlign: TextAlign.end,
                      textDirection: TextDirection.ltr,
                      maxLines: 1,
                      text: TextSpan(
                        text: "Don't have an account?  ",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: AppSizes.p14,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        children: [
                          TextSpan(
                            text: 'Register',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: royalBlue,
                                fontSize: AppSizes.p14,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ],
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
