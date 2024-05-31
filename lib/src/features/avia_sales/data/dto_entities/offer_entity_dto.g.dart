// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferEntityDto _$OfferEntityDtoFromJson(Map<String, dynamic> json) =>
    OfferEntityDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      town: json['town'] as String,
      price: PriceEntityDto.fromJson(json['price'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OfferEntityDtoToJson(OfferEntityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'town': instance.town,
      'price': instance.price.toJson(),
    };
