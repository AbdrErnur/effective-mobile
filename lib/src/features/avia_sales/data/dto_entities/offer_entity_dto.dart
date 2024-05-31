import 'package:effective_mobile/src/features/avia_sales/data/dto_entities/price_entity_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'offer_entity_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class OfferEntityDto{
  final int id;
  final String title;
  final String town;
  final PriceEntityDto price;

  OfferEntityDto({required this.id,required this.title, required this.town, required this.price});

  factory OfferEntityDto.fromJson(Map<String, dynamic> json) => _$OfferEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OfferEntityDtoToJson(this);
}