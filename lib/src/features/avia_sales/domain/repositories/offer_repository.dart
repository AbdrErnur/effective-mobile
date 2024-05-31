import 'package:effective_mobile/src/features/avia_sales/domain/entities/offer_entity.dart';

abstract interface class OfferRepository{
  Future<List<OfferEntity>> getOffer();
}