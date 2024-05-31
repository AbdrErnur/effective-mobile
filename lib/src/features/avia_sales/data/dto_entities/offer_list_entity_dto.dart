import 'package:effective_mobile/src/features/avia_sales/data/dto_entities/offer_entity_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'offer_list_entity_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class OfferListEntityDto{
  final List<OfferEntityDto> offers;

  OfferListEntityDto(this.offers);

  factory OfferListEntityDto.fromJson(Map<String, dynamic> json) => _$OfferListEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OfferListEntityDtoToJson(this);
}