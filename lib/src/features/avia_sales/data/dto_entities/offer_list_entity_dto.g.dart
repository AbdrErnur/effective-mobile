// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_list_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OfferListEntityDto _$OfferListEntityDtoFromJson(Map<String, dynamic> json) =>
    OfferListEntityDto(
      (json['offers'] as List<dynamic>)
          .map((e) => OfferEntityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OfferListEntityDtoToJson(OfferListEntityDto instance) =>
    <String, dynamic>{
      'offers': instance.offers.map((e) => e.toJson()).toList(),
    };
