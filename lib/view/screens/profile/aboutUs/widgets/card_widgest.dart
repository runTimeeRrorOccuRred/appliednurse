import 'package:applied_nurse/utils/app_sizes.dart';
import 'package:applied_nurse/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class CardWidget extends StatefulWidget {
  final String title;
  final String subTitle;
  final bool showCallButton;
  final bool showIcon;
  Function()? onTap;

  CardWidget({
    this.onTap,
    super.key,
    required this.showCallButton,
    required this.title,
    required this.subTitle,
    required this.showIcon,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              if (widget.showCallButton)
                Image.asset('assets/images/phoneicon1x.png')
              else
                Image.asset('assets/images/earthicon1x.png'),
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
                    widget.title,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: widget.showCallButton
                            ? const Color(0xFF00C6B7)
                            : Colors.deepPurple,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.p6,
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      // ignore: unnecessary_statements
                      widget.onTap!();
                    },
                    child: Row(
                      children: [
                        Text(
                          widget.subTitle,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: richBalck,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppSizes.p8,
                        ),
                        if (widget.showIcon)
                          Image.asset('assets/images/shareicon1x.png')
                        else
                          const SizedBox(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
