import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTypography>()!;

    return Container(
      decoration: const BoxDecoration(
          border: Border(
        top: BorderSide(
          color: AppColors.grey1,
          width: 1,
        ),
      )),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(color: AppColors.blue),
          selectedItemColor: AppColors.blue,
          selectedLabelStyle: theme.tabText,
          unselectedLabelStyle: theme.tabText,
          unselectedItemColor: AppColors.grey6,
          currentIndex: currentIndex,
          // индекс выбранной вкладки здесь
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/icons/air_tickets.svg',
                    height: 24,
                    width: 24,
                  ),
                ],
              ),
              label: AppStrings.airTickets,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/hotel.svg',
                height: 24,
                width: 24,
              ),
              label: AppStrings.hotel,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/map.svg',
                height: 24,
                width: 24,
              ),
              label: AppStrings.map,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/subscriptions.svg',
                height: 24,
                width: 24,
              ),
              label: AppStrings.subscriptions,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/profile.svg',
                height: 24,
                width: 24,
              ),
              label: AppStrings.profile,
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}
