import 'package:json_annotation/json_annotation.dart';
part 'price_entity_dto.g.dart';


@JsonSerializable()
class PriceEntityDto {
  final int value;

  PriceEntityDto({required this.value});

  factory PriceEntityDto.fromJson(Map<String, dynamic> json) => _$PriceEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PriceEntityDtoToJson(this);
}