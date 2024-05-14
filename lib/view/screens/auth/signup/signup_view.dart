// import 'package:applied_nurse/utils/button_component.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// import '../../../utils/app_sizes.dart';
// import '../../../utils/colors.dart';
// import '../../../utils/utils.dart';
//
//
// class SignUpPage extends ConsumerStatefulWidget {
//   const SignUpPage({super.key});
//
//   @override
//   ConsumerState createState() => _HomePageState();
// }
//
//
// class _HomePageState extends ConsumerState<SignUpPage> {
//   bool show=false;
//   bool value=false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: AppSizes.p60),
//                 child: Align(
//                   alignment: Alignment.topCenter,
//                   child: Image.asset('assets/images/applied_nurse_logo_1.5x.png'),),
//               ),
//               const SizedBox(height: AppSizes.p20,
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: Image.asset('assets/images/register_1x.png'),),
//               const SizedBox(height: AppSizes.p40,),
//               Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: AppSizes.p14,right: AppSizes.p14),
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.email,
//                         size: AppSizes.p24,),
//                           labelText: "Email",
//                           labelStyle:const TextStyle(fontSize: AppSizes.p20,
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(color: Colors.grey,),
//                             borderRadius: BorderRadius.circular(18)
//                             ,),
//                           hintText: "Enter Your Email Address",
//                           hintStyle:const TextStyle(fontSize: AppSizes.p24)
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20,),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 15,right: 15),
//                     child: TextFormField(
//                       obscureText: show?false:true,
//
//                       decoration: InputDecoration(
//                         prefixIcon: Icon(Icons.lock,
//                         size: AppSizes.p24,),
//                           suffixIcon:IconButton(
//                             onPressed: (){
//                               setState(() {
//                                 show=!show;
//                               });
//                             },
//                             icon: show?Icon(Icons.visibility):Icon(Icons.visibility_off),
//                           ),
//
//                           labelText: "Password",
//                           labelStyle: const TextStyle(fontSize: AppSizes.p20,
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(color: Colors.grey,),
//                               borderRadius: BorderRadius.circular(AppSizes.p20)
//                           ),
//                           hintText: "Enter Your Password",
//                           hintStyle: const TextStyle(fontSize: AppSizes.p24)
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: AppSizes.p14,),
//
//
//                   const SizedBox(height: AppSizes.p14,),
//                   const CustomButton(text: "Sign Up",),
//                   const SizedBox(height: AppSizes.p32,),
//                   // RichText(
//                   //     textAlign: TextAlign.center,
//                   //     textDirection: TextDirection.rtl,
//                   //     maxLines: 1,
//                   //     text: TextSpan(text: 'Dont have an account?',
//                   //     children: [
//                   //       TextSpan(text: 'Register')
//                   //     ]))
//                   Center(
//                       child: InkWell(
//                         onTap: (){
//                           context.pushNamed(AppRoute.login.name);
//                         },
//                         child: RichText(
//                           overflow: TextOverflow.clip,
//                           textAlign: TextAlign.end,
//                           textDirection: TextDirection.ltr,
//                           softWrap: true,
//                           maxLines: 1,
//                           textScaleFactor: 1,
//                           text: const TextSpan(
//                             text: "Already have an account?  ",
//                             style: TextStyle(color: Colors.black,
//                               fontSize: AppSizes.p20,),
//                             children: [
//                               TextSpan(
//                                   text: 'Sign in', style: TextStyle(color: royalBlue)),
//                             ],
//                           ),
//                         ),
//                       )),
//
//                 ],
//               )
//             ],
//           ),
//         )
//     );
//   }
// }

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/auth/signup/signUp_view_model.dart';
import 'package:applied_nurse/view/screens/auth/signup/widgets/custom_register_page2.dart';
import 'package:applied_nurse/view/screens/auth/signup/widgets/custom_register_page3.dart';
import 'package:applied_nurse/view/screens/auth/signup/widgets/custom_register_pages.dart';
import 'package:flutter/material.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage>
    with BaseScreenView {
  String dropDownValue = 'Arunachal Pradesh';
  int index = 0;
  final pages = [
    const CustomRegisterPage(),
    const CustomRegisterPage2(),
    const CustomRegisterPage3(),
  ];
  final dobController = TextEditingController();
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: const EdgeInsets.only(top: AppSizes.p50),
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/applied_nurse_logo_1.5x.png'),),
          Padding(
            padding: const EdgeInsets.only(top: AppSizes.p32),
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/register_1x.png'),
            ),
          ),
          const SizedBox(
            height: AppSizes.p40,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: ref.watch(profileProgressModel).pageNumber == 1
                              ? kWhite
                              : royalBlue,
                          border: Border.all(color: royalBlue, width: 2),
                          borderRadius: BorderRadius.circular(50),),
                      child: ref.watch(profileProgressModel).pageNumber == 1
                          ? const Center(
                              child: Text(
                              '1',
                              style: TextStyle(color: richBalck, fontSize: 18),
                            ),)
                          : const Icon(
                              Icons.done,
                              color: kWhite,
                            ),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 2,
                        color: royalBlue,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: ref.watch(profileProgressModel).pageNumber ==
                                      1 ||
                                  ref.watch(profileProgressModel).pageNumber ==
                                      2
                              ? kWhite
                              : royalBlue,
                          border: Border.all(color: royalBlue, width: 2),
                          borderRadius: BorderRadius.circular(50),),
                      child: ref.watch(profileProgressModel).pageNumber == 1 ||
                              ref.watch(profileProgressModel).pageNumber == 2
                          ? const Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: richBalck,
                                  fontSize: 18,
                                ),
                              ),
                            )
                          : const Icon(Icons.done, color: kWhite),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 2,
                        color: royalBlue,
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: royalBlue, width: 2),
                          borderRadius: BorderRadius.circular(50),),
                      child: const Center(
                          child: Text("3",
                              style:
                                  TextStyle(color: richBalck, fontSize: 18),),),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSizes.p16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Basic\nInformation',
                      style: TextStyle(
                          color: Color(0xFFACAFB5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Positions &\nreferences',
                      style: TextStyle(
                          color: Color(0xFFACAFB5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Employment\nHistory",
                      style: TextStyle(
                          color: Color(0xFFACAFB5),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(
            height: AppSizes.p32,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  if (ref.watch(profileProgressModel).pageNumber == 1)
                    const CustomRegisterPage()
                  else
                    (ref.watch(profileProgressModel).pageNumber == 2)
                        ? const CustomRegisterPage2()
                        : const CustomRegisterPage3(),
                  Center(
                    child: CustomButtonComponent(
                      text: (ref.watch(profileProgressModel).pageNumber == 3)
                          ? 'Submit'
                          : 'Continue',
                      blueButton: true,
                      onTap: () => changePage(),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          ref.read(profileProgressModel).resetProfile();
                          context.pop();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: RichText(
                            textAlign: TextAlign.end,
                            maxLines: 1,
                            text: TextSpan(
                              text: "Already have an account?",
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
                                  text: ' Sign in',
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
                    ),
                  ),
                ],
              ),
            ),
          ),

          //const CustomRegisterPage2()
        ],
      ),
    );
  }

  void changePage() {
    if (ref.watch(profileProgressModel).pageNumber <= 2) {
      ref.read(profileProgressModel).onPageChanged();
    } else {
      context.pop();
    }
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
