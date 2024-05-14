// ignore_for_file: prefer_if_elements_to_conditional_expressions

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/CallOutBottomSheet/callOut_bottomSheet_page_view.dart';
import 'package:applied_nurse/view/clockBottomSheet/clock_bottom_sheet_page_view.dart';
import 'package:applied_nurse/view/screens/home/clockOutError/clock_out_error_dialog.dart';
import 'package:applied_nurse/view/screens/home/profile_home_page_view_model.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lottie/lottie.dart';

class ProfileDashBoard extends ConsumerStatefulWidget {
  final PageController pageController;
  const ProfileDashBoard({super.key, required this.pageController});

  @override
  ConsumerState<ProfileDashBoard> createState() => _ProfileDashBoardState();
}

class _ProfileDashBoardState extends ConsumerState<ProfileDashBoard> with BaseScreenView {

  bool tookbreak = true;
  late ProfileHomePageViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(profileHomePageViewModel);
      _viewModel.attachView(this);
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(profileHomePageViewModel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: royalBlue,
        title: Padding(
          padding: const EdgeInsets.only(bottom: AppSizes.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Micheal Mitc',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "Staff, Nurse",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: AppSizes.p14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        leading: Padding(
          padding:
              const EdgeInsets.only(left: AppSizes.p20, bottom: AppSizes.p20),
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSizes.p40),
            ),
            child: Image.asset(
              "assets/images/Ellipse 4.png",
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: AppSizes.p20,
              bottom: AppSizes.p12,
            ),
            child: Container(
              margin: const EdgeInsets.only(bottom: AppSizes.p3),
              // width: AppSizes.p32,
              // height: AppSizes.p32,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(AppSizes.p32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppSizes.p6),
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoute.notification.name);
                  },
                  child: Image.asset("assets/images/Notification.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white.withOpacity(0.1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSizes.p10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.p14,
                right: AppSizes.p14,
              ),
              child: Card(
                elevation: 0,
                color: royalBlue.withOpacity(0.1),
                child: SizedBox(
                  width: 370,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "08:00 AM",
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: AppSizes.p28,
                                  ),
                                ),
                                const SizedBox(
                                  height: AppSizes.p2,
                                ),
                                Text(
                                  "04 Sep 2023 - Monday",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.grey.shade600,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              child: GestureDetector(
                                onTap: () {
                                  if(_viewModel.clockin == 0) {
                                    showModalBottomSheet(
                                      context: context, 
                                      builder: (context) {
                                        return const ClockBottomSheetPage();
                                      },
                                    );
                                  } else {
                                    if(_viewModel.takeABreak) {
                                      showDialog(
                                        context: context, 
                                        builder: (context) {
                                          return AlertDialog(
                                            surfaceTintColor: kWhite,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                            content: const ClockOutErrorDialog(),
                                          );
                                        },
                                      );
                                    } else {
                                      showModalBottomSheet(
                                        context: context, 
                                        builder: (context) {
                                          return const CallOutBottomsheetPage();
                                        },
                                      );
                                    }
                                  }
                                },
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Lottie.asset("assets/lottie_files/new_animation.json", height: 120, width: 120),
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: _viewModel.takeABreak ? kGrey : royalBlue,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                    Text(
                                      _viewModel.clockin == 0 ? "Clock In" : "Clock Out", 
                                      style: const TextStyle(color: kWhite, fontFamily: 'SemiBold', fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const DottedLine(
                        dashColor: Colors.grey,
                        lineThickness: 0.5,
                        dashGapLength: 8,
                      ),
                      const SizedBox(
                        height: AppSizes.p24,
                      ),

                      //Text("-----------------------------------------------------------------")
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/images/clock_green.png'),
                              const SizedBox(
                                height: AppSizes.p4,
                              ),
                              Text(
                                "--:--",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSizes.p4,
                              ),
                              Text(
                                'Clock In',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset('assets/images/clock_red.png'),
                              const SizedBox(
                                height: AppSizes.p4,
                              ),
                              Text(
                                "--:--",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: AppSizes.p4,
                              ),
                              Text(
                                'Clock Out',
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: AppSizes.p20,
                      ),
                      const DottedLine(
                        dashColor: Colors.grey,
                        lineThickness: 0.5,
                        dashGapLength: 8,
                      ),
                      const SizedBox(
                        height: AppSizes.p16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Total work hours today',
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Text(
                            "00:00:00 Hrs",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                color: Colors.grey.shade900,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                      gapH10,
                      _viewModel.clockin == 0
                        ? const SizedBox()
                        : _viewModel.takeABreak
                          ? Column(
                              children: [
                                const SizedBox(
                                  height: AppSizes.p20,
                                ),
                                const DottedLine(
                                  dashColor: Colors.grey,
                                  lineThickness: 0.5,
                                  dashGapLength: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: CustomButtonComponent(
                                    text: 'Resume',
                                    blueButton: true,
                                    onTap: () {
                                      _viewModel.toggleTakeABreake();
                                    },
                                  ),
                                ),
                              ],
                            )
                          : Column(
                              children: [
                                const SizedBox(
                                  height: AppSizes.p20,
                                ),
                                const DottedLine(
                                  dashColor: Colors.grey,
                                  lineThickness: 0.5,
                                  dashGapLength: 8,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: CustomButtonComponent(
                                    text: 'Take a Break',
                                    onTap: () {
                                      _viewModel.toggleTakeABreake();
                                    },
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                context.pushNamed(AppRoute.referfriend.name);
              },
              child: Card(
                elevation: 0,
                color: HexColor("#743CEB").withOpacity(0.09),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width - 40,
                  height: 100,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(AppSizes.p24),
                        ),
                        child: Image.asset(
                          'assets/images/refer_friend1x.png',
                          width: 31,
                          height: 31,
                        ),
                      ),
                      const SizedBox(
                        width: AppSizes.p16,
                      ),
                      Text(
                        "Refer a Friend",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: HexColor("#743CEB"),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    widget.pageController.jumpToPage(2);
                    HapticFeedback.heavyImpact();
                  },
                  child: Card(
                    elevation: 0,
                    color: HexColor("#00C6B7").withOpacity(0.2),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 25,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(AppSizes.p24),
                              ),
                              child: Image.asset('assets/images/my_shifts1x.png'),
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "363",
                                  style: TextStyle(
                                    color: HexColor("#00C6B7"),
                                    fontSize: AppSizes.p20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Available \nShifts",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(AppRoute.notification.name);
                  },
                  child: Card(
                    elevation: 0,
                    color: HexColor("#F1426D").withOpacity(0.2),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 2 - 25,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(AppSizes.p24),
                              ),
                              child: Image.asset('assets/images/bell.png'),
                            ),
                            const SizedBox(
                              height: AppSizes.p10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "23",
                                  style: TextStyle(
                                    color: HexColor("#F1426D"),
                                    fontSize: AppSizes.p20,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "Unread \nNotification",
                                  style: GoogleFonts.montserrat(
                                    textStyle: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
  
  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
  }
  
  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
