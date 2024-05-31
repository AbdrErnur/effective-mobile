import 'package:effective_mobile/src/features/avia_sales/data/data_source/data_source.dart';
import 'package:effective_mobile/src/features/avia_sales/data/repositories/offer_repository_impl.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/usecases/get_offer_usecase.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/blocs/avia_sale_screen_bloc/avia_sale_screen_bloc.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/pages/avia_sales_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: AppTypography.fontFamily,
        extensions: <ThemeExtension<AppTypography>>[
          AppTypography.custom(),
        ],
      ),
      home: BlocProvider(
        create: (context) => AviaSaleScreenBloc(
          getOfferUsecase: GetOfferUsecase(
            offerRepository: OfferRepositoryImpl(
              dataSource: DataSource(),
            ),
          ),
        ),
        child: const MainFirstEntry(),
      ),
    );
  }
}
