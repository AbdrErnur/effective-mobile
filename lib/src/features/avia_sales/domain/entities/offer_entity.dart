import 'package:effective_mobile/src/features/avia_sales/domain/entities/price_entity.dart';

class OfferEntity {
  final int id;
  final String title;
  final String town;
  final PriceEntity price;

  OfferEntity({required this.id, required this.title, required this.town, required this.price});
}