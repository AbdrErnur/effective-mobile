import 'package:effective_mobile/src/features/avia_sales/data/dto_entities/offer_entity_dto.dart';
import 'package:effective_mobile/src/features/avia_sales/data/dto_entities/price_entity_dto.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/entities/offer_entity.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/entities/price_entity.dart';

extension OfferEntityDtoMapper on OfferEntityDto {
  OfferEntity toEntity() {
    return OfferEntity(
      id: id,
      title: title,
      town: town,
      price: price.toEntity(),
    );
  }
}

extension PriceEntityDtoMapper on PriceEntityDto {
  PriceEntity toEntity() {
    return PriceEntity(value: value);
  }
}
