import 'package:flutter/material.dart';
import 'package:ui_kit/src/themes/app_colors.dart';

class Button extends StatefulWidget {
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final String label;
  final bool isActive;

  const Button({
    super.key,
    this.onTap,
    required this.label,
    this.padding,
    this.isActive = true,
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  final Color disabledBackgroundColor = AppColors.grey5;
  final Color disabledForegroundColorText = AppColors.grey7;
  late final Color backgroundColor;
  late final Color textColor;

  @override
  void initState() {
    super.initState();
        backgroundColor = AppColors.orange;
        textColor = AppColors.white;
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // minimumSize: const Size(101, 33.0),
                disabledBackgroundColor: disabledBackgroundColor,
                disabledForegroundColor: disabledForegroundColorText,
                foregroundColor: textColor,
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              onPressed: widget.isActive ? widget.onTap : null,
              child: Text(
                widget.label,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
