import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/dashboard/dashboard_view_model.dart';
import 'package:applied_nurse/view/screens/findshift/findshift_page_view.dart';
import 'package:applied_nurse/view/screens/home/profile_home_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/shiftpage_view.dart';
import 'package:applied_nurse/view/screens/profile_info/profile_info_page_view.dart';
import 'package:applied_nurse/view/screens/timesheet/timesheet_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView>
    with BaseScreenView {
  late DashboardViewModel _viewModel;
  final PageController _pageController = PageController();
  int index = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _viewModel = ref.read(dashboardViewModel);
      _viewModel.attachView(this);
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(dashboardViewModel);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            index = value;
            _viewModel.changeBottomNavigationIndex(value);
          });
        },
        children: [
          ProfileDashBoard(
            pageController: _pageController,
          ),
          // CompleteProfilePage(),
          const ShiftPage(),
          const FindShiftPage(),
          const TimeSheetPage(),
          const ProfileInfoPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: true,
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: royalBlue,
        currentIndex: _viewModel.bottomNavigationIndex,
        selectedFontSize: 12,
        onTap: (value) {
          _viewModel.changeBottomNavigationIndex(value);
          setState(() {
            index = value;
            //
            _pageController.jumpToPage(value);
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/Home.svg',
              // ignore: deprecated_member_use
              color: index == 0 ? royalBlue : const Color(0xFFACAFB5),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/myshift_icon.svg',
              color: index == 1 ? royalBlue : const Color(0xFFACAFB5),
            ),
            label: 'My Shifts',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/findshift_icon.svg',
                color: index == 2
                    ? royalBlue
                    : const Color(
                        0xFFACAFB5,
                      )),
            label: 'Find Shifts',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/timesheet_icon.svg',
                color: index == 3 ? royalBlue : const Color(0xFFACAFB5)),
            label: 'Timesheet',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/profile_icon.svg',
              color: index == 4 ? royalBlue : const Color(0xFFACAFB5),
            ),
            label: 'Profile',
          ),
        ],
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
