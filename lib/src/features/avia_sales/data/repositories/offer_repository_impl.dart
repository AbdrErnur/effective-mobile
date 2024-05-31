import 'package:effective_mobile/src/features/avia_sales/data/data_source/data_source.dart';
import 'package:effective_mobile/src/features/avia_sales/data/repositories/entity_mapper/offer_entity_dto_mapper.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/entities/offer_entity.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/repositories/offer_repository.dart';

class OfferRepositoryImpl implements OfferRepository {
  final DataSource dataSource;

  OfferRepositoryImpl({required this.dataSource});

  @override
  Future<List<OfferEntity>> getOffer() async {
    try {
      final offerListEntity = await dataSource.getOffers();
      final List<OfferEntity> offerList = offerListEntity.offers.map((e) => e.toEntity()).toList();

      return offerList;
    } catch (e) {
      print('Error fetching offers: $e');
      throw Exception('Failed to load offers');
    }
  }
}
