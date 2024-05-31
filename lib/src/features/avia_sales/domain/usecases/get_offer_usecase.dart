import 'package:effective_mobile/src/features/avia_sales/domain/entities/offer_entity.dart';
import 'package:effective_mobile/src/features/avia_sales/domain/repositories/offer_repository.dart';

class GetOfferUsecase {
  final OfferRepository offerRepository;

  GetOfferUsecase({required this.offerRepository});


  Future<List<OfferEntity>> call() {
    return offerRepository.getOffer();
  }
}