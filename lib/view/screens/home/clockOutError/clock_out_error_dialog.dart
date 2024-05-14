import 'package:applied_nurse/utils/accept_decline_button.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/home/profile_home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ClockOutErrorDialog extends ConsumerStatefulWidget {
  const ClockOutErrorDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ClockOutErrorDialogState();
}

class _ClockOutErrorDialogState extends ConsumerState<ClockOutErrorDialog> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                HapticFeedback.heavyImpact();
                Navigator.pop(context);
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kGrey,
                ),
                child: const Center(child: Icon(Icons.close_rounded, color: kWhite, size: 15,)),
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/icons/error_ripple.png"),
            Image.asset("assets/icons/error_triangle.png"),
          ],
        ),
        gapH10,
        const Text("Clock Out Error!", style: TextStyle(color: kBlack, fontWeight: FontWeight.bold, fontSize: 16),),
        gapH10,
        const Text("Please resume your break before clocking out. You can't clock out while on break."),
        gapH10,
        Row(
          children: [
            Expanded(
              child: AcceptDeclineButton(
                text: "Cancel", 
                onTap: () {
                  Navigator.pop(context);
                }, 
                blueButoon: false,
              ),
            ),
            gapW10,
            Expanded(
              child: AcceptDeclineButton(
                text: "Resume", 
                onTap: () {
                  ref.read(profileHomePageViewModel).toggleTakeABreake();
                  Navigator.pop(context);
                }, 
                blueButoon: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
