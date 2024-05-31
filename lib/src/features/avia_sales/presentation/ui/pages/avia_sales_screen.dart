import 'package:effective_mobile/src/features/avia_sales/presentation/blocs/avia_sale_screen_bloc/avia_sale_screen_bloc.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/components/avia_sales_screen_image.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/components/custom_bottom_navigation_bar.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/components/decorative_component.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/components/placeholder_screen.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/components/popular_places_image.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/components/search.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/view_models/price_entity_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_kit/ui_kit.dart';

class MainFirstEntry extends StatefulWidget {
  final Function()? onTap;

  const MainFirstEntry({super.key, this.onTap});

  @override
  State<MainFirstEntry> createState() => _MainFirstEntryState();
}

class _MainFirstEntryState extends State<MainFirstEntry> {
  // final TextEditingController _departureController = TextEditingController();
  // final TextEditingController _destinationController = TextEditingController();
  // final FocusNode _destinationFocusNode = FocusNode();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<AviaSaleScreenBloc>();
      bloc.add(
        LoadOfferDataEvent(),
      );
    });
    _focusNode.addListener(() {
      print("Has focus: ${_focusNode.hasFocus}");
    });
  }

  void _onItemTapped() {
    final theme = Theme.of(context).extension<AppTypography>()!;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: (MediaQuery.of(context).size.height - 24) /
              MediaQuery.of(context).size.height,
          widthFactor: 1.0,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 16,
              bottom: 24,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 38,
                    height: 5,
                    decoration: const BoxDecoration(
                        color: AppColors.grey5,
                        borderRadius:
                        BorderRadius.all(Radius.circular(16.0))),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Search(
                  departureIcon: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: SvgPicture.asset(
                      'assets/icons/air_plane.svg',
                    ),
                  ),
                  destinationIcon: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    child: SvgPicture.asset(
                      'assets/icons/search.svg',
                    ),
                  ),
                  firstHintText: AppStrings.hintTextSearch,
                  secondHintText: AppStrings.hintTextWhere,
                  clearIconPath: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: SvgPicture.asset(
                      'assets/icons/icon_close.svg',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const PlaceholderScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                'assets/icons/asd.svg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          AppStrings.airTicketIconText1,
                          style: theme.text2Sembold,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const PlaceholderScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                'assets/icons/ball.svg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(AppStrings.airTicketIconText2,
                            style: theme.text2Sembold),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const PlaceholderScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.darkBlue,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                'assets/icons/calendar.svg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          AppStrings.airTicketIconText3,
                          style: theme.text2Sembold,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const PlaceholderScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColors.red,
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: SvgPicture.asset(
                                'assets/icons/fire.svg',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          AppStrings.airTicketIconText4,
                          style: theme.text2Sembold,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                DecorativeComponent(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const PopularPlacesImage(
                          imagePath: 'assets/images/istanbul.png',
                          textCity: AppStrings.istanbulText,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        height: 1,
                        color: AppColors.grey4,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const PopularPlacesImage(
                          imagePath: 'assets/images/sochi.png',
                          textCity: AppStrings.istanbulText,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        height: 1,
                        color: AppColors.grey4,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const PopularPlacesImage(
                          imagePath: 'assets/images/phuket.png',
                          textCity: AppStrings.istanbulText,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Divider(
                        height: 1,
                        color: AppColors.grey4,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;


    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: BlocBuilder<AviaSaleScreenBloc, AviaSaleScreenState>(
                builder: (context, state) {
              if (state.offerViewModelList.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Center(
                    child: Text(
                      AppStrings.aviaSalesScreenText,
                      style: themeText.titleLarge
                          ?.copyWith(color: AppColors.grey7),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  DecorativeComponent(
                    child: Search(
                      searchIconPath: 'assets/icons/search.svg',
                      firstHintText: AppStrings.hintTextSearch,
                      secondHintText: AppStrings.hintTextWhere,
                      bottomSheetFunction: _onItemTapped,
                      destinationFocusNode: _focusNode,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    AppStrings.aviaSalesScreenMusic,
                    style: themeText.titleLarge?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxHeight: 221.5,
                    ),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.offerViewModelList.length,
                      itemBuilder: (context, index) {
                        final offer = state.offerViewModelList[index];
                        final List<String> image = [
                          'image3',
                          'socrat-i-lera',
                          'image7'
                        ];
                        return Padding(
                          padding: const EdgeInsets.only(right: 67.0),
                          child: AviaSalesScreenImage(
                            imagePath: 'assets/images/${image[index]}.png',
                            title: offer.title,
                            town: offer.town,
                            priceValue: offer.price.formattedValue,
                            // priceValue: offer.price.formattedValue,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: 0,
          onTap: (index) {},
        ),
      ),
    );
  }
}
