import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/src/themes/app_colors.dart';

class Button2 extends StatefulWidget {
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final String label;
  final bool isActive;

  const Button2({
    super.key,
    this.onTap,
    required this.label,
    this.padding,
    this.isActive = true,
  });

  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  late final Color backgroundColor;
  late final Color textColor;

  @override
  void initState() {
    super.initState();
    backgroundColor = AppColors.grey3;
    textColor = AppColors.white;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 21.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                // minimumSize: const Size(101, 33.0),
                foregroundColor: textColor,
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              onPressed: widget.isActive ? widget.onTap : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/plus.svg'),
                  const SizedBox(width: 8,),
                  Text(
                    widget.label,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
