import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class Search extends StatelessWidget {
  final String? searchIconPath;
  final Widget? departureIcon;
  final Widget? destinationIcon;
  final String? firstHintText;
  final String? secondHintText;
  final Widget? clearIconPath;
  final Widget? swapIconPath;
  final TextEditingController? departureController;
  final TextEditingController? destinationController;
  final FocusNode? destinationFocusNode;
  final void Function()? bottomSheetFunction;

  const Search({
    super.key,
    this.departureIcon,
    this.destinationIcon,
    this.firstHintText,
    this.secondHintText,
    this.clearIconPath,
    this.searchIconPath,
    this.swapIconPath,
    this.departureController,
    this.destinationController,
    this.destinationFocusNode,
    this.bottomSheetFunction,
  });

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).extension<AppTypography>()!;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.grey4,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          if (searchIconPath != null)
            SvgPicture.asset(
              searchIconPath!,
              colorFilter: const ColorFilter.mode(
                AppColors.black,
                BlendMode.srcIn,
              ),
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      if (searchIconPath != null)
                        const SizedBox(
                          width: 16,
                        ),
                      Expanded(
                        child: TextFormField(
                          controller: departureController,
                          decoration: InputDecoration(
                            prefixIcon: departureIcon,
                            suffixIcon: swapIconPath,
                            border: InputBorder.none,
                            hintText: firstHintText,
                            hintStyle: const TextStyle(
                              color: AppColors.grey6,
                            ),
                            // contentPadding:
                            //     const EdgeInsets.symmetric(horizontal: 16),
                          ),
                          style: styles.buttonText1Regular,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 16,
                      left: 16,
                    ),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Row(
                    children: [
                      if (searchIconPath != null)
                        const SizedBox(
                          width: 16,
                        ),
                      Expanded(
                        child: Focus(
                          focusNode: destinationFocusNode,
                          child: TextFormField(
                            controller: destinationController,
                            decoration: InputDecoration(
                              prefixIcon: destinationIcon,
                              suffixIcon: clearIconPath,
                              border: InputBorder.none,
                              hintText: secondHintText,
                              hintStyle: const TextStyle(
                                color: AppColors.grey6,
                              ),
                            ),
                            style: styles.buttonText1Regular,
                          ),
                          onFocusChange: (hasFocus) {
                            if (hasFocus) {
                              bottomSheetFunction?.call();
                            }
                          },
                        ),
                      ),
                    ],
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
