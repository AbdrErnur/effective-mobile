import 'package:effective_mobile/src/features/avia_sales/data/repositories/entity_mapper/offer_entity_dto_mapper.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/entities/offer_entity.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/entities/price_entity.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/view_models/offer_entity_view_model.dart';
import 'package:effective_mobile/src/features/avia_sales/presentation/ui/view_models/price_entity_view_model.dart';

class OfferEntityViewModelMapper {
  static OfferEntityViewModel toViewModel(OfferEntity offer) {
    return OfferEntityViewModel(
      id: offer.id,
      title: offer.title,
      town: offer.town,
      price: PriceEntityViewModelMapper.toViewModel(offer.price),
    );
  }
}

class PriceEntityViewModelMapper {
  static PriceEntityViewModel toViewModel(PriceEntity price) {
    return PriceEntityViewModel(value: price.value);
  }
}
