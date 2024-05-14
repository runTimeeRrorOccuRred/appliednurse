// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:applied_nurse/utils/button_component.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/findshift/findshift_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/shiftpage_view.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CompleteProfilePage extends ConsumerStatefulWidget {
  const CompleteProfilePage({super.key});

  @override
  ConsumerState<CompleteProfilePage> createState() => _ProfileFirstPageState();
}

class _ProfileFirstPageState extends ConsumerState<CompleteProfilePage> {
  int selectIndex = 0;
  List<Widget> pages = [
    // const ProfileDashBoard(),
    const ShiftPage(),
    const FindShiftPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: royalBlue,
        title: Padding(
          padding: const EdgeInsets.only(bottom: AppSizes.p20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Micheal Mitc',
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: AppSizes.p20,
                          fontWeight: FontWeight.w500,),),),
              Text("Staff, Nurse",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: AppSizes.p12,
                          fontWeight: FontWeight.w400,),),),
            ],
          ),
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),),
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
                right: AppSizes.p20, bottom: AppSizes.p12,),
            child: Container(
              margin: const EdgeInsets.only(bottom: AppSizes.p3),
              // width: AppSizes.p32,
              // height: AppSizes.p32,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(AppSizes.p32),),
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
      body:
          // getView(selectIndex),
          Column(
        children: [
          const SizedBox(
            height: AppSizes.p20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.p16, right: AppSizes.p16),
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: AppSizes.p54,
                    right: AppSizes.p20,
                    top: AppSizes.p10,
                    bottom: AppSizes.p10,),
                child: Row(
                  children: [
                    const Text(
                      "Congratulations!!Your profile\nhas been created.",
                      style:
                          TextStyle(color: royalBlue, fontSize: AppSizes.p16),
                    ),
                    const SizedBox(
                      width: AppSizes.p16,
                    ),
                    Image.asset(
                      'assets/images/thumbs.png',
                      height: 32,
                      width: 32,
                    ),
                    // Text(
                    //   "👍",
                    //   style: TextStyle(fontSize: AppSizes.p32),
                    // )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: AppSizes.p20,
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            child: SizedBox(
              width: 360,
              height: 370,
              //padding: EdgeInsets.all(105),
              child: Column(
                children: [
                  const SizedBox(
                    height: AppSizes.p32,
                  ),
                  const Text(
                    "Your profile now 30% completed",
                    style:
                        TextStyle(color: Colors.black, fontSize: AppSizes.p16),
                  ),
                  const SizedBox(
                    height: AppSizes.p32,
                  ),
                  CircularPercentIndicator(
                    radius: AppSizes.p90,
                    lineWidth: AppSizes.p20,
                    backgroundColor: Colors.grey.withOpacity(0.2),
                    progressColor: royalBlue,
                    percent: 0.3,
                    center: const Text(
                      '30%',
                      style: TextStyle(
                          color: royalBlue,
                          fontSize: AppSizes.p32,
                          fontWeight: FontWeight.bold,),
                    ),
                    //circularStrokeCap: CircularStrokeCap.round,
                    animation: true,
                  ),
                  const SizedBox(
                    height: AppSizes.p40,
                  ),
                  Center(
                    child: CustomButtonComponent(
                      text: "Complete Your Profile",
                      blueButton: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   enableFeedback: true,
      //   unselectedItemColor: Colors.grey.shade500,
      //   selectedItemColor: royalBlue,
      //   currentIndex: selectIndex,
      //   selectedFontSize: 12,
      //   onTap: getView,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     const BottomNavigationBarItem(
      //       icon: ImageIcon(
      //         AssetImage("assets/icons/home.png"),
      //       ),
      //       label: 'Home',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: ImageIcon(AssetImage("assets/icons/myshifts.png")),
      //       label: 'My Shifts',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: ImageIcon(AssetImage("assets/icons/findshifts.png")),
      //       label: 'Find Shifts',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: ImageIcon(AssetImage("assets/icons/timesheet.png")),
      //       label: 'Timesheet',
      //     ),
      //     const BottomNavigationBarItem(
      //       icon: ImageIcon(AssetImage("assets/icons/profile.png")),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
    );
  }

  // void changeIndex(int index){
  //   setState(() {
  //     selectIndex=index;
  //     Navigator.of(context)
  //         .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
  //       return pages[index];
  //     }));
  //   });
  // }
  // Widget getView(int index) {
  //   setState(() {
  //     selectIndex = index;
  //   });
  //   switch (index) {
  //     case 0:
  //       return const ProfileDashBoard();
  //     case 1:
  //       return const ShiftPage();
  //     case 2:
  //       return const FindShiftPage();
  //     case 3:
  //       return const TimeSheetPage();
  //     case 4:
  //       return const ProfileInfoPage();
  //     default:
  //       return Container();
  //   }
  // }
}
