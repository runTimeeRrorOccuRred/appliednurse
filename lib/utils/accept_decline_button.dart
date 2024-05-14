import 'package:applied_nurse/utils/utils.dart';
import 'package:flutter/material.dart';

class AcceptDeclineButton extends StatefulWidget {
  final String? text;
  final Function()? onTap;
  final bool blueButoon;
  const AcceptDeclineButton({
    required this.text,
    required this.onTap,
    required this.blueButoon,
    super.key,
  });

  @override
  State<AcceptDeclineButton> createState() => _AcceptDeclineButtonState();
}

class _AcceptDeclineButtonState extends State<AcceptDeclineButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap!();
      },
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: widget.blueButoon ? royalBlue : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            widget.text!,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: widget.blueButoon ? Colors.white : richBalck,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
