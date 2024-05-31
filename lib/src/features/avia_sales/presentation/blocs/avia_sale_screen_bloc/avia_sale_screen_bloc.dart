import 'package:effective_mobile/src/features/avia_sales/domain/usecases/get_offer_usecase.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/view_models/mappers/offer_entity_view_model_mapper.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/view_models/offer_entity_view_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'avia_sale_screen_event.dart';

part 'avia_sale_screen_state.dart';

class AviaSaleScreenBloc
    extends Bloc<AviaSaleScreenEvent, AviaSaleScreenState> {
  AviaSaleScreenBloc({required GetOfferUsecase getOfferUsecase})
      : _getOfferUsecase = getOfferUsecase,
        super(const AviaSaleScreenState(offerViewModelList: [])) {
    on<LoadOfferDataEvent>(_onLoadingSlider);
  }

  final GetOfferUsecase _getOfferUsecase;

  _onLoadingSlider(
      AviaSaleScreenEvent event, Emitter<AviaSaleScreenState> emit) async {
    final offerList = await _getOfferUsecase.call();

    final userViewModelList = offerList
        .map((e) => OfferEntityViewModelMapper.toViewModel(e))
        .toList();
    // print(userViewModelList);

    emit(AviaSaleScreenState(offerViewModelList: userViewModelList));
  }
}
