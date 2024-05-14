import 'package:analog_clock/analog_clock.dart';
import 'package:applied_nurse/utils/accept_decline_button.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ClockBottomSheetPage extends StatefulWidget {
  const ClockBottomSheetPage({super.key});

  @override
  State<ClockBottomSheetPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ClockBottomSheetPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: AppSizes.p20),
            child: Text(
              'Clock In',
              style: TextStyle(color: richBalck, fontSize: AppSizes.p24),
            ),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          SizedBox(
            height: 180,
            child: AnalogClock(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: Colors.transparent,
                shape: BoxShape.circle,
              ),
              width: 200.0,
              isLive: true,
              tickColor: richBalck,
              hourHandColor: royalBlue,
              minuteHandColor: royalBlue,
              secondHandColor: royalBlue,
              numberColor: royalBlue,
              showNumbers: false,
              textScaleFactor: 1.2,
              showDigitalClock: false,
            ),
          ),
          const SizedBox(
            height: AppSizes.p16,
          ),
          Text(
            DateFormat("H:mm a").format(DateTime.now()),
            style: const TextStyle(color: richBalck, fontSize: AppSizes.p20),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: AcceptDeclineButton(
                      text: 'Cancel',
                      onTap: () => context.pop(),
                      blueButoon: false,),
                ),
                gapW10,
                Expanded(
                  child: AcceptDeclineButton(
                      text: 'Submit',
                      onTap: () => context
                          .pushNamed(AppRoute.managerSignatureClockIn.name)
                          .then((value) => context.pop()),
                      blueButoon: true,),
                ),
              ],
            ),
          ),
          gapH20,
        ],
      ),
    );
  }
}
