import 'package:applied_nurse/utils/fonts.dart';
import 'package:applied_nurse/utils/utils.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ProfileInfoPage extends ConsumerStatefulWidget {
  const ProfileInfoPage({super.key});

  @override
  ConsumerState<ProfileInfoPage> createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends ConsumerState<ProfileInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                decoration: const BoxDecoration(
                  color: royalBlue,
                ),
                width: MediaQuery.of(context).size.width,
                height: 180,
                child: const Padding(
                  padding: EdgeInsets.only(top: AppSizes.p40),
                  child: Text(
                    "My Profile",
                    style: TextStyle(
                      color: kWhite,
                      fontSize: AppSizes.p24,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: CircleAvatar(
                    backgroundColor: kGrey,
                    maxRadius: 52,
                    child: Image.asset('assets/icons/person_icon.png'),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Michael Mitc",
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: richBalck,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSizes.p6,
              ),
              Text(
                "Position : Nurse",
                style: normalText.copyWith(
                  fontSize: 16,
                  color: richBalck,
                ),
              ),
              const SizedBox(
                height: AppSizes.p6,
              ),
              GestureDetector(
                onTap: () {
                  context.pushNamed(AppRoute.editProfile.name);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/writeicon1x.png'),
                    Text(
                      "Edit Profile",
                      style: normalText.copyWith(
                        fontSize: 18,
                        color: royalBlue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: SizedBox(
                //height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    const SizedBox(
                      height: AppSizes.p16,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(AppRoute.personalDetails.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/personal_details.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Personal Details',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(AppRoute.onBoarding.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/onboarding.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Onboarding',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: AppSizes.p16,),
                        // DottedLine(
                        //   lineThickness: 1,
                        //   dashGapLength: 0,
                        //   dashColor: kGrey,
                        // ),
                        // SizedBox(height: AppSizes.p16,),
                        // GestureDetector(
                        //   onTap: (){},
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       Padding(
                        //         padding: const EdgeInsets.only(left: AppSizes.p16),
                        //         child: Row(
                        //           children: [
                        //             Icon(Icons.business_center_sharp,
                        //               size: AppSizes.p28
                        //               ,),
                        //             SizedBox(width: AppSizes.p12,),
                        //             Text('Employment',
                        //               style: TextStyle(fontSize: 18,color: richBalck),),
                        //           ],
                        //         ),
                        //       ),
                        //
                        //       Padding(
                        //         padding: const EdgeInsets.only(right: AppSizes.p12),
                        //         child: Icon(Icons.arrow_forward_ios),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context
                                .pushNamed(AppRoute.employmentApplication.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/employment_application.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Employment Application',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(
                              AppRoute.profile_upload_document.name,
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/upload_document.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Upload Document',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(height: AppSizes.p16,),
                        // DottedLine(
                        //   lineThickness: 1,
                        //   dashGapLength: 0,
                        //   dashColor: kGrey,
                        // ),
                        //  SizedBox(height: AppSizes.p16,),
                        //   InkWell(
                        //     onTap: (){
                        //       context.pushNamed(AppRoute.referfriend.name);
                        //     },
                        //     child: Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         Padding(
                        //           padding: const EdgeInsets.only(left: AppSizes.p16),
                        //           child: Row(
                        //             children: [
                        //               Icon(Icons.group,
                        //                 size: AppSizes.p28
                        //                 ,),
                        //               SizedBox(width: AppSizes.p12,),
                        //               Text('Refer a friend',
                        //                 style: TextStyle(fontSize: 18,color: richBalck),),
                        //             ],
                        //           ),
                        //         ),
                        //
                        //         Padding(
                        //           padding: const EdgeInsets.only(right: AppSizes.p12),
                        //           child: Icon(Icons.arrow_forward_ios),
                        //         )
                        //       ],
                        //     ),
                        //   ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(AppRoute.changePassword.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/change_password.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Change Password',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(AppRoute.aboutUs.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/aboutUs.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'About Us',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(AppRoute.termsAndConditions.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/terms_and_privacy_policy.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Terms and Privacy Policy',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushNamed(AppRoute.profileInfoHelp.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: AppSizes.p2,
                                      ),
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                          color: kWhite,
                                          borderRadius: BorderRadius.circular(
                                            AppSizes.p20,
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                            'assets/icons/help.svg'),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Help',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            context.pushReplacementNamed(AppRoute.login.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: AppSizes.p16),
                                child: Row(
                                  children: [
                                    SvgPicture.asset('assets/icons/logOut.svg'),
                                    const SizedBox(
                                      width: AppSizes.p12,
                                    ),
                                    Text(
                                      'Log Out',
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                          color: richBalck,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: AppSizes.p12),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p16,
                        ),
                        const DottedLine(
                          dashGapLength: 0,
                          dashColor: kGrey,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.p16,
                    ),
                    const Text(
                      "Version 1.60",
                      style: TextStyle(fontSize: AppSizes.p16),
                    ),
                    const SizedBox(
                      height: AppSizes.p6,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
