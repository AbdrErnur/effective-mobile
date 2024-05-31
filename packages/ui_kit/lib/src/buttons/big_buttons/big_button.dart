import 'package:flutter/material.dart';
import 'package:ui_kit/src/themes/app_colors.dart';

enum ButtonType {
  grey,
  blue,
}

class BigButton extends StatefulWidget {
  final ButtonType type;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry? padding;
  final String label;
  final bool isActive;

  const BigButton.gray({
    super.key,
    this.onTap,
    required this.label,
    this.padding,
    this.isActive = true,
  }) : type = ButtonType.grey;

  const BigButton.blue({
    super.key,
    this.onTap,
    required this.label,
    this.padding,
    this.isActive = true,
  }) : type = ButtonType.blue;

  @override
  State<BigButton> createState() => _BigButtonState();
}

class _BigButtonState extends State<BigButton> {
  final Color disabledBackgroundColor = AppColors.grey2;
  final Color disabledForegroundColor = AppColors.grey5;
  final Color textColorWhite = AppColors.white;
  late final Color backgroundColor;
  late final Color textColor;
  late final double buttonHeight;

  @override
  void initState() {
    super.initState();
    switch (widget.type) {
      case ButtonType.grey:
        backgroundColor = AppColors.grey3;
        textColor = AppColors.grey5;
        buttonHeight = 41.0;
      case ButtonType.blue:
        backgroundColor = AppColors.darkBlue;
        textColor = AppColors.grey6;
        buttonHeight = 48.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Row(
        children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, buttonHeight),
                disabledBackgroundColor: disabledBackgroundColor,
                disabledForegroundColor: disabledForegroundColor,
                foregroundColor: textColorWhite,
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
              onPressed: widget.isActive ? widget.onTap : null,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 11,
                  bottom: 10,
                ),
                child: Text(
                  widget.label,
                  style: theme.labelSmall,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
