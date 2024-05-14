import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AppliedSuccessfulPage extends StatefulWidget {
  const AppliedSuccessfulPage({super.key});

  @override
  State<AppliedSuccessfulPage> createState() => _AppliedSuccessfulPageState();
}

class _AppliedSuccessfulPageState extends State<AppliedSuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Lottie.asset('assets/lottie_files/successful.json'),
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),
              const Text(
                "Applied Successfully",
                style: TextStyle(
                  color: richBalck,
                  fontSize: AppSizes.p20,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: CustomButtonComponent(
              text: 'Browse Shifts',
              blueButton: false,
              onTap: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
