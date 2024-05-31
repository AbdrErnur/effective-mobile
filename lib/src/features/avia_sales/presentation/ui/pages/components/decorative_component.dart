import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DecorativeComponent extends StatelessWidget {
  final Widget child;

  const DecorativeComponent({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey2,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}
