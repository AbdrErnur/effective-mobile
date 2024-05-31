import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/src/themes/app_colors.dart';

class Button3 extends StatefulWidget {
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final String label;
  final String secondLabel;
  final bool isActive;

  const Button3({
    super.key,
    this.onTap,
    required this.label,
    this.padding,
    this.isActive = true,
    required this.secondLabel,
  });

  @override
  State<Button3> createState() => _Button3State();
}

class _Button3State extends State<Button3> {
  late final Color backgroundColor;
  late final Color textColor;

  @override
  void initState() {
    super.initState();
    backgroundColor = AppColors.blue;
    textColor = AppColors.white;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 74.0, left: 20.0),
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(10.0),
                // minimumSize: const Size(double.infinity, 37.0),
                foregroundColor: textColor,
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              onPressed: widget.isActive ? widget.onTap : null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/filter.svg'),
                  Text(
                    widget.label,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SvgPicture.asset('assets/icons/graphs.svg'),
                  Text(widget.secondLabel),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
