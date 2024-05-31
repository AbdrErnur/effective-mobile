import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class AviaSalesScreenImage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String town;
  final String priceValue;

  const AviaSalesScreenImage(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.town,
      required this.priceValue});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            imagePath,
            width: 132,
            height: 133.16,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: theme.titleSmall?.copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          town,
          style: theme.bodyLarge?.copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            SvgPicture.asset('assets/icons/air_tickets.svg'),
            const SizedBox(width: 4),
            Text(
              'От $priceValue ₽',
              style: theme.bodyLarge?.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
