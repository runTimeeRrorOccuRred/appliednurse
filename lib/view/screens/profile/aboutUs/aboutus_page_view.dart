import 'package:applied_nurse/utils/utils.dart';
import 'package:applied_nurse/view/screens/profile/aboutUs/widgets/card_widgest.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUSPage extends StatelessWidget {
  const AboutUSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGrey.withOpacity(0.18),
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            context.pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "About Us",
          style: TextStyle(color: richBalck, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          CardWidget(
            onTap: () async {
              final Uri url = Uri.parse('https://google.co.in');
              if (!await launchUrl(url)) {
                throw Exception('Could not launch $url');
              }
            },
            title: 'Visit Our Website',
            subTitle: 'appliednurse.com',
            showIcon: true,
            showCallButton: false,
          ),
          CardWidget(
            onTap: () async {
              final call = Uri.parse('tel:+91 8777752151');
              if (await canLaunchUrl(call)) {
                launchUrl(call);
              } else {
                throw 'Could not launch $call';
              }
            },
            showCallButton: true,
            title: 'Call Us',
            subTitle: '+033 2562 2023',
            showIcon: false,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: AppSizes.p16,
              right: AppSizes.p16,
              top: AppSizes.p16,
            ),
            child: Card(
              color: rowColumnColor,
              elevation: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: AppSizes.p20,
                  bottom: AppSizes.p20,
                  left: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/mailicon1x.png'),
                    const SizedBox(
                      width: AppSizes.p8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          width: AppSizes.p12,
                        ),
                        Text(
                          "Mail Us",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: blueColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: AppSizes.p10,
                        ),
                        Text(
                          "Payroll inquires",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: richBalck,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () async {
                            sendMail('The Subject', "Enter your text...",
                                'dasayan3089@gmail.com');
                          },
                          child: Text(
                            "payroll@appliednurseslic.com",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: blueColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Scheduling",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: richBalck,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () async {
                            sendMail('The Subject', "Enter your text...",
                                'dasayan3089@gmail.com');
                          },
                          child: Text(
                            "scheduling@appliednurseslic.com",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "General Help",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: richBalck,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        GestureDetector(
                          onTap: () async {
                            sendMail('The Subject', "Enter your text...",
                                'dasayan3089@gmail.com');
                          },
                          child: Text(
                            "info@nurseslic.com",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: blueColor,
                              ),
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
        ],
      ),
    );
  }

  Future<void> sendMail(String title, String message, String emailId) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: emailId,
      query: 'subject=$title&body=$message',
    );

    var url = params.toString();
    // ignore: deprecated_member_use
    await launch(url);
  }
}
