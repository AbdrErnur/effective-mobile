import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class PopularPlacesImage extends StatelessWidget {
  final String imagePath;
  final String textCity;

  const PopularPlacesImage(
      {super.key, required this.imagePath, required this.textCity});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTypography>()!;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            imagePath,
            width: 40,
            height: 40,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(textCity),
            const SizedBox(
              width: 4,
            ),
            Text(
              AppStrings.textPopularPlaces,
              style: theme.text2Sembold,
            ),
          ],
        ),
      ],
    );
  }
}
