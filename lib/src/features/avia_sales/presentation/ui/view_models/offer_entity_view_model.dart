import 'package:effective_mobile/src/features/avia_sales/presentation/ui/view_models/price_entity_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_entity_view_model.freezed.dart';

@freezed
class OfferEntityViewModel with _$OfferEntityViewModel{
  const factory OfferEntityViewModel({
    required int id,
    required String title,
    required String town,
    required PriceEntityViewModel price,
})=_OfferEntityViewModel;
}