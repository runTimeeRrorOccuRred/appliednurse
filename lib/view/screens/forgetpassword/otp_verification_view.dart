import 'dart:async';

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerification extends ConsumerStatefulWidget {
  const OtpVerification({super.key});

  @override
  ConsumerState<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends ConsumerState<OtpVerification> {
  Timer? timer;
  int _start = 30;
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/otp_verfication2x.png'),
            const SizedBox(
              height: AppSizes.p20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.p16),
                  child: Text(
                    'OTP verification',
                    style: TextStyle(
                      fontSize: AppSizes.p24,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.p16),
                  child: Text(
                    "Please enter the 4 digit code sent to abc@gmail.com",
                    style: TextStyle(fontSize: AppSizes.p14),
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                const SizedBox(
                  height: AppSizes.p28,
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: AppSizes.p20,
                    right: AppSizes.p20,
                  ),
                  child: PinCodeTextField(
                    cursorColor: royalBlue,
                    appContext: context,
                    controller: otpController,
                    length: 4,
                    cursorHeight: AppSizes.p20,
                    textStyle: const TextStyle(
                      color: royalBlue,
                      fontSize: AppSizes.p20,
                      fontWeight: FontWeight.w500,
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldWidth: 72,
                      fieldHeight: 46,
                      inactiveColor: kGrey.withOpacity(0.45),
                      activeColor: royalBlue,
                      borderWidth: AppSizes.p1,
                      borderRadius: BorderRadius.circular(AppSizes.p8),
                      selectedColor: royalBlue,

                      //activeFillColor: redColor,
                      //inactiveFillColor: Colors.red,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p20,
                ),
                Center(
                  child: CustomButtonComponent(
                    text: 'Continue',
                    blueButton: true,
                    onTap: () {
                      context.pushNamed(AppRoute.resetPassword.name);
                    },
                  ),
                ),
                const SizedBox(
                  height: AppSizes.p24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "00:${_start < 10 ? '0$_start' : _start}",
                          style: const TextStyle(fontSize: AppSizes.p14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: AppSizes.p10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: AppSizes.p20),
                      child: GestureDetector(
                        onTap: () {
                          _start == 0
                              ? setState(() {
                                  timer!.cancel();
                                  _start = 30;
                                  startTimer();
                                })
                              // ignore: unnecessary_statements
                              : null;

                          //HapticFeedback.heavyImpact();
                        },
                        child: Text(
                          "Resend it",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: _start == 0
                                  ? royalBlue
                                  : royalBlue.withOpacity(0.5),
                              fontSize: AppSizes.p14,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
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
    );
  }
}
