import 'package:effective_mobile/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_entity_view_model.freezed.dart';

@freezed
class PriceEntityViewModel with _$PriceEntityViewModel {
  const factory PriceEntityViewModel({
    required int value,
  }) = _PriceEntityViewModel;
}

extension PriceEntityViewModelExtension on PriceEntityViewModel {
  String get formattedValue => PriceFormatter.formatPrice(value.toString());
}
