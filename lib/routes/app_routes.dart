// ignore_for_file: directives_ordering, constant_identifier_names

import 'package:applied_nurse/view/screens/auth/login/login_view.dart';
import 'package:applied_nurse/view/screens/dashboard/dashboard_view.dart';
import 'package:applied_nurse/view/screens/findshift/shiftDetails/shift_details_page_view.dart';
import 'package:applied_nurse/view/screens/forgetpassword/forgetpassword_view.dart';
import 'package:applied_nurse/view/screens/forgetpassword/otp_verification_view.dart';
import 'package:applied_nurse/view/screens/forgetpassword/reset_password_view.dart';
import 'package:applied_nurse/view/screens/home/managerSignatureClockIn/manager_signatureClockIn_page_view.dart';
import 'package:applied_nurse/view/screens/home/managerSignatureClockOut/manager_signatureClockOut_page_view.dart';
import 'package:applied_nurse/view/screens/home/notification/notification_page_view.dart';
import 'package:applied_nurse/view/screens/profile/aboutUs/aboutus_page_view.dart';
import 'package:applied_nurse/view/screens/profile/change_password/change_password_page_view.dart';
import 'package:applied_nurse/view/screens/profile/employement_application/employee_application_page_view.dart';
import 'package:applied_nurse/view/screens/findshift/findshift_page_view.dart';
import 'package:applied_nurse/view/screens/profile/help/help_page_view.dart';
import 'package:applied_nurse/view/screens/profile/personal_details/edit_profile/edit_profile_page_view.dart';
import 'package:applied_nurse/view/screens/profile/personal_details/personal_details_page_view.dart';
import 'package:applied_nurse/view/screens/profile/privacy_policy/privacy_policy_page_view.dart';
import 'package:applied_nurse/view/screens/home/refer_friend/refer_friend_page_view.dart';
import 'package:applied_nurse/view/screens/profile/onBoarding/onBoarding_page_view.dart';
import 'package:applied_nurse/view/screens/profile/terms_and_conditions/terms_and_conditions_page_view.dart';
import 'package:applied_nurse/view/screens/profile/upload_document/upload_document_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/getdirection/getdirection_page_view.dart';
import 'package:applied_nurse/view/screens/myShift/offered/accepting_page_view.dart';
//import 'package:applied_nurse/view/screens/findshift/shiftdetails/shiftdetails_page_view.dart';
import 'package:applied_nurse/view/screens/auth/signup/signup_view.dart';
//import 'package:applied_nurse/view/screens/signup.dart';
//import 'package:applied_nurse/view/screens/signup.dart';
import 'package:applied_nurse/view/screens/splash/splash_view.dart';
import 'package:applied_nurse/view/screens/successfulpages/applied_successful_page_view.dart';
import 'package:go_router/go_router.dart';

enum AppRoute {
  splash,
  login,
  signup,
  forgotPassword,
  otpVerfication,
  profilefirstpage,
  dashboard,
  getdirection,
  acceptingPage,
  appliedsuccessful,
  shiftdetails,
  managerSignatureClockIn,
  managerSignatureClockOut,
  notification,
  profile_upload_document,
  referfriend,
  changePassword,
  privacyPolicy,
  termsAndConditions,
  profileInfoHelp,
  employmentApplication,
  personalDetails,
  editProfile,
  aboutUs,
  findShifts,
  onBoarding,
  resetPassword
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/login',
    name: AppRoute.login.name,
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    path: '/signup',
    name: AppRoute.signup.name,
    builder: (context, state) => const RegisterPage(),
  ),
  GoRoute(
    path: '/forgotPassword',
    name: AppRoute.forgotPassword.name,
    builder: (context, state) => const ForgotPasswordPage(),
  ),
  GoRoute(
    path: '/otpVerfication',
    name: AppRoute.otpVerfication.name,
    builder: (constext, state) => const OtpVerification(),
  ),
  // GoRoute(
  //   path: '/profilefirstpage',
  //   name: AppRoute.profilefirstpage.name,
  //   builder: (context, state) => const ProfileFirstPage(),
  // ),
  GoRoute(
    path: '/dashboard',
    name: AppRoute.dashboard.name,
    builder: (context, state) => const DashboardView(),
  ),
  GoRoute(
    path: '/resetPassword',
    name: AppRoute.resetPassword.name,
    builder: (context, state) => const ResetPassword(),
  ),
  GoRoute(
    path: '/getdirection',
    name: AppRoute.getdirection.name,
    builder: (context, state) => const GetDirectionPage(),
  ),
  GoRoute(
    path: '/acceptingPage',
    name: AppRoute.acceptingPage.name,
    builder: (context, state) => const AcceptingPage(),
  ),
  GoRoute(
    path: '/applied_successful',
    name: AppRoute.appliedsuccessful.name,
    builder: (context, state) => const AppliedSuccessfulPage(),
  ),
  GoRoute(
    path: '/shift_details',
    name: AppRoute.shiftdetails.name,
    builder: (context, state) => const ShiftDetailsPage(),
  ),
  GoRoute(
    path: '/manager_signatureClockIn',
    name: AppRoute.managerSignatureClockIn.name,
    builder: (context, state) => const ManagerSignatureClockInPage(),
  ),
  GoRoute(
    path: '/manager_signatureClockOut',
    name: AppRoute.managerSignatureClockOut.name,
    builder: (context, state) => const ManagerSignatureClockOut(),
  ),
  GoRoute(
    path: '/notification',
    name: AppRoute.notification.name,
    builder: (context, state) => const NotificationPage(),
  ),
  GoRoute(
    path: '/profile_upload_document',
    name: AppRoute.profile_upload_document.name,
    builder: (context, state) => const UploadDocumentPage(),
  ),
  GoRoute(
    path: '/refer_friend',
    name: AppRoute.referfriend.name,
    builder: (context, state) => const ReferFriendPage(),
  ),
  GoRoute(
    path: '/changePassword',
    name: AppRoute.changePassword.name,
    builder: (context, state) => const ChangePasswordPage(),
  ),
  GoRoute(
    path: '/privacyPolicy',
    name: AppRoute.privacyPolicy.name,
    builder: (context, state) => const PrivacyPolicyPage(),
  ),
  GoRoute(
    path: '/terms_and_conditions',
    name: AppRoute.termsAndConditions.name,
    builder: (context, state) => const TermsAndConditionsPage(),
  ),
  GoRoute(
    path: '/profile_info_help',
    name: AppRoute.profileInfoHelp.name,
    builder: (context, state) => const ProfileInfoHelpPage(),
  ),
  GoRoute(
    path: '/employment_application',
    name: AppRoute.employmentApplication.name,
    builder: (context, state) => const EmployeeApplicationPage(),
  ),
  GoRoute(
    path: '/personal_details',
    name: AppRoute.personalDetails.name,
    builder: (context, state) => const PersonalDetailsPage(),
  ),
  GoRoute(
    path: '/edit_profile',
    name: AppRoute.editProfile.name,
    builder: (context, state) => const EditProfilePage(),
  ),
  GoRoute(
    path: '/aboutUs',
    name: AppRoute.aboutUs.name,
    builder: (context, state) => const AboutUSPage(),
  ),
  GoRoute(
    path: '/find_shifts',
    name: AppRoute.findShifts.name,
    builder: (context, state) => const FindShiftPage(),
  ),
  GoRoute(
    path: '/onBoarding',
    name: AppRoute.onBoarding.name,
    builder: (context, state) => const OnBoardingPage(),
  ),
];
